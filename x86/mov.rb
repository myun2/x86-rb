module X86::Mov
  def regimm(to, from)
    return xor(to, to) if from == 0
    return xor(to, to) + inc(to) if from == 1
    [0xb8 + regno(to), from].pack('CL')
  end

  def mov(to, from)
    # Integer to register
    return regimm(to, from) if to.is_a?(Symbol) && from.is_a?(Integer)

    binaryop(to, from, 0x88)
  end

  def nop
    "\x90"
  end
end
