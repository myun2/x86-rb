require './elf'
require './x86'
require './linux32'

print Elf.new.header
print X86.new.mov(:bp, :sp)
print X86.new.sub(:sp, 16)
print X86.new.mov(X86::Ptr.new(:bp, -4), 3)
print Linux32.new.print(0x200061, 13)
print Linux32.new.exit(0)
print "Hello world!\n"
