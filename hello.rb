require './elf'
require './x86'
require './linux32'

print Elf.new.header
print X86.new.mov(:a, :sp) # SP is not specifiable with mod/rm
print X86.new.sub(:a, 0x7f0000)
print X86.new.mov([:a], 3)
print Linux32.new.malloc(2_000_000_000)
print Linux32.new.print(0x200069, 13)
print Linux32.new.exit(0)
print "Hello world!\n"
