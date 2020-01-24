test:
	@echo 'mov al, 3'
	@echo 'mov eax, edx'
	@echo 'mov eax, 0x3344'
	@echo 'mov eax, 0x44332211'
	@echo 'inc ecx'
	@echo 'add eax, 0x44332211'
	@echo 'add edx, 0x44332211'
	@ruby -r './x86' -e 'print X86.new.mov(:a, 3)' | xxd
	@ruby -r './x86' -e 'print X86.new.mov(:a, :d)' | xxd
	@ruby -r './x86' -e 'print X86.new.mov(:a, 0x3344)' | xxd
	@ruby -r './x86' -e 'print X86.new.mov(:a, 0x44332211)' | xxd
	@ruby -r './x86' -e 'print X86.new.inc(:c)' | xxd
	@ruby -r './x86' -e 'print X86.new.add(:a, 0x44332211)' | xxd
	@ruby -r './x86' -e 'print X86.new.add(:d, 0x44332211)' | xxd
