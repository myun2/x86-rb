class X86::Instruction
  attr_reader %i{op_code prefix modrm sib disp imm}

  def initialize(op_code, prefix: nil, modrm: nil, sib: nil, disp: nil, imm: nil)
    @op_code = op_code
    @prefix = prefix
    @modrm = modrm
    @sib = sib
    @disp = disp
    @imm = imm
  end
end
