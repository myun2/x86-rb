#module X86::Cmp
#  def cmp(a, b)
#    binaryop(a, b, map: {
#      rmr8:  0x38, rmr32: 0x39,
#      rrm8:  0x3a, rrm32: 0x3b,
#      imma8: 0x3c, imma32: 0x3d, imm: 7
#    })
#  end
#end
