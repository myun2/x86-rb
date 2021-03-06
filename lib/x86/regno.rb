module X86::Regno
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
