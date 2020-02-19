require 'x86/size'
class X86::Ptr
  attr_reader :r, :disp
  def initialize(r, disp)
    @r = r
    @disp = disp
  end

  def char?; X86::Size.char?(disp); end
end
