module X86::BinaryOp
  def immr(to, from, map:)
    if to == :a && map[:imma]
      [map[:imma], from].pack('CL')
    elsif char?(from)
      [map[:imm8], regno(to), from].pack('CCC')
    else
      [map[:imm32], regno(to), from].pack('CCL')
    end
  end

  def binary_op(to, from, map:)
    return immr(to, from, map: map) if from.is_a? Integer
    return [map[:rmr32], rr(to, from)].pack('CC') if to.is_a?(Symbol) && from.is_a?(Symbol)
  end
end
