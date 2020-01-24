class X86; end

require './x86/modrm'
require './x86/imm'
require './x86/binary_op'
require './x86/mov'

X86.include X86::ModRM
X86.include X86::Imm
X86.include X86::BinaryOp
X86.include X86::Mov
