module X86::Rex
  def rex(m64, reg, sib, rm)
    0x40 |
      (m64 ? 8 : 0) |
      (reg ? 4 : 0) |
      (sib ? 2 : 0) |
      (rm  ? 1 : 0)
  end
end
