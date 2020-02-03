module Linux32::Socket
  IPPROTO_IP = 0
  SOCK_STREAM = 1
  AF_INET = 2

  def socket(domain = IPPROTO_IP, type = SOCK_STREAM, protocol = AF_INET)
    socket_call(1, [domain, type, protocol])
  end

  def byte_swapping(val, size = 32)
    if size == 16
      [val].pack('n').unpack('v').first
    else
      [val].pack('N').unpack('V').first
    end
  end
  alias rven byte_swapping

  def bind(port, fd = nil, addr = 0, protocol = AF_INET)
    ops = ''
    ops << socket unless fd
    ops << socket_call(2,
                       [addr, rven(port, 16) << 16 | protocol],
                       [16, :c, :a])
    ops
  end
end
