class X86; end

require 'x86/modrm'
require 'x86/rex'
require 'x86/evex'
require 'x86/imm'
require 'x86/ops/basic_arith'
require 'x86/ops/mov'
require 'x86/ops/int'
require 'x86/ops/inc'
require 'x86/ops/cmp'
require 'x86/ops/jmp'

X86.include X86::ModRM
X86.include X86::Rex
X86.include X86::Evex
X86.include X86::Imm
X86.include X86::BasicArith
X86.include X86::Mov
X86.include X86::Int
X86.include X86::Inc
X86.include X86::Cmp
X86.include X86::Jmp
