module X86::Cmp
  def cmp(a, b)
    binary_op(to, from, map: {
      imma: 0x3d,
      rmr32: 0x39,
      rrm32: 0x3b,
      imm8: 0x83,
      imm32: 0x81 })
  end
end
