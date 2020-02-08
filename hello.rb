require 'x86/elf'
require 'x86'
require 'x86/linux32'

print Elf.new.header
print Linux32.new.print(0x200055, 13)
print Linux32.new.exit(0)
print "Hello world!\n"
