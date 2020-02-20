class X86::Sib
  attr_reader :base, :index, :scale

  def initialize(base, index, scale: 1)
    @base = base
    @index = index
    @scale = scale
  end

  def byte
    (Math.log2(scale).to_i << 6) | (regno(index) << 3) | regno(base)
  end
end
