module X86::Lea
  def lea(to, from)
    [0x8d, modrm(to, from)].pack('CC')
  end
end
