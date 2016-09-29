;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Thu Sep 29 13:34:06 2016
;--------------------------------------------------------
	.module HC05
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _LcdShowString
	.globl _LcdAreaClear
	.globl _initLcd
	.globl _delay10usValue
	.globl _readString
	.globl _sendString
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _HC05GetRole_PARM_4
	.globl _HC05GetRole_PARM_3
	.globl _HC05GetRole_PARM_2
	.globl _HC05Init
	.globl _HC05CfgCmd
	.globl _HC05GetRole
	.globl _HC05SetCmd
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_HC05Init_str_1_22:
	.ds 10
_HC05GetRole_PARM_2:
	.ds 2
_HC05GetRole_PARM_3:
	.ds 3
_HC05GetRole_PARM_4:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'HC05Init'
;------------------------------------------------------------
;str                       Allocated with name '_HC05Init_str_1_22'
;i                         Allocated to registers 
;------------------------------------------------------------
;	HC05/HC05.c:5: unsigned char HC05Init(void)
;	-----------------------------------------
;	 function HC05Init
;	-----------------------------------------
_HC05Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	HC05/HC05.c:10: initLcd();
	lcall	_initLcd
;	HC05/HC05.c:12: while(1)
00105$:
;	HC05/HC05.c:14: sendString("AT\r\n",4);
	mov	_sendString_PARM_2,#0x04
	mov	(_sendString_PARM_2 + 1),#0x00
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_sendString
;	HC05/HC05.c:15: delay10usValue(1000);
	mov	dptr,#0x03E8
	lcall	_delay10usValue
;	HC05/HC05.c:16: readString(str,3);
	mov	_readString_PARM_2,#0x03
	mov	(_readString_PARM_2 + 1),#0x00
	mov	dptr,#_HC05Init_str_1_22
	mov	b,#0x40
	lcall	_readString
;	HC05/HC05.c:17: if( str[0] == 'O' && str[1] == 'K')
	mov	a,#0x4F
	cjne	a,_HC05Init_str_1_22,00102$
	mov	a,#0x4B
	cjne	a,(_HC05Init_str_1_22 + 0x0001),00102$
;	HC05/HC05.c:19: LcdAreaClear(0,0,16);
	mov	_LcdAreaClear_PARM_2,#0x00
	mov	_LcdAreaClear_PARM_3,#0x10
	mov	dpl,#0x00
	lcall	_LcdAreaClear
;	HC05/HC05.c:20: LcdShowString(0,0,"HC05-OK");
	mov	_LcdShowString_PARM_3,#___str_1
	mov	(_LcdShowString_PARM_3 + 1),#(___str_1 >> 8)
	mov	(_LcdShowString_PARM_3 + 2),#0x80
	mov	_LcdShowString_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_LcdShowString
;	HC05/HC05.c:21: return 0;
	mov	dpl,#0x00
	ret
00102$:
;	HC05/HC05.c:23: LcdShowString(0,0,"HC05-Error");
	mov	_LcdShowString_PARM_3,#___str_2
	mov	(_LcdShowString_PARM_3 + 1),#(___str_2 >> 8)
	mov	(_LcdShowString_PARM_3 + 2),#0x80
	mov	_LcdShowString_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_LcdShowString
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'HC05CfgCmd'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	HC05/HC05.c:27: void HC05CfgCmd(unsigned char *str)
;	-----------------------------------------
;	 function HC05CfgCmd
;	-----------------------------------------
_HC05CfgCmd:
;	HC05/HC05.c:29: str = str+1;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HC05GetRole'
;------------------------------------------------------------
;cmdLen                    Allocated with name '_HC05GetRole_PARM_2'
;retStr                    Allocated with name '_HC05GetRole_PARM_3'
;retStrLen                 Allocated with name '_HC05GetRole_PARM_4'
;cmdStr                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	HC05/HC05.c:32: unsigned char HC05GetRole(char cmdStr[],int cmdLen,char retStr [],int retStrLen)
;	-----------------------------------------
;	 function HC05GetRole
;	-----------------------------------------
_HC05GetRole:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	HC05/HC05.c:34: sendString(cmdStr,cmdLen);
	mov	_sendString_PARM_2,_HC05GetRole_PARM_2
	mov	(_sendString_PARM_2 + 1),(_HC05GetRole_PARM_2 + 1)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_sendString
;	HC05/HC05.c:35: delay10usValue(1000);
	mov	dptr,#0x03E8
	lcall	_delay10usValue
;	HC05/HC05.c:36: return readString(retStr,retStrLen);
	mov	_readString_PARM_2,_HC05GetRole_PARM_4
	mov	(_readString_PARM_2 + 1),(_HC05GetRole_PARM_4 + 1)
	mov	dpl,_HC05GetRole_PARM_3
	mov	dph,(_HC05GetRole_PARM_3 + 1)
	mov	b,(_HC05GetRole_PARM_3 + 2)
	ljmp	_readString
;------------------------------------------------------------
;Allocation info for local variables in function 'HC05SetCmd'
;------------------------------------------------------------
;atstr                     Allocated to registers 
;------------------------------------------------------------
;	HC05/HC05.c:39: unsigned char HC05SetCmd(unsigned char * atstr)
;	-----------------------------------------
;	 function HC05SetCmd
;	-----------------------------------------
_HC05SetCmd:
;	HC05/HC05.c:42: return 0;
	mov	dpl,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "AT"
	.db 0x0D
	.db 0x0A
	.db 0x00
___str_1:
	.ascii "HC05-OK"
	.db 0x00
___str_2:
	.ascii "HC05-Error"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)