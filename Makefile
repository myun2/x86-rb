socket:
	ruby sock.rb > sock
	@xxd sock
	@chmod 755 sock
	@strace ./sock
hello: hello.rb
	ruby hello.rb > hello
	@xxd hello
	@chmod 755 hello
	@./hello
