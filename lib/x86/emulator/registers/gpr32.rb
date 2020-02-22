module X86::Emuleator::Gpr32
  # Read access
  def r32(i); q[i] & 0xffffffff; end
  def eax; r32(0); end
  def ecx; r32(1); end
  def edx; r32(2); end
  def ebx; r32(3); end
  def esp; r32(4); end
  def ebp; r32(5); end
  def esi; r32(6); end
  def edi; r32(7); end

  # Write access
  def r32=(i, val)
    high = q[i] & 0xffffffff00000000 # Save high bits
    q[i] = high | (val & 0xffffffff)
  end
  def eax=(val); r32=(0, val); end
  def ecx=(val); r32=(1, val); end
  def edx=(val); r32=(2, val); end
  def ebx=(val); r32=(3, val); end
  def esp=(val); r32=(4, val); end
  def ebp=(val); r32=(5, val); end
  def esi=(val); r32=(6, val); end
  def edi=(val); r32=(7, val); end
end
