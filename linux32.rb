class Linux32 < X86
  def syscall(no, ebx = nil, ecx = nil, edx = nil)
    ops = []
    ops << mov(:a, no)
    ops << mov(:b, ebx) if ebx
    ops << mov(:c, ecx) if ecx
    ops << mov(:d, edx) if edx
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

  def read(fd, buf, size)
    syscall(3, fd, buf, size)
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
    syscall(45, 0)
    mov(:b, :a)
    add(:b, len)
    syscall(45)
  end
end
