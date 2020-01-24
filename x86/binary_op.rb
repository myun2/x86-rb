module X86::BinaryOp
  def binary_op(to, from, map:)
    imm(imm8: map[:imm8], imm32: map[:imm32], val: from) if from.is_a? Integer
  end
end
