module X86::Jmp
  JMP_OPS = { jo: 0x70, jno: 0x71, jc: 0x72, jb: 0x72, jnae: 0x72,
              jnc: 0x73, jnb: 0x73, jae: 0x73, je: 0x74, jz: 0x74,
              jne: 0x75, jnz: 0x75, jna: 0x76, jbe: 0x76, ja: 0x77, jnbe: 0x77,
              js: 0x78, jns: 0x79, jp: 0x7a, jpe: 0x7a, jpo: 0x7b, jnp: 0x7b,
              jl: 0x7c, jnge: 0x7c, jge: 0x7d, jnl: 0x7d, jng: 0x7e, jg: 0x7f }
  def sjmp(to)
    imm(imm8: 0xeb, imm32: 0xe9, val: to)
  end

  def jmp(to)
    [0xff, to].pack('C')
  end

  def sjmp(op, to)
    [op, to].pack('CC')
  end

  JMP_OPS.each do |nm, op|
    eval "def #{nm}(to); [#{op}, to].pack('CC'); end"
  end
end
