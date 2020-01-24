module X86::Cmp
  def cmp(a, b)
    if a == :a && b.is_a? Integer
      return [0x3d, b].pack('CL')
    end

    binary_op(to, from, map: {
      rmr8: 0x38, rmr32: 0x39,
      rrm8: 0x3a, rrm32: 0x3b,
      imm8: 0x83, imm32: 0x81 })
  end
end
