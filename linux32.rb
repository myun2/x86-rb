class Linux32 < X86; end
require './linux32/socket'

class Linux32 < X86
  include Linux32::Socket

  def syscall(no, ebx = nil, ecx = nil, edx = nil, esi = nil, edi = nil)
    ops = []
    ops << mov(:a, no)
    ops << mov(:b, ebx) if ebx
    ops << mov(:c, ecx) if ecx
    ops << mov(:d, edx) if edx
    ops << mov(:si, esi) if esi
    ops << mov(:di, edi) if edi
    ops << int(0x80)
    ops.join
  end

  def print(p, len)
    write(1, p, len)
  end

  def exit(code = 0)
    syscall(1, code)
  end

  def fork(pt_regs)
    syscall(2, pt_regs)
  end

  def read(fd, buf = nil, size = nil)
    unless buf
      ops = ''
      ops << sub(:sp, 256)
      ops << mov(:di, :sp)
      ops << syscall(3, fd, :sp, 256)
      ops
    else
      syscall(3, fd, buf, size)
    end
  end

  def write(fd, buf, size)
    syscall(4, fd, buf, size)
  end

  def open(path, flags, mode)
    syscall(5, path, flags, mode)
  end

  def close(fd)
    syscall(6, fd)
  end

  def create(path, mode)
    syscall(8, path, mode)
  end

  def link(old, new)
    syscall(9, old, new)
  end

  def brk
    syscall(45)
  end

  def malloc(len)
    ops = ""
    ops << syscall(45, 0)
    ops << mov(:b, :a)
    ops << add(:b, len)
    ops << brk
    ops
  end

  def socket_call(no, args, args2 = nil)
    ops = ''

    args.each do |arg|
      ops << push(arg)
    end
    ops << mov(:c, :sp)

    if args2
      args2.each do |arg|
        ops << push(arg)
      end
      ops << mov(:c, :sp)
    end

    ops << syscall(0x66, no)
    ops
  end

  def clone(fn, stack, flags, args, pt_regs)
    syscall(0x78, fn, stack, flags, args, pt_regs)
  end

  def sleep(sec, usec = 0)
    ops = ""
    ops << push(usec)
    ops << push(sec)
    ops << mov(:b, :sp)
    ops << syscall(0xa2, nil, 0)
    ops
  end

  def msleep(msec)
    sleep(0, msec * 1_000_000)
  end
end
