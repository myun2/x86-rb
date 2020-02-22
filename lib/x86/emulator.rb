class X86
  class Emulator;
  end
end

require 'x86/emulator/registers/gpr'
class X86::Emulator
  include Gpr
end
