class X86::Instruction
  include X86::ModRM
  include X86::Imm

  attr_reader :op_code, :to, :from, :dest_size

  def initialize(op_code, to:, from:, dest_size:)
    @op_code = op_code
    @to = to
    @from = from
    @dest_size = dest_size
  end

  def prefix
    ''
  end

  def to_s
    if from.is_a? Integer
      imm(imm8: op_code - 1, imm32: op_code, val: from)
    else
      prefix + [op_code, modrm(to, from)].pack('CC')
    end
  end
end
