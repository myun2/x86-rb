module X86::Jmp
  def sjmp(to)
    imm(imm8: 0xeb, imm32: 0xe9, val: to)
  end

  def jmp(to)
    [0xff, to].pack('C')
  end
end
