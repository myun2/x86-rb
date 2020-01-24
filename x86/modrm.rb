module X86::ModRM
  def regno(reg)
    case reg
    when :a then 0
    when :c then 1
    when :d then 2
    when :b then 3
    when :sp, :sib then 4
    when :bp, :disp32 then 5
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

  def modrm(to, from, mode = nil)
    (mod(mode) << 6) | (regno(to) << 3) | regno(from)
  end
  alias rr modrm
end
