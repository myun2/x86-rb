class X86::Ptr
  attr_reader :reg, :add
  def initialize(reg, add)
    @reg = reg
    @add = add
  end
  alias r reg
  alias disp add
end

module X86::Mov
  def zero(to)
    xor(to, to)
  end

  def one(to)
    xor(to, to) + inc(to)
  end

  def two(to)
    xor(to, to) + inc(to) + inc(to)
  end

  def three(to)
    xor(to, to) + inc(to) + inc(to) + inc(to)
  end

  def imm_to_reg(to, from)
    return zero(to) if from == 0
    return one(to)  if from == 1
    return two(to)  if from == 2
    return three(to) if from == 3
    [0xb8 + regno(to), from].pack('CL')
  end

  def mov(to, from, size: 32)
    # Reg <= Imm
    return imm_to_reg(to, from) if to.is_a?(Symbol) && from.is_a?(Integer)

    # Ptr <= Imm
    return imm2ptr(to, from) if to.is_a?(Array) && from.is_a?(Integer)
    return imm2ptr(to, from) if to.is_a?(X86::Ptr) && from.is_a?(Integer)

    if to.is_a? Symbol
      if size == 8
        [0x8a, modrm(to, from)].pack('CC')
      else
        [0x8b, modrm(to, from)].pack('CC')
      end
    else
      if size == 8
        [0x88, modrm(from, to)].pack('CC')
      else
        [0x89, modrm(from, to)].pack('CC')
      end
    end
  end

  def imm2ptr(ptr, imm)
    if ptr.is_a? Array
      if ptr.first.is_a? Symbol
        mdr = modrm_digit(0, ptr_regno(ptr.first), :ptr)
        [ 0xc7, mdr, imm].pack('CCL')
      else
        mdr = modrm_digit(0, ptr_regno(:disp32), :ptr)
        [ 0xc7, mdr, ptr.first, imm].pack('CCLL')
      end
    elsif char?(imm)
      mdr = modrm_digit(0, ptr.r, :disp8)
      [ 0xc7, mdr, ptr.disp, imm].pack('CCCL')
    else
      mdr = modrm_digit(0, ptr.r, :disp32)
      [ 0xc7, mdr, ptr.disp, imm].pack('CCLL')
    end
  end

  def nop
    "\x90"
  end
end
