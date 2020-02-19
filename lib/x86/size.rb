module X86::Size
  def self.char?(i)
    i >= -128 && i < 128
  end

  def self.short?(i)
    i >= -65536 && i < 65536
  end
end
