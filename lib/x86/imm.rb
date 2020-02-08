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
