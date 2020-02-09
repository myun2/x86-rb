require 'x86/elf'
require 'x86'
require 'x86/linux32'

print Elf.new.header
print Linux32.new.bind(2003)
print Linux32.new.listen
print Linux32.new.accept
print Linux32.new.mov(:si, :a)
print Linux32.new.read(:si)
print Linux32.new.print(:di, 256)
print Linux32.new.exit(0)
