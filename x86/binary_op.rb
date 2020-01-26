module X86::BinaryOp
  MAP = %i{
    add or adc sbb and sub xor cmp
  }
  def add(to, from); binaryop(to, from, 0); end
  def or (to, from); binaryop(to, from, 8); end
  def adc(to, from); binaryop(to, from, 16); end
  def sbb(to, from); binaryop(to, from, 24); end
  def and(to, from); binaryop(to, from, 32); end
  def sub(to, from); binaryop(to, from, 40); end
  def xor(to, from); binaryop(to, from, 48); end
  def cmp(to, from); binaryop(to, from, 56); end

  def imma(val, base)
    [base + 5, val].pack('CL')
  end

  def binaryop(to, from, base)
    if from.is_a? Integer
      return imma(from, base) if to == :a
      return [0x83, modrm(r, base / 8), from].pack('CCC') if char?(from)
      return [0x81, modrm(r, base / 8), from].pack('CCL')
    end
    return [base + 1, modrm(to, from)].pack('CC')
  end
end
