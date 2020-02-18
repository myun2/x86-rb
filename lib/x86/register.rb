class X86::Register
  class Base; end
  class RegSize8 < Base; end
  class RegSize16 < Base; end
  class RegSize32 < Base; end

  module Reg0; def regno; 0; end; end
  module Reg1; def regno; 1; end; end
  module Reg2; def regno; 2; end; end
  module Reg3; def regno; 3; end; end
  module Reg4; def regno; 4; end; end
  module Reg5; def regno; 5; end; end
  module Reg6; def regno; 6; end; end
  module Reg7; def regno; 7; end; end

  class AL < RegSize8; include Reg0; end
  class CL < RegSize8; include Reg1; end
  class DL < RegSize8; include Reg2; end
  class BL < RegSize8; include Reg3; end
  class AH < RegSize8; include Reg4; end
  class CH < RegSize8; include Reg5; end
  class DH < RegSize8; include Reg6; end
  class BH < RegSize8; include Reg7; end

  class AX < RegSize16; include Reg0; end
  class CX < RegSize16; include Reg1; end
  class DX < RegSize16; include Reg2; end
  class BX < RegSize16; include Reg3; end
  class SP < RegSize16; include Reg4; end
  class BP < RegSize16; include Reg5; end
  class SI < RegSize16; include Reg6; end
  class DI < RegSize16; include Reg7; end

  class Eax < RegSize32; include Reg0; end
  class Ecx < RegSize32; include Reg1; end
  class Edx < RegSize32; include Reg2; end
  class Ebx < RegSize32; include Reg3; end
  class Esp < RegSize32; include Reg4; end
  class Ebp < RegSize32; include Reg5; end
  class Esi < RegSize32; include Reg6; end
  class Edi < RegSize32; include Reg7; end
end
