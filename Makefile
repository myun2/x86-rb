h:
	ruby hello.rb > hello
	@xxd hello
	@chmod 755 hello
	@strace ./hello
	@./hello
