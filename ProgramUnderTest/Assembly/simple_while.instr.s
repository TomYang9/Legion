
../Instrumented/simple_while.instr:     file format elf64-x86-64


Disassembly of section .init:

0000000000400428 <_init>:
  400428:	48 83 ec 08          	sub    $0x8,%rsp
  40042c:	48 8b 05 c5 0b 20 00 	mov    0x200bc5(%rip),%rax        # 600ff8 <__gmon_start__>
  400433:	48 85 c0             	test   %rax,%rax
  400436:	74 02                	je     40043a <_init+0x12>
  400438:	ff d0                	callq  *%rax
  40043a:	48 83 c4 08          	add    $0x8,%rsp
  40043e:	c3                   	retq   

Disassembly of section .plt:

0000000000400440 <.plt>:
  400440:	ff 35 c2 0b 20 00    	pushq  0x200bc2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400446:	ff 25 c4 0b 20 00    	jmpq   *0x200bc4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40044c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400450 <__stack_chk_fail@plt>:
  400450:	ff 25 c2 0b 20 00    	jmpq   *0x200bc2(%rip)        # 601018 <__stack_chk_fail@GLIBC_2.4>
  400456:	68 00 00 00 00       	pushq  $0x0
  40045b:	e9 e0 ff ff ff       	jmpq   400440 <.plt>

0000000000400460 <read@plt>:
  400460:	ff 25 ba 0b 20 00    	jmpq   *0x200bba(%rip)        # 601020 <read@GLIBC_2.2.5>
  400466:	68 01 00 00 00       	pushq  $0x1
  40046b:	e9 d0 ff ff ff       	jmpq   400440 <.plt>

Disassembly of section .text:

