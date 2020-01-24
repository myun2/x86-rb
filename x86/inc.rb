module X86::Inc
  def unary(code, r)
    [code + regno(r)].pack('C')
  end
  def inc(r);  unary(0x40, r); end
  def dec(r);  unary(0x48, r); end
  def push(r); unary(0x50, r); end
  def pop(r);  unary(0x48, r); end
  def xchga(r);unary(0x90, r); end
end
