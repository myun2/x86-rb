module X86::Inc
  def unary(code, r)
    [code + regno(r)].pack('C')
  end
  def inc(r);  unary(0x40, r); end
  def dec(r);  unary(0x48, r); end
  def pushr(r);unary(0x50, r); end
  def pop(r);  unary(0x48, r); end
  def xchga(r);unary(0x90, r); end

  def push(val)
    if val.is_a? Integer
      imm(imm8: 0x6a, imm32: 0x68, val: val)
    else
      pushr(val)
    end
  end
end
