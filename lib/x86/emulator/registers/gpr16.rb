module X86::Emuleator::Gpr16
  def r16(i); q[i] & 0xffff; end
  def ax; r16(0); end
  def cx; r16(1); end
  def dx; r16(2); end
  def bx; r16(3); end
  def sp; r16(4); end
  def bp; r16(5); end
  def si; r16(6); end
  def di; r16(7); end

  def r16=(i, val); q[i] & 0xffff; end
  def ax=(val); r16=(0, val); end
  def cx=(val); r16=(1, val); end
  def dx=(val); r16=(2, val); end
  def bx=(val); r16=(3, val); end
  def sp=(val); r16=(4, val); end
  def bp=(val); r16=(5, val); end
  def si=(val); r16=(6, val); end
  def di=(val); r16=(7, val); end
end
