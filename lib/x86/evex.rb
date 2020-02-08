module X86::Evex
  def evex_byte2(reg, sib, rm, reg5, prefix)
    (reg ? 128 : 0) |
    (sib ? 64  : 0) |
    (rm  ? 32  : 0) |
    (reg5 ? 16 : 0) | prefix
  end

  def evex_byte3(m64, nds, scalar)
    (m64 ? 128 : 0) | (nds << 3) | 4 | scalar
  end

  def evex_byte4(zero, bits, broadcast, vidx, opmask)
    (zero ? 128 : 0) |
      (bits << 5) |
      (broadcast ? 16 : 0) |
      (vidx ? 8 : 0) | opmask
  end

  def evex(reg4: nil , sib4: nil, rm4: nil, reg5: nil, prefix: nil,
           m64: nil, nds: 0, scalar: nil,
           zero: nil, bits: nil, broadcast: nil, vidx: nil, opmask: 0)
    0x62000000 |
      evex_byte2(reg4, sib4, rm4, reg5, evex_prefix(prefix)) << 16 |
      evex_byte3(m64, nds, evex_scalar(scalar)) << 8 |
      evex_byte4(zero, evex_bits(bits), broadcast, vidx, opmask)
  end

  def evex_prefix(prefix)
    case prefix
    when 0x0f then 1
    when 0x0f38 then 2
    when 0x0f3a then 3
    else 0 end
  end

  def evex_scalar(scalar)
    case scalar
    when :pd then 1
    when :ss then 2
    when :sd then 3
    else 0 end
  end

  def evex_bits(bits)
    case bits
    when 256 then 1
    when 512 then 2
    else 0 end
  end
end
