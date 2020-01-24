module X86::Mov
  def mov(to, from)
    binary_op(to, from, map: {
      rmr8: 0x88, rmr32: 0x89,
      rrm8: 0x8a, rrm32: 0x8b,
      imm8: 0xb0 + regno(to),
      imm32: 0xb8 + regno(to),
      rm8:  0xc6, rm32: 0x67 })
  end
end
