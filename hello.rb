require './elf'
require './x86'
require './linux32'

print Elf.new.header
print Linux32.new.print()
print Linux32.new.exit(0)
