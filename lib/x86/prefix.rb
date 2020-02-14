module X86::Prefix
  NEW_INSTRUCTION_PREFIX = 0x0f
  OPERAND_SIZE_OVERRIDE_PREFIX = 0x66
  ADDRESS_SIZE_OVERRIDE_PREFIX = 0x67

  def new_instruction_prefix; [NEW_INSTRUCTION_PREFIX].pack('C'); end
  def operand_size_override_prefix; [OPERAND_SIZE_OVERRIDE_PREFIX].pack('C'); end
  def address_size_override_prefix; [ADDRESS_SIZE_OVERRIDE_PREFIX].pack('C'); end

  class OS
    def to_s; "\x66"; end
  end
end
