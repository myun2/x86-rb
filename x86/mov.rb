module X86::Mov
  def regimm(to, from)
    imm(
      imm8: 0xb0 + regno(to),
      imm32: 0xb8 + regno(to), val: from)
  end

  def mov(to, from)
    return regimm(to, from) if to.is_a?(Symbol) && from.is_a?(Integer)
    binary_op(to, from, map: {
      rmr8: 0x88, rmr32: 0x89,
      rrm8: 0x8a, rrm32: 0x8b,
      rm8:  0xc6, rm32: 0x67 })
  end
end
