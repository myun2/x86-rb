module X86::BasicArith
  def add(to, from); basic_arith(__method__, to, from); end
  def or (to, from); basic_arith(__method__, to, from); end
  def adc(to, from); basic_arith(__method__, to, from); end
  def sbb(to, from); basic_arith(__method__, to, from); end
  def and(to, from); basic_arith(__method__, to, from); end
  def sub(to, from); basic_arith(__method__, to, from); end
  def xor(to, from); basic_arith(__method__, to, from); end
  def cmp(to, from); basic_arith(__method__, to, from); end

  def imma(val, base)
    [base + 5, val].pack('CL')
  end

  def basic_arith(name, to, from)
    binaryop(to, from, BASIC_ARITH_CODES[name.to_sym])
  end

  def binaryop(to, from, base)
    if from.is_a? Integer
      return imma(from, base) if to == :a
      return [0x83, modrm(base / 8, to), from].pack('CCC') if char?(from)
      return [0x81, modrm(base / 8, to), from].pack('CCL')
    end
    return [base + 1, modrm(to, from)].pack('CC')
  end

  private
  BASIC_ARITH_CODES = {
    add: 0,  or: 8,
    adc: 16, sbb: 24,
    and: 32, sub: 40,
    xor: 48, cmp: 56
  }
end
