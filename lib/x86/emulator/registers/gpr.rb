# General-Purpose Registers
class X86::Emuleator::Gpr
  include Gpr8
  include Gpr16
  include Gpr32
  attr_accessor :q

  def initialize
    @q = [0] * 16
  end

  def rax; q[0]; end
  def rcx; q[1]; end
  def rdx; q[2]; end
  def rbx; q[3]; end
  def rsp; q[4]; end
  def rbp; q[5]; end
  def rsi; q[6]; end
  def rdi; q[7]; end

  def rax=(val); q[0] = val; end
  def rcx=(val); q[1] = val; end
  def rdx=(val); q[2] = val; end
  def rbx=(val); q[3] = val; end
  def rsp=(val); q[4] = val; end
  def rbp=(val); q[5] = val; end
  def rsi=(val); q[6] = val; end
  def rdi=(val); q[7] = val; end
end
