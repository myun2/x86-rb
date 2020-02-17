module X86::ModRM
  def ptr_regno(reg)
    return reg if reg.is_a? Integer
    case reg
    when :a then 0
    when :c then 1
    when :d then 2
    when :b then 3
    when :sib then 4
    when :bp, :sp, :disp32 then 5
    when :si then 6
    when :di then 7
    else raise "Unknown reg name #{reg}"
    end
  end

  def regno(reg)
    return reg if reg.is_a? Integer
    case reg
    when :a then 0
    when :c then 1
    when :d then 2
    when :b then 3
    when :sp then 4
    when :bp then 5
    when :si then 6
    when :di then 7
    else raise "Unknown reg name #{reg}"
    end
  end

  def mod(mode)
    case mode
    when :ptr then 0
    when :disp8 then 1
    when :disp32 then 2
    else 3 end
  end

  def modrm(r, rm, mode = nil)
    if rm.is_a?(Array) && !mode
      (regno(r) << 3) | regno(rm.first)
    else
      (mod(mode) << 6) | (regno(r) << 3) | regno(rm)
    end
  end
  alias rr modrm
  alias modrm_digit modrm
end
