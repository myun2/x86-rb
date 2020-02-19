require 'x86/regno'
require 'x86/ptr'

class X86::Modrm
  class Error < StandardError; end
  include X86::Regno
  attr_reader :r, :rm, :mode

  def initialize(r, rm, mode = :r)
    @r = r
    @rm = rm
    @mode = mode
    @mode = %i{ptr disp8 disp32 r}[mode] if mode.is_a? Integer

    raise Error.new("Cannot use modrm [:sp]") if (mode != :r && rm == :sp) ||
      (ptr? && rm.first == :sp) || (disp? && rm.r == :sp)
  end

  def ptr?; rm.is_a? Array; end
  def disp?; rm.is_a? X86::Ptr; end

  def mode_val
    return 0 if ptr?
    return rm.char? ? 1 : 2 if disp?

    case mode
    when :ptr then 0
    when :disp8 then 1
    when :disp32 then 2
    else 3 end
  end

  def rm_val
    if ptr?
      raise "Cannot use [:sp] for r/m" if rm.first == :sp
      return regno(rm.first)
    end

    if disp?
      raise "Cannot use [:sp] for r/m" if rm.r == :sp
      return regno(rm.r)
    end

    case rm
    when :sib then 4
    when :disp32 then 5
    else regno(rm) end
  end

  def byte
    (mode_val << 6) | (regno(r) << 3) | rm_val
  end

  def inspect
    "Modrm: :#{r}, :#{rm} (#{mode}) -> 0x#{byte.to_s(16)}"
  end

  def self.from_byte(byte)
    new(
      X86::Regno.from_num((byte >> 3) & 7), # r
      X86::Regno.from_num(byte & 7), # rm
      byte >> 6) # mode
  end
end
