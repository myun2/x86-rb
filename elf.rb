class ELF
  MAGIC = "\x7fELF"
  ET_EXEC = 2
  ARCH_386 = 3
  ARCH_X86_64 = 17

  attr_reader *%i[arch version entry]

  def initialize(
    arch: ARCH_386,
    version: 0,
    entry: 0x20003a
  )
    @arch = arch
    @version = version
    @entry = entry
  end

  def header
    MAGIC + ident + other
  end

  def ident
    ([0]*12).pack('C*')
  end

  def other
    [ ET_EXEC, arch ].pack('S*') +
    [ version, entry, 32, 1, 0 ].pack('L*') + # PgHead, SecHead, Flags
    [ 0, 32, 1, 0, 0, 1 ].pack('S*') + # Header, Entry, Num, SecSize, SecNum, shstrndx
    [ 0, 1, 1 ].pack('S*')
  end
end
