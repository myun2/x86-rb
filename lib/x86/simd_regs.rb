require 'x86/register'
require 'x86/reg64'

class X86::Register
  class Reg128 < Base; end
  MmxReg = Reg64
  SseReg = Reg128
  Xmm    = Reg128

  # MMX Registers
  class MM0 < Reg64; include Reg0; end
  class MM1 < Reg64; include Reg1; end
  class MM2 < Reg64; include Reg2; end
  class MM3 < Reg64; include Reg3; end
  class MM4 < Reg64; include Reg4; end
  class MM5 < Reg64; include Reg5; end
  class MM6 < Reg64; include Reg6; end
  class MM7 < Reg64; include Reg7; end

  # SSE Registers
  class Xmm0  < Reg128; include Reg0; end
  class Xmm1  < Reg128; include Reg1; end
  class Xmm2  < Reg128; include Reg2; end
  class Xmm3  < Reg128; include Reg3; end
  class Xmm4  < Reg128; include Reg4; end
  class Xmm5  < Reg128; include Reg5; end
  class Xmm6  < Reg128; include Reg6; end
  class Xmm7  < Reg128; include Reg7; end
  class Xmm8  < Reg128; include Reg8; end
  class Xmm9  < Reg128; include Reg9; end
  class Xmm10 < Reg128; include Reg10; end
  class Xmm11 < Reg128; include Reg11; end
  class Xmm12 < Reg128; include Reg12; end
  class Xmm13 < Reg128; include Reg13; end
  class Xmm14 < Reg128; include Reg14; end
  class Xmm15 < Reg128; include Reg15; end
end