0000000000400470 <_start>:
  400470:	31 ed                	xor    %ebp,%ebp
  400472:	49 89 d1             	mov    %rdx,%r9
  400475:	5e                   	pop    %rsi
  400476:	48 89 e2             	mov    %rsp,%rdx
  400479:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40047d:	50                   	push   %rax
  40047e:	54                   	push   %rsp
  40047f:	49 c7 c0 00 08 40 00 	mov    $0x400800,%r8
  400486:	48 c7 c1 90 07 40 00 	mov    $0x400790,%rcx
  40048d:	48 c7 c7 3b 06 40 00 	mov    $0x40063b,%rdi
  400494:	ff 15 56 0b 20 00    	callq  *0x200b56(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40049a:	f4                   	hlt    
  40049b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004004a0 <_dl_relocate_static_pie>:
  4004a0:	f3 c3                	repz retq 
  4004a2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4004a9:	00 00 00 
  4004ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004b0 <deregister_tm_clones>:
  4004b0:	55                   	push   %rbp
  4004b1:	b8 38 10 60 00       	mov    $0x601038,%eax
  4004b6:	48 3d 38 10 60 00    	cmp    $0x601038,%rax
  4004bc:	48 89 e5             	mov    %rsp,%rbp
  4004bf:	74 17                	je     4004d8 <deregister_tm_clones+0x28>
  4004c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4004c6:	48 85 c0             	test   %rax,%rax
  4004c9:	74 0d                	je     4004d8 <deregister_tm_clones+0x28>
  4004cb:	5d                   	pop    %rbp
  4004cc:	bf 38 10 60 00       	mov    $0x601038,%edi
  4004d1:	ff e0                	jmpq   *%rax
  4004d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4004d8:	5d                   	pop    %rbp
  4004d9:	c3                   	retq   
  4004da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004e0 <register_tm_clones>:
  4004e0:	be 38 10 60 00       	mov    $0x601038,%esi
  4004e5:	55                   	push   %rbp
  4004e6:	48 81 ee 38 10 60 00 	sub    $0x601038,%rsi
  4004ed:	48 89 e5             	mov    %rsp,%rbp
  4004f0:	48 c1 fe 03          	sar    $0x3,%rsi
  4004f4:	48 89 f0             	mov    %rsi,%rax
  4004f7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4004fb:	48 01 c6             	add    %rax,%rsi
  4004fe:	48 d1 fe             	sar    %rsi
  400501:	74 15                	je     400518 <register_tm_clones+0x38>
  400503:	b8 00 00 00 00       	mov    $0x0,%eax
  400508:	48 85 c0             	test   %rax,%rax
  40050b:	74 0b                	je     400518 <register_tm_clones+0x38>
  40050d:	5d                   	pop    %rbp
  40050e:	bf 38 10 60 00       	mov    $0x601038,%edi
  400513:	ff e0                	jmpq   *%rax
  400515:	0f 1f 00             	nopl   (%rax)
  400518:	5d                   	pop    %rbp
  400519:	c3                   	retq   
  40051a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400520 <__do_global_dtors_aux>:
  400520:	80 3d 11 0b 20 00 00 	cmpb   $0x0,0x200b11(%rip)        # 601038 <__TMC_END__>
  400527:	75 17                	jne    400540 <__do_global_dtors_aux+0x20>
  400529:	55                   	push   %rbp
  40052a:	48 89 e5             	mov    %rsp,%rbp
  40052d:	e8 7e ff ff ff       	callq  4004b0 <deregister_tm_clones>
  400532:	c6 05 ff 0a 20 00 01 	movb   $0x1,0x200aff(%rip)        # 601038 <__TMC_END__>
  400539:	5d                   	pop    %rbp
  40053a:	c3                   	retq   
  40053b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400540:	f3 c3                	repz retq 
  400542:	0f 1f 40 00          	nopl   0x0(%rax)
  400546:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40054d:	00 00 00 

0000000000400550 <frame_dummy>:
  400550:	55                   	push   %rbp
  400551:	48 89 e5             	mov    %rsp,%rbp
  400554:	5d                   	pop    %rbp
  400555:	eb 89                	jmp    4004e0 <register_tm_clones>

0000000000400557 <test>:
  400557:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  40055e:	50                   	push   %rax
  40055f:	57                   	push   %rdi
  400560:	56                   	push   %rsi
  400561:	52                   	push   %rdx
  400562:	51                   	push   %rcx
  400563:	41 53                	push   %r11
  400565:	e8 f1 01 00 00       	callq  40075b <__trace_jump>
  40056a:	41 5b                	pop    %r11
  40056c:	59                   	pop    %rcx
  40056d:	5a                   	pop    %rdx
  40056e:	5e                   	pop    %rsi
  40056f:	5f                   	pop    %rdi
  400570:	58                   	pop    %rax
  400571:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  400578:	55                   	push   %rbp
  400579:	48 89 e5             	mov    %rsp,%rbp
  40057c:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40057f:	eb 25                	jmp    4005a6 <test+0x4f>
  400581:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  400588:	50                   	push   %rax
  400589:	57                   	push   %rdi
  40058a:	56                   	push   %rsi
  40058b:	52                   	push   %rdx
  40058c:	51                   	push   %rcx
  40058d:	41 53                	push   %r11
  40058f:	e8 c7 01 00 00       	callq  40075b <__trace_jump>
  400594:	41 5b                	pop    %r11
  400596:	59                   	pop    %rcx
  400597:	5a                   	pop    %rdx
  400598:	5e                   	pop    %rsi
  400599:	5f                   	pop    %rdi
  40059a:	58                   	pop    %rax
  40059b:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  4005a2:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
  4005a6:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  4005ad:	50                   	push   %rax
  4005ae:	57                   	push   %rdi
  4005af:	56                   	push   %rsi
  4005b0:	52                   	push   %rdx
  4005b1:	51                   	push   %rcx
  4005b2:	41 53                	push   %r11
  4005b4:	e8 a2 01 00 00       	callq  40075b <__trace_jump>
  4005b9:	41 5b                	pop    %r11
  4005bb:	59                   	pop    %rcx
  4005bc:	5a                   	pop    %rdx
  4005bd:	5e                   	pop    %rsi
  4005be:	5f                   	pop    %rdi
  4005bf:	58                   	pop    %rax
  4005c0:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  4005c7:	83 7d fc 20          	cmpl   $0x20,-0x4(%rbp)
  4005cb:	76 48                	jbe    400615 <test+0xbe>
  4005cd:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  4005d4:	50                   	push   %rax
  4005d5:	57                   	push   %rdi
  4005d6:	56                   	push   %rsi
  4005d7:	52                   	push   %rdx
  4005d8:	51                   	push   %rcx
  4005d9:	41 53                	push   %r11
  4005db:	e8 7b 01 00 00       	callq  40075b <__trace_jump>
  4005e0:	41 5b                	pop    %r11
  4005e2:	59                   	pop    %rcx
  4005e3:	5a                   	pop    %rdx
  4005e4:	5e                   	pop    %rsi
  4005e5:	5f                   	pop    %rdi
  4005e6:	58                   	pop    %rax
  4005e7:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  4005ee:	83 7d fc 3f          	cmpl   $0x3f,-0x4(%rbp)
  4005f2:	76 8d                	jbe    400581 <test+0x2a>
  4005f4:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  4005fb:	50                   	push   %rax
  4005fc:	57                   	push   %rdi
  4005fd:	56                   	push   %rsi
  4005fe:	52                   	push   %rdx
  4005ff:	51                   	push   %rcx
  400600:	41 53                	push   %r11
  400602:	e8 54 01 00 00       	callq  40075b <__trace_jump>
  400607:	41 5b                	pop    %r11
  400609:	59                   	pop    %rcx
  40060a:	5a                   	pop    %rdx
  40060b:	5e                   	pop    %rsi
  40060c:	5f                   	pop    %rdi
  40060d:	58                   	pop    %rax
  40060e:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  400615:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  40061c:	50                   	push   %rax
  40061d:	57                   	push   %rdi
  40061e:	56                   	push   %rsi
  40061f:	52                   	push   %rdx
  400620:	51                   	push   %rcx
  400621:	41 53                	push   %r11
  400623:	e8 33 01 00 00       	callq  40075b <__trace_jump>
  400628:	41 5b                	pop    %r11
  40062a:	59                   	pop    %rcx
  40062b:	5a                   	pop    %rdx
  40062c:	5e                   	pop    %rsi
  40062d:	5f                   	pop    %rdi
  40062e:	58                   	pop    %rax
  40062f:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  400636:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400639:	5d                   	pop    %rbp
  40063a:	c3                   	retq   

000000000040063b <main>:
  40063b:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  400642:	50                   	push   %rax
  400643:	57                   	push   %rdi
  400644:	56                   	push   %rsi
  400645:	52                   	push   %rdx
  400646:	51                   	push   %rcx
  400647:	41 53                	push   %r11
  400649:	e8 0d 01 00 00       	callq  40075b <__trace_jump>
  40064e:	41 5b                	pop    %r11
  400650:	59                   	pop    %rcx
  400651:	5a                   	pop    %rdx
  400652:	5e                   	pop    %rsi
  400653:	5f                   	pop    %rdi
  400654:	58                   	pop    %rax
  400655:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  40065c:	55                   	push   %rbp
  40065d:	48 89 e5             	mov    %rsp,%rbp
  400660:	48 83 ec 20          	sub    $0x20,%rsp
  400664:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400667:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40066b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400672:	00 00 
  400674:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400678:	31 c0                	xor    %eax,%eax
  40067a:	48 8d 45 f6          	lea    -0xa(%rbp),%rax
  40067e:	ba 01 00 00 00       	mov    $0x1,%edx
  400683:	48 89 c6             	mov    %rax,%rsi
  400686:	bf 00 00 00 00       	mov    $0x0,%edi
  40068b:	e8 d0 fd ff ff       	callq  400460 <read@plt>
  400690:	48 8d 45 f7          	lea    -0x9(%rbp),%rax
  400694:	ba 01 00 00 00       	mov    $0x1,%edx
  400699:	48 89 c6             	mov    %rax,%rsi
  40069c:	bf 00 00 00 00       	mov    $0x0,%edi
  4006a1:	e8 ba fd ff ff       	callq  400460 <read@plt>
  4006a6:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  4006aa:	3c e0                	cmp    $0xe0,%al
  4006ac:	76 2f                	jbe    4006dd <main+0xa2>
  4006ae:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  4006b5:	50                   	push   %rax
  4006b6:	57                   	push   %rdi
  4006b7:	56                   	push   %rsi
  4006b8:	52                   	push   %rdx
  4006b9:	51                   	push   %rcx
  4006ba:	41 53                	push   %r11
  4006bc:	e8 9a 00 00 00       	callq  40075b <__trace_jump>
  4006c1:	41 5b                	pop    %r11
  4006c3:	59                   	pop    %rcx
  4006c4:	5a                   	pop    %rdx
  4006c5:	5e                   	pop    %rsi
  4006c6:	5f                   	pop    %rdi
  4006c7:	58                   	pop    %rax
  4006c8:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  4006cf:	0f b6 45 f6          	movzbl -0xa(%rbp),%eax
  4006d3:	0f b6 c0             	movzbl %al,%eax
  4006d6:	89 c7                	mov    %eax,%edi
  4006d8:	e8 7a fe ff ff       	callq  400557 <test>
  4006dd:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  4006e4:	50                   	push   %rax
  4006e5:	57                   	push   %rdi
  4006e6:	56                   	push   %rsi
  4006e7:	52                   	push   %rdx
  4006e8:	51                   	push   %rcx
  4006e9:	41 53                	push   %r11
  4006eb:	e8 6b 00 00 00       	callq  40075b <__trace_jump>
  4006f0:	41 5b                	pop    %r11
  4006f2:	59                   	pop    %rcx
  4006f3:	5a                   	pop    %rdx
  4006f4:	5e                   	pop    %rsi
  4006f5:	5f                   	pop    %rdi
  4006f6:	58                   	pop    %rax
  4006f7:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  4006fe:	b8 00 00 00 00       	mov    $0x0,%eax
  400703:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400707:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40070e:	00 00 
  400710:	74 26                	je     400738 <main+0xfd>
  400712:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  400719:	50                   	push   %rax
  40071a:	57                   	push   %rdi
  40071b:	56                   	push   %rsi
  40071c:	52                   	push   %rdx
  40071d:	51                   	push   %rcx
  40071e:	41 53                	push   %r11
  400720:	e8 36 00 00 00       	callq  40075b <__trace_jump>
  400725:	41 5b                	pop    %r11
  400727:	59                   	pop    %rcx
  400728:	5a                   	pop    %rdx
  400729:	5e                   	pop    %rsi
  40072a:	5f                   	pop    %rdi
  40072b:	58                   	pop    %rax
  40072c:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  400733:	e8 18 fd ff ff       	callq  400450 <__stack_chk_fail@plt>
  400738:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  40073f:	50                   	push   %rax
  400740:	57                   	push   %rdi
  400741:	56                   	push   %rsi
  400742:	52                   	push   %rdx
  400743:	51                   	push   %rcx
  400744:	41 53                	push   %r11
  400746:	e8 10 00 00 00       	callq  40075b <__trace_jump>
  40074b:	41 5b                	pop    %r11
  40074d:	59                   	pop    %rcx
  40074e:	5a                   	pop    %rdx
  40074f:	5e                   	pop    %rsi
  400750:	5f                   	pop    %rdi
  400751:	58                   	pop    %rax
  400752:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  400759:	c9                   	leaveq 
  40075a:	c3                   	retq   

000000000040075b <__trace_jump>:
  40075b:	55                   	push   %rbp
  40075c:	48 89 e5             	mov    %rsp,%rbp
  40075f:	48 8b 45 08          	mov    0x8(%rbp),%rax
  400763:	48 83 e8 13          	sub    $0x13,%rax
  400767:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40076b:	48 c7 c0 01 00 00 00 	mov    $0x1,%rax
  400772:	48 c7 c7 02 00 00 00 	mov    $0x2,%rdi
  400779:	48 89 ee             	mov    %rbp,%rsi
  40077c:	48 83 ee 08          	sub    $0x8,%rsi
  400780:	48 c7 c2 08 00 00 00 	mov    $0x8,%rdx
  400787:	0f 05                	syscall 
  400789:	5d                   	pop    %rbp
  40078a:	c3                   	retq   
  40078b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400790 <__libc_csu_init>:
  400790:	41 57                	push   %r15
  400792:	41 56                	push   %r14
  400794:	49 89 d7             	mov    %rdx,%r15
  400797:	41 55                	push   %r13
  400799:	41 54                	push   %r12
  40079b:	4c 8d 25 6e 06 20 00 	lea    0x20066e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4007a2:	55                   	push   %rbp
  4007a3:	48 8d 2d 6e 06 20 00 	lea    0x20066e(%rip),%rbp        # 600e18 <__init_array_end>
  4007aa:	53                   	push   %rbx
  4007ab:	41 89 fd             	mov    %edi,%r13d
  4007ae:	49 89 f6             	mov    %rsi,%r14
  4007b1:	4c 29 e5             	sub    %r12,%rbp
  4007b4:	48 83 ec 08          	sub    $0x8,%rsp
  4007b8:	48 c1 fd 03          	sar    $0x3,%rbp
  4007bc:	e8 67 fc ff ff       	callq  400428 <_init>
  4007c1:	48 85 ed             	test   %rbp,%rbp
  4007c4:	74 20                	je     4007e6 <__libc_csu_init+0x56>
  4007c6:	31 db                	xor    %ebx,%ebx
  4007c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4007cf:	00 
  4007d0:	4c 89 fa             	mov    %r15,%rdx
  4007d3:	4c 89 f6             	mov    %r14,%rsi
  4007d6:	44 89 ef             	mov    %r13d,%edi
  4007d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4007dd:	48 83 c3 01          	add    $0x1,%rbx
  4007e1:	48 39 dd             	cmp    %rbx,%rbp
  4007e4:	75 ea                	jne    4007d0 <__libc_csu_init+0x40>
  4007e6:	48 83 c4 08          	add    $0x8,%rsp
  4007ea:	5b                   	pop    %rbx
  4007eb:	5d                   	pop    %rbp
  4007ec:	41 5c                	pop    %r12
  4007ee:	41 5d                	pop    %r13
  4007f0:	41 5e                	pop    %r14
  4007f2:	41 5f                	pop    %r15
  4007f4:	c3                   	retq   
  4007f5:	90                   	nop
  4007f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007fd:	00 00 00 

0000000000400800 <__libc_csu_fini>:
  400800:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400804 <_fini>:
  400804:	48 83 ec 08          	sub    $0x8,%rsp
  400808:	48 83 c4 08          	add    $0x8,%rsp
  40080c:	c3                   	retq   
