test:
	@echo 'mov al, 3'
	@echo 'mov eax, edx'
	@echo 'mov eax, 0x3344'
	@echo 'mov eax, 0x11223344'
	@echo 'inc ecx'
	@ruby -r './x86' -e 'print X86.new.mov(:a, 3)' | xxd
	@ruby -r './x86' -e 'print X86.new.mov(:a, :d)' | xxd
	@ruby -r './x86' -e 'print X86.new.mov(:a, 0x3344)' | xxd
	@ruby -r './x86' -e 'print X86.new.mov(:a, 0x11223344)' | xxd
	@ruby -r './x86' -e 'print X86.new.inc(:c)' | xxd
