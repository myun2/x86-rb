require './elf'
require './x86'
require './linux32'

print Elf.new.header
print Linux32.new.print(0x200059, 13)
print Linux32.new.exit(0)
print "Hello world!\n"
