class X86::Assembly
  def initialize
    @buffer = ''
    @x86 = X86.new
  end

  def method_missing(method, *args)
    if @x86.respond_to? method
      @x86.send method, *args
    else
      super
    end
  end
end
