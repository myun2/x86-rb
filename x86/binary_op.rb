module X86::BinaryOp
  def binary_op(to, from, map:)
    return imm(imm8: map[:imm8], imm32: map[:imm32], val: from) if from.is_a? Integer
    return [map[:rmr32], rr(to, from)].pack('CC') if to.is_a?(Symbol) && from.is_a?(Symbol)
  end
end
