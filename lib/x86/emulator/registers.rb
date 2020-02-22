require 'x86/emulator/gpr'

class X86::Emulator::Registers
  def initialize
    @gpr = X86::Emulator::Gpr
    @eflags = 0
  end
end
