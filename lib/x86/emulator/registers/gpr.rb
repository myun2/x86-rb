# General-Purpose Registers
require 'x86/emulator/registers/gpr8'
require 'x86/emulator/registers/gpr16'
require 'x86/emulator/registers/gpr32'

module X86::Emulator::Gpr
  include X86::Emulator::Gpr8
  include X86::Emulator::Gpr16
  include X86::Emulator::Gpr32
  attr_accessor :gprs

  def initialize
    @gprs = [0] * 16
  end

  def rax; gprs[0]; end
  def rcx; gprs[1]; end
  def rdx; gprs[2]; end
  def rbx; gprs[3]; end
  def rsp; gprs[4]; end
  def rbp; gprs[5]; end
  def rsi; gprs[6]; end
  def rdi; gprs[7]; end

  def rax=(val); gprs[0] = val; end
  def rcx=(val); gprs[1] = val; end
  def rdx=(val); gprs[2] = val; end
  def rbx=(val); gprs[3] = val; end
  def rsp=(val); gprs[4] = val; end
  def rbp=(val); gprs[5] = val; end
  def rsi=(val); gprs[6] = val; end
  def rdi=(val); gprs[7] = val; end
end
