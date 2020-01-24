module X86::Add
  def add(to, from)
    binary_op(to, from, map: {
      imma: 0x05,
      imm8: 0x83, imm32: 0x81,
      rmr32: 1, rrm32: 3 })
  end

  def xor(to, from)
    binary_op(to, from, map: {
      imma: 0x35,
      imm8: 0x83, imm32: 0x81,
      rmr32: 0x31, rrm32: 0x33 })
  end
end
