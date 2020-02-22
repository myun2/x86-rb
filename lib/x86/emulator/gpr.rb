# General-Purpose Registers
#
# 16 - 32bit : 8 registers
# 64bit      : 16 registers
# AVX-512    : 32 registers
#
class X86::Emuleator::Gpr
  attr_accessor :q

  def initialize
    @q = [0] * 16
  end

  def l8(i); q[i] & 0xff; end
  def h8(i); (q[i] & 0xff00) >> 8; end
  def al; l8(0); end
  def cl; l8(1); end
  def dl; l8(2); end
  def bl; l8(3); end
  def ah; h8(0); end
  def ch; h8(1); end
  def dh; h8(2); end
  def bh; h8(3); end

  def m16(i); q[i] & 0xffff; end
  def ax; m16(0); end
  def cx; m16(1); end
  def dx; m16(2); end
  def bx; m16(3); end
  def sp; m16(4); end
  def bp; m16(5); end
  def si; m16(6); end
  def di; m16(7); end

  def m32(i); q[i] & 0xffffffff; end
  def eax; m32(0); end
  def ecx; m32(1); end
  def edx; m32(2); end
  def ebx; m32(3); end
  def esp; m32(4); end
  def ebp; m32(5); end
  def esi; m32(6); end
  def edi; m32(7); end

  def rax; q[0]; end
  def rcx; q[1]; end
  def rdx; q[2]; end
  def rbx; q[3]; end
  def rsp; q[4]; end
  def rbp; q[5]; end
  def rsi; q[6]; end
  def rdi; q[7]; end
end
