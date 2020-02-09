require 'x86/elf'
require 'x86'
require 'x86/linux32'

print Elf.new.header
print X86::Utils::Itoa.new(1122334455).ops
print Linux32.new.exit(0)
