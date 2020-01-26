require './elf'
require './x86'
require './linux32'

print Elf.new.header
#print "\xc6\x00\x05" + [0x200055].pack('L') + 'A'
#print "\xc6\x05" + [0x200069].pack('L') + 'A'
print Linux32.new.print(0x200055, 13)
print Linux32.new.exit(0)
print "Hello world!\n"
