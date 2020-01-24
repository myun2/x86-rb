require './x86'

print X86.new.mov(:a, 3)
print X86.new.mov(:a, 0x3322)
print X86.new.mov(:a, 0x44332211)
