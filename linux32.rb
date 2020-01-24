class Linux32 < X86
  def syscall(no, ebx, ecx = nil, edx = nil)
    ops = []
    ops << mov(:a, no)
    ops << mov(:b, ebx)
    ops << mov(:c, ecx) if ecx
    ops << mov(:d, edx) if edx
    ops << int(0x80)
    ops.join
  end

  def exit(code = 0)
    syscall(1, code)
  end

  def write(fd, buf, size)
    syscall(4, fd, buf, size)
  end

  def print(p, len)
    write(1, p, len)
  end
end
