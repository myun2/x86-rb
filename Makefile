itoa:
	bundle exec ruby utils.rb > test
	@xxd test
	@chmod 755 test
	@./test
socket:
	bundle exec ruby sock.rb > sock
	@xxd sock
	@chmod 755 sock
	@strace ./sock
hello: hello.rb
	bundle exec ruby hello.rb > hello
	@xxd hello
	@chmod 755 hello
	@./hello
