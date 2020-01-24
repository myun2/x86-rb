module X86::Int
  def int(code)
    [0xcd, code].pack('CC')
  end
end
