class X86::Instruction
  attr_reader :op_code, :to, :from, :size

  def initialize(op_code, to, from, size: 32)
    @op_code = op_code
    @to = to
    @from = from
    @size = size
  end

  def bytes
    [ op_code ].pack('C')
  end
end
