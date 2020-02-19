require 'x86/regno'
require 'x86/ptr'

class X86::Modrm
  include X86::Regno
  attr_reader :r, :rm, :mode

  def initialize(r, rm, mode = :r)
    @r = r
    @rm = rm
    @mode = mode
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
      raise "Cannot use [:sp] for r/m" if rm.first == :sp
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
end
