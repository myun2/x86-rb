module X86::Emulator::Gpr16
  def r16(i); gprs[i] & 0xffff; end
  def ax; r16(0); end
  def cx; r16(1); end
  def dx; r16(2); end
  def bx; r16(3); end
  def sp; r16(4); end
  def bp; r16(5); end
  def si; r16(6); end
  def di; r16(7); end

  def set_r16(i, val); gprs[i] & 0xffff; end
  def ax=(val); set_r16(0, val); end
  def cx=(val); set_r16(1, val); end
  def dx=(val); set_r16(2, val); end
  def bx=(val); set_r16(3, val); end
  def sp=(val); set_r16(4, val); end
  def bp=(val); set_r16(5, val); end
  def si=(val); set_r16(6, val); end
  def di=(val); set_r16(7, val); end
end
