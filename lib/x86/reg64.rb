class X86::Register
  class Reg64 < Base; end

  module Reg8;  def regno; 8; end; end
  module Reg9;  def regno; 9; end; end
  module Reg10; def regno; 10; end; end
  module Reg11; def regno; 11; end; end
  module Reg12; def regno; 12; end; end
  module Reg13; def regno; 13; end; end
  module Reg14; def regno; 14; end; end
  module Reg15; def regno; 15; end; end

  class Rax < Reg64; include Reg0; end
  class Rcx < Reg64; include Reg1; end
  class Rdx < Reg64; include Reg2; end
  class Rbx < Reg64; include Reg3; end
  class Rsp < Reg64; include Reg4; end
  class Rbp < Reg64; include Reg5; end
  class Rsi < Reg64; include Reg6; end
  class Rdi < Reg64; include Reg7; end

  # extends
  class R8  < Reg64; include Reg8; end
  class R9  < Reg64; include Reg9; end
  class R10 < Reg64; include Reg10; end
  class R11 < Reg64; include Reg11; end
  class R12 < Reg64; include Reg12; end
  class R13 < Reg64; include Reg13; end
  class R14 < Reg64; include Reg14; end
  class R15 < Reg64; include Reg15; end
end
