module X86::Inc
  def unary(code, r)
    [code + regno(r)].pack('C')
  end
  def inc(r); unary(0x40, r); end
  def dec(r); unary(0x48, r); end
end
