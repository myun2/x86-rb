class X86::Register
  class Reg256 < X86::Register::Base; end
  class Reg512 < X86::Register::Base; end

  module Reg16; def regno; 16; end; end
  module Reg17; def regno; 17; end; end
  module Reg18; def regno; 18; end; end
  module Reg19; def regno; 19; end; end
  module Reg20; def regno; 20; end; end
  module Reg21; def regno; 21; end; end
  module Reg22; def regno; 22; end; end
  module Reg23; def regno; 23; end; end
  module Reg24; def regno; 24; end; end
  module Reg25; def regno; 25; end; end
  module Reg26; def regno; 26; end; end
  module Reg27; def regno; 27; end; end
  module Reg28; def regno; 28; end; end
  module Reg29; def regno; 29; end; end
  module Reg30; def regno; 30; end; end
  module Reg31; def regno; 31; end; end

  # for SSE
  class Xmm16 < Reg128; include Reg16; end
  class Xmm17 < Reg128; include Reg17; end
  class Xmm18 < Reg128; include Reg18; end
  class Xmm19 < Reg128; include Reg19; end
  class Xmm20 < Reg128; include Reg20; end
  class Xmm21 < Reg128; include Reg21; end
  class Xmm22 < Reg128; include Reg22; end
  class Xmm23 < Reg128; include Reg23; end
  class Xmm24 < Reg128; include Reg24; end
  class Xmm25 < Reg128; include Reg25; end
  class Xmm26 < Reg128; include Reg26; end
  class Xmm27 < Reg128; include Reg27; end
  class Xmm28 < Reg128; include Reg28; end
  class Xmm29 < Reg128; include Reg29; end
  class Xmm30 < Reg128; include Reg30; end
  class Xmm31 < Reg128; include Reg31; end

  # for Intel-AVX
  class Ymm0  < Reg256; include Reg0; end
  class Ymm1  < Reg256; include Reg1; end
  class Ymm2  < Reg256; include Reg2; end
  class Ymm3  < Reg256; include Reg3; end
  class Ymm4  < Reg256; include Reg4; end
  class Ymm5  < Reg256; include Reg5; end
  class Ymm6  < Reg256; include Reg6; end
  class Ymm7  < Reg256; include Reg7; end
  class Ymm8  < Reg256; include Reg8; end
  class Ymm9  < Reg256; include Reg9; end
  class Ymm10 < Reg256; include Reg10; end
  class Ymm11 < Reg256; include Reg11; end
  class Ymm12 < Reg256; include Reg12; end
  class Ymm13 < Reg256; include Reg13; end
  class Ymm14 < Reg256; include Reg14; end
  class Ymm15 < Reg256; include Reg15; end
  class Ymm16 < Reg256; include Reg16; end
  class Ymm17 < Reg256; include Reg17; end
  class Ymm18 < Reg256; include Reg18; end
  class Ymm19 < Reg256; include Reg19; end
  class Ymm20 < Reg256; include Reg20; end
  class Ymm21 < Reg256; include Reg21; end
  class Ymm22 < Reg256; include Reg22; end
  class Ymm23 < Reg256; include Reg23; end
  class Ymm24 < Reg256; include Reg24; end
  class Ymm25 < Reg256; include Reg25; end
  class Ymm26 < Reg256; include Reg26; end
  class Ymm27 < Reg256; include Reg27; end
  class Ymm28 < Reg256; include Reg28; end
  class Ymm29 < Reg256; include Reg29; end
  class Ymm30 < Reg256; include Reg30; end
  class Ymm31 < Reg256; include Reg31; end

  # for Intel-AVX 512
  class Zmm0  < Reg512; include Reg0; end
  class Zmm1  < Reg512; include Reg1; end
  class Zmm2  < Reg512; include Reg2; end
  class Zmm3  < Reg512; include Reg3; end
  class Zmm4  < Reg512; include Reg4; end
  class Zmm5  < Reg512; include Reg5; end
  class Zmm6  < Reg512; include Reg6; end
  class Zmm7  < Reg512; include Reg7; end
  class Zmm8  < Reg512; include Reg8; end
  class Zmm9  < Reg512; include Reg9; end
  class Zmm10 < Reg512; include Reg10; end
  class Zmm11 < Reg512; include Reg11; end
  class Zmm12 < Reg512; include Reg12; end
  class Zmm13 < Reg512; include Reg13; end
  class Zmm14 < Reg512; include Reg14; end
  class Zmm15 < Reg512; include Reg15; end
  class Zmm16 < Reg512; include Reg16; end
  class Zmm17 < Reg512; include Reg17; end
  class Zmm18 < Reg512; include Reg18; end
  class Zmm19 < Reg512; include Reg19; end
  class Zmm20 < Reg512; include Reg20; end
  class Zmm21 < Reg512; include Reg21; end
  class Zmm22 < Reg512; include Reg22; end
  class Zmm23 < Reg512; include Reg23; end
  class Zmm24 < Reg512; include Reg24; end
  class Zmm25 < Reg512; include Reg25; end
  class Zmm26 < Reg512; include Reg26; end
  class Zmm27 < Reg512; include Reg27; end
  class Zmm28 < Reg512; include Reg28; end
  class Zmm29 < Reg512; include Reg29; end
  class Zmm30 < Reg512; include Reg30; end
  class Zmm31 < Reg512; include Reg31; end
end
