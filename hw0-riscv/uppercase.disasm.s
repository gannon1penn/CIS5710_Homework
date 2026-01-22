
uppercase.bin:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <_start>:
   10074:	ffff2517          	auipc	a0,0xffff2
   10078:	f8c50513          	addi	a0,a0,-116 # 2000 <__DATA_BEGIN__>
   1007c:	000005b7          	lui	a1,0x0
   10080:	00000637          	lui	a2,0x0
   10084:	06100693          	li	a3,97
   10088:	07b00713          	li	a4,123
   1008c:	00a585b3          	add	a1,a1,a0

00010090 <Loop>:
   10090:	00058603          	lb	a2,0(a1) # 0 <__DATA_BEGIN__-0x2000>
   10094:	00c00e63          	beq	zero,a2,100b0 <end_program>
   10098:	00d66863          	bltu	a2,a3,100a8 <Increment>
   1009c:	00e67663          	bgeu	a2,a4,100a8 <Increment>
   100a0:	fe060613          	addi	a2,a2,-32 # ffffffe0 <end_program+0xfffeff30>
   100a4:	00c58023          	sb	a2,0(a1)

000100a8 <Increment>:
   100a8:	00158593          	addi	a1,a1,1
   100ac:	fe0002e3          	beqz	zero,10090 <Loop>

000100b0 <end_program>:
   100b0:	0000006f          	j	100b0 <end_program>
