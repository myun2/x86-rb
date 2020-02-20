module X86::Sib
  def sib(base, index, scale: 1)
    (Math.log2(scale).to_i << 6) | (regno(index) << 3) | regno(base)
  end
end
