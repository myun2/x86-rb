require './elf'
require './x86'
require './linux32'

print Elf.new.header
print X86.new.mov(:a, :sp) # SP is not specifiable with mod/rm
print X86.new.sub(:a, 0x7f0000)
print X86.new.mov([:a], 3)
print Linux32.new.malloc(4_000_000_000) # 4GB
print Linux32.new.clone(0,0,0,0,0) # new Thread
print Linux32.new.msleep(200)
print Linux32.new.print(0x20009d, 13)
print Linux32.new.exit(0)
print "Hello world!\n"
