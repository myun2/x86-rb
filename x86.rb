class X86; end

require './x86/modrm'
require './x86/imm'
require './x86/binary_op'
require './x86/mov'
require './x86/int'
require './x86/inc'
require './x86/add'
require './x86/cmp'
require './x86/jmp'

X86.include X86::ModRM
X86.include X86::Imm
X86.include X86::BinaryOp
X86.include X86::Mov
X86.include X86::Int
X86.include X86::Inc
X86.include X86::Add
X86.include X86::Cmp
X86.include X86::Jmp
