require 'x86/regno'

class X86::Sib
  attr_reader :scale, :index, :base

  def initialize(base, index, scale = 1)
    @scale = scale
    @index = index
    @base = base
  end

  def self.from_byte(byte)
    new(
      X86::Regno.from_num(byte & 7), # base
      X86::Regno.from_num((byte >> 3) & 7), # index
      2 ** (byte >> 6)) # scale
  end

  def inspect
    byte_s = "#{Math.log2(scale).to_i},#{regno(index)},#{regno(base)}"
    "SIB: #{base}+#{index}*#{scale} -> #{byte_s}: 0x#{byte.to_s(16)}"
  end

  def to_s
    "[#{base} + #{index} * #{scale}]"
  end

  def byte
    Math.log2(scale).to_i << 6 | regno(index) << 3 | regno(base)
  end

  private
  include X86::Regno
end
