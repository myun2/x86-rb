module X86::F6f7
  F6F7_MAP = { test: 0, not: 2, neg: 3, mul: 4, imul: 5, div: 6, idiv: 7 }

  def f6f7(rm, sz = 32)
    if sz == 8
      [0xf6, rm].pack('C*')
    elsif sz == 16
      [0x66, 0xf7, rm].pack('C*')
    else
      [0xf7, rm].pack('C*')
    end
  end

  def not(b, sz = 32)
    f6f7(modrm(2, b), sz)
  end

  def neg(b, sz = 32)
    f6f7(modrm(3, b), sz)
  end

  def mul(b, sz = 32)
    f6f7(modrm(4, b), sz)
  end

  def imul(b, sz = 32)
    f6f7(modrm(5, b), sz)
  end

  def div(b, sz = 32)
    f6f7(modrm(6, b), sz)
  end

  def idiv(b, sz = 32)
    f6f7(modrm(7, b), sz)
  end
end
