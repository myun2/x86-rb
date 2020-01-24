module X86::Mov
  def regimm(to, from)
    return xor(to, to) if from == 0
    return xor(to, to) + inc(to) if from == 1
    [0xb8 + regno(to), from].pack('CL')
  end

  def mov(to, from)
    # Integer to register
    return regimm(to, from) if to.is_a?(Symbol) && from.is_a?(Integer)

    binary_op(to, from, map: {
      rmr8: 0x88, rmr32: 0x89,
      rrm8: 0x8a, rrm32: 0x8b,
      rm8:  0xc6, rm32: 0x67 })
  end

  def nop
    "\x90"
  end
end
