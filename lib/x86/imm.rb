module X86::Imm
  def char?(i)
    i >= -128 && i < 128
  end

  def short?(i)
    i >= -65536 && i < 65536
  end

  def imm(imm8:, imm32:, val:)
    if char?(val)
      [imm8, val].pack('CC')
    elsif short?(val)
      [0x66, imm32, val].pack('CCS')
    else
      [imm32, val].pack('CL')
    end
  end
end

class X86::Immediately
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def char?
    value >= -128 && value < 128
  end

  def short?
    value >= -65536 && value < 65536
  end
end
