module X86::Regno
  MAP = %i{a c d b sp bp si di}

  def self.from_num(num); MAP[num]; end

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
end
