class X86; end

require 'x86/prefix'
require 'x86/modrm'
require 'x86/instruction'
require 'x86/rex'
require 'x86/evex'
require 'x86/imm'
require 'x86/ops/basic_arith'
require 'x86/ops/mov'
require 'x86/ops/int'
require 'x86/ops/inc'
#require 'x86/ops/cmp'
require 'x86/ops/jmp'
require 'x86/ops/f6f7'

X86.include X86::ModRM
X86.include X86::Rex
X86.include X86::Evex
X86.include X86::Imm
X86.include X86::BasicArith
X86.include X86::Mov
X86.include X86::Int
X86.include X86::Inc
#X86.include X86::Cmp
X86.include X86::Jmp
X86.include X86::F6f7

require 'x86/utils'
