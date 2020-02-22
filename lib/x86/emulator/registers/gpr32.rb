module X86::Emulator::Gpr32
  # Read access
  def r32(i); gprs[i] & 0xffffffff; end
  def eax; r32(0); end
  def ecx; r32(1); end
  def edx; r32(2); end
  def ebx; r32(3); end
  def esp; r32(4); end
  def ebp; r32(5); end
  def esi; r32(6); end
  def edi; r32(7); end

  # Write access
  def set_r32(i, val)
    high = gprs[i] & 0xffffffff00000000 # Save high bits
    gprs[i] = high | (val & 0xffffffff)
  end
  def eax=(val); set_r32(0, val); end
  def ecx=(val); set_r32(1, val); end
  def edx=(val); set_r32(2, val); end
  def ebx=(val); set_r32(3, val); end
  def esp=(val); set_r32(4, val); end
  def ebp=(val); set_r32(5, val); end
  def esi=(val); set_r32(6, val); end
  def edi=(val); set_r32(7, val); end
end
