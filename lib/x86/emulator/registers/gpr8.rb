module X86::Emuleator::Gpr8
  def l8(i); q[i] & 0xff; end
  def h8(i); (q[i] & 0xff00) >> 8; end
  def al; l8(0); end
  def cl; l8(1); end
  def dl; l8(2); end
  def bl; l8(3); end
  def ah; h8(0); end
  def ch; h8(1); end
  def dh; h8(2); end
  def bh; h8(3); end
end
