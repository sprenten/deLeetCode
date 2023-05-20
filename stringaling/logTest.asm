
logTest.o:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 8a 2f 00 00    	push   0x2f8a(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 8b 2f 00 00 	bnd jmp *0x2f8b(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 8d 2f 00 00 	bnd jmp *0x2f8d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001070 <__stack_chk_fail@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 45 2f 00 00 	bnd jmp *0x2f45(%rip)        # 3fc0 <__stack_chk_fail@GLIBC_2.4>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001080 <printf@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 3d 2f 00 00 	bnd jmp *0x2f3d(%rip)        # 3fc8 <printf@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001090 <log10@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 35 2f 00 00 	bnd jmp *0x2f35(%rip)        # 3fd0 <log10@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	45 31 c0             	xor    %r8d,%r8d
    10b6:	31 c9                	xor    %ecx,%ecx
    10b8:	48 8d 3d 48 01 00 00 	lea    0x148(%rip),%rdi        # 1207 <main>
    10bf:	ff 15 13 2f 00 00    	call   *0x2f13(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10c5:	f4                   	hlt    
    10c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cd:	00 00 00 

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 39 2f 00 00 	lea    0x2f39(%rip),%rdi        # 4010 <__TMC_END__>
    10d7:	48 8d 05 32 2f 00 00 	lea    0x2f32(%rip),%rax        # 4010 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 f6 2e 00 00 	mov    0x2ef6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmp    *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 09 2f 00 00 	lea    0x2f09(%rip),%rdi        # 4010 <__TMC_END__>
    1107:	48 8d 35 02 2f 00 00 	lea    0x2f02(%rip),%rsi        # 4010 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    %rsi
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 c5 2e 00 00 	mov    0x2ec5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmp    *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	80 3d c5 2e 00 00 00 	cmpb   $0x0,0x2ec5(%rip)        # 4010 <__TMC_END__>
    114b:	75 2b                	jne    1178 <__do_global_dtors_aux+0x38>
    114d:	55                   	push   %rbp
    114e:	48 83 3d a2 2e 00 00 	cmpq   $0x0,0x2ea2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0c                	je     1167 <__do_global_dtors_aux+0x27>
    115b:	48 8b 3d a6 2e 00 00 	mov    0x2ea6(%rip),%rdi        # 4008 <__dso_handle>
    1162:	e8 f9 fe ff ff       	call   1060 <__cxa_finalize@plt>
    1167:	e8 64 ff ff ff       	call   10d0 <deregister_tm_clones>
    116c:	c6 05 9d 2e 00 00 01 	movb   $0x1,0x2e9d(%rip)        # 4010 <__TMC_END__>
    1173:	5d                   	pop    %rbp
    1174:	c3                   	ret    
    1175:	0f 1f 00             	nopl   (%rax)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <frame_dummy>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	e9 77 ff ff ff       	jmp    1100 <register_tm_clones>

0000000000001189 <byLog10>:
    1189:	f3 0f 1e fa          	endbr64 
    118d:	55                   	push   %rbp
    118e:	48 89 e5             	mov    %rsp,%rbp
    1191:	48 83 ec 20          	sub    $0x20,%rsp
    1195:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1198:	8b 45 ec             	mov    -0x14(%rbp),%eax
    119b:	48 85 c0             	test   %rax,%rax
    119e:	78 10                	js     11b0 <byLog10+0x27>
    11a0:	66 0f ef d2          	pxor   %xmm2,%xmm2
    11a4:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
    11a9:	66 48 0f 7e d0       	movq   %xmm2,%rax
    11ae:	eb 1e                	jmp    11ce <byLog10+0x45>
    11b0:	48 89 c2             	mov    %rax,%rdx
    11b3:	48 d1 ea             	shr    %rdx
    11b6:	83 e0 01             	and    $0x1,%eax
    11b9:	48 09 c2             	or     %rax,%rdx
    11bc:	66 0f ef c0          	pxor   %xmm0,%xmm0
    11c0:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    11c5:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    11c9:	66 48 0f 7e c0       	movq   %xmm0,%rax
    11ce:	66 48 0f 6e c0       	movq   %rax,%xmm0
    11d3:	e8 b8 fe ff ff       	call   1090 <log10@plt>
    11d8:	f2 0f 10 0d 30 0e 00 	movsd  0xe30(%rip),%xmm1        # 2010 <_IO_stdin_used+0x10>
    11df:	00 
    11e0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    11e4:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    11e8:	89 45 f8             	mov    %eax,-0x8(%rbp)
    11eb:	8b 45 f8             	mov    -0x8(%rbp),%eax
    11ee:	83 e0 01             	and    $0x1,%eax
    11f1:	85 c0                	test   %eax,%eax
    11f3:	75 05                	jne    11fa <byLog10+0x71>
    11f5:	8b 45 ec             	mov    -0x14(%rbp),%eax
    11f8:	eb 05                	jmp    11ff <byLog10+0x76>
    11fa:	b8 00 00 00 00       	mov    $0x0,%eax
    11ff:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1202:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1205:	c9                   	leave  
    1206:	c3                   	ret    

0000000000001207 <main>:
    1207:	f3 0f 1e fa          	endbr64 
    120b:	55                   	push   %rbp
    120c:	48 89 e5             	mov    %rsp,%rbp
    120f:	48 83 ec 40          	sub    $0x40,%rsp
    1213:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    121a:	00 00 
    121c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1220:	31 c0                	xor    %eax,%eax
    1222:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    1229:	00 
    122a:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    1231:	00 
    1232:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    1239:	00 
    123a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1241:	00 
    1242:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    1249:	00 
    124a:	c7 45 d0 14 00 00 00 	movl   $0x14,-0x30(%rbp)
    1251:	c7 45 d4 ea 00 00 00 	movl   $0xea,-0x2c(%rbp)
    1258:	c7 45 d8 4e 00 00 00 	movl   $0x4e,-0x28(%rbp)
    125f:	c7 45 dc e4 13 00 00 	movl   $0x13e4,-0x24(%rbp)
    1266:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
    126d:	c7 45 e4 14 01 00 00 	movl   $0x114,-0x1c(%rbp)
    1274:	c7 45 e8 4b 03 00 00 	movl   $0x34b,-0x18(%rbp)
    127b:	c7 45 ec ab b6 0a 00 	movl   $0xab6ab,-0x14(%rbp)
    1282:	c7 45 f0 00 02 00 00 	movl   $0x200,-0x10(%rbp)
    1289:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
    1290:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
    1297:	eb 36                	jmp    12cf <main+0xc8>
    1299:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    129c:	48 98                	cltq   
    129e:	8b 44 85 d0          	mov    -0x30(%rbp,%rax,4),%eax
    12a2:	89 c7                	mov    %eax,%edi
    12a4:	e8 e0 fe ff ff       	call   1189 <byLog10>
    12a9:	89 45 cc             	mov    %eax,-0x34(%rbp)
    12ac:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    12b0:	74 19                	je     12cb <main+0xc4>
    12b2:	8b 45 cc             	mov    -0x34(%rbp),%eax
    12b5:	89 c6                	mov    %eax,%esi
    12b7:	48 8d 05 4a 0d 00 00 	lea    0xd4a(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    12be:	48 89 c7             	mov    %rax,%rdi
    12c1:	b8 00 00 00 00       	mov    $0x0,%eax
    12c6:	e8 b5 fd ff ff       	call   1080 <printf@plt>
    12cb:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    12cf:	83 7d c4 09          	cmpl   $0x9,-0x3c(%rbp)
    12d3:	7e c4                	jle    1299 <main+0x92>
    12d5:	b8 00 00 00 00       	mov    $0x0,%eax
    12da:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12de:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    12e5:	00 00 
    12e7:	74 05                	je     12ee <main+0xe7>
    12e9:	e8 82 fd ff ff       	call   1070 <__stack_chk_fail@plt>
    12ee:	c9                   	leave  
    12ef:	c3                   	ret    

Disassembly of section .fini:

00000000000012f0 <_fini>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	48 83 ec 08          	sub    $0x8,%rsp
    12f8:	48 83 c4 08          	add    $0x8,%rsp
    12fc:	c3                   	ret    
