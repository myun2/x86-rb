class X86::Utils::Itoa < X86
  def initialize(from)
    @from = from
  end

  def ops
    mov(:a, @from) + mov(:b, 10) +
      cmp(:a, 0) + div(:b) +
      jnz(-4)
  end
end
