class  X86::Ptr
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

  def regimm(to, from)
    return zero(to) if from == 0
    return one(to)  if from == 1
    return two(to)  if from == 2
    return three(to) if from == 3
    [0xb8 + regno(to), from].pack('CL')
  end

  def mov(to, from)
    # Integer to register
    return regimm(to, from) if to.is_a?(Symbol) && from.is_a?(Integer)

    # IMM to ptr
    return imm2ptr(to, from) if to.is_a?(X86::Ptr) && from.is_a?(Integer)

    #binaryop(to, from, 0x88)
    [0x89, modrm(from, to)].pack('CC')
  end

  def imm2ptr(ptr, imm)
    if char?(imm)
      [ 0xc7, modrm_digit(0, ptr.r, :disp8), ptr.disp, imm].pack('CCCL')
    else
      [ 0xc7, modrm_digit(0, ptr.r, :disp32), ptr.disp, imm].pack('CCLL')
    end
  end

  def nop
    "\x90"
  end
end
