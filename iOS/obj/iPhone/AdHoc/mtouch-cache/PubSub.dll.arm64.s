.subsections_via_symbols
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 4.0.1 (mono-4.0.0-branch/ed1d3ec Thu May 21 21:49:41 EDT 2015)"
	.asciz "PubSub.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
methods:
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip PubSub_Hub_Publish_T_object_T
PubSub_Hub_Publish_T_object_T:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf9001baf
.word 0xaa0003fa
.word 0xf90013a1
.word 0xf90017a2
.word 0x390143bf
.word 0xf9002fbf
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xd2800019
.word 0x390143bf
.word 0xf9400b41
.word 0xaa0103e0
.word 0xf9002fa1
.word 0x910143a1
bl _p_1
.word 0xaa1a03e0
bl _p_2
.word 0xf9400f5a
.word 0xb5000339

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #32]
bl _p_3
.word 0xf9004fa0
.word 0xf9401ba0
bl _p_4
.word 0xaa0003e1
.word 0xf9404fa0
.word 0xf9001401
.word 0xf9004ba0
.word 0xf9401ba0
bl _p_5
.word 0xaa0003e1
.word 0xf9404ba0
.word 0xf9001c01

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xaa0003f9

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #48]
.word 0xaa1a03e0
.word 0xaa1903e1
bl _p_6

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #56]
bl _p_7
.word 0xf9004ba0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_8
.word 0xf9404ba1
.word 0x9100e3a8
.word 0xaa0103e0
.word 0xf940003e
bl _p_9
.word 0x14000019
.word 0x9100e3a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_10
.word 0xaa0003fa
.word 0xaa1a03e1
.word 0xaa0103e0
.word 0xf940003e
bl PubSub_Hub_Handler_get_Action
.word 0xf9004fa0
.word 0xf9401ba0
bl _p_11
.word 0xaa0003e2
.word 0xf9404fa0
.word 0xf9400441
bl _p_12
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9004ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9404ba0
.word 0x9100e3a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_13
.word 0x53001c00
.word 0x35fffc40
.word 0x94000002
.word 0x14000009
.word 0xf9003fbe
.word 0x9100e3a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_14
.word 0xf9403fbe
.word 0xd61f03c0
.word 0x94000002
.word 0x14000008
.word 0xf90043be
.word 0x394143a0
.word 0x34000060
.word 0xf9402fa0
bl _p_15
.word 0xf94043be
.word 0xd61f03c0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Subscribe_T_object_System_Action_1_T
PubSub_Hub_Subscribe_T_object_System_Action_1_T:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf90017af
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0x3900c3bf
.word 0xf9001fbf
.word 0x3900c3bf
.word 0xf9400b01
.word 0xaa0103e0
.word 0xf9001fa1
.word 0x9100c3a1
bl _p_1
.word 0xf9400f00
.word 0xf90033a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #80]
bl _p_3
.word 0xf9003ba0
bl PubSub_Hub_Handler__ctor
.word 0xf9403ba0
.word 0xaa0003f8
.word 0xaa1803e2
.word 0xaa0203e0
.word 0xf94013a1
.word 0xf940005e
bl PubSub_Hub_Handler_set_Action_object

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #88]
bl _p_16
.word 0xf90037a0
.word 0xf9400fa1
bl _p_17
.word 0xf94037a1
.word 0xaa1803e0
.word 0xf940031e
bl PubSub_Hub_Handler_set_Sender_System_WeakReference
.word 0xf94017a0
bl _p_18
.word 0xaa0003e1
.word 0xaa1803e0
.word 0xf940031e
bl PubSub_Hub_Handler_set_Type_System_Type

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_8
.word 0xf94033a2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf940005e
bl _p_19
.word 0x94000002
.word 0x14000008
.word 0xf9002bbe
.word 0x3940c3a0
.word 0x34000060
.word 0xf9401fa0
bl _p_15
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Unsubscribe_object
PubSub_Hub_Unsubscribe_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x390123bf
.word 0xf9002bbf
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf90023a0
.word 0xd2800018

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #96]
bl _p_3
.word 0xaa0003f7
.word 0xf900081a
.word 0x91004000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0x390123bf
.word 0xf9400b21
.word 0xaa0103e0
.word 0xf9002ba1
.word 0x910123a1
bl _p_1
.word 0xaa1903e0
bl _p_2
.word 0xf9400f3a
.word 0xb5000498
.word 0xeb1f02ff
.word 0x10000011
.word 0x54000b60

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #32]
bl _p_3
.word 0xf9001017
.word 0x91008001
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #104]
.word 0xf9001401

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #112]
.word 0xf9001c01

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #120]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xaa0003f8

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #48]
.word 0xaa1a03e0
.word 0xaa1803e1
bl _p_6
.word 0xaa0003fa
.word 0xaa1a03e0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #56]
bl _p_7
.word 0xaa0003e1
.word 0x9100c3a8
.word 0xaa0103e0
.word 0xf940003e
bl _p_9
.word 0x1400000a

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf94023ba
.word 0xf9400f22
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf940005e
bl _p_20
.word 0x9100c3a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_13
.word 0x53001c00
.word 0x35fffe20
.word 0x94000002
.word 0x14000009
.word 0xf9003fbe
.word 0x9100c3a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #72]
.word 0xf9002fa0
.word 0xf9403fbe
.word 0xd61f03c0
.word 0x94000002
.word 0x14000008
.word 0xf90043be
.word 0x394123a0
.word 0x34000060
.word 0xf9402ba0
bl _p_15
.word 0xf94043be
.word 0xd61f03c0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd28069a0
.word 0xaa1103e1
bl _p_21

Lme_2:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Unsubscribe_T_object_System_Action_1_T
PubSub_Hub_Unsubscribe_T_object_System_Action_1_T:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001bba
.word 0xf90023af
.word 0xaa0003f8
.word 0xf9001fa1
.word 0xaa0203fa
.word 0x390183bf
.word 0xf90037bf
.word 0xd2800000
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xd2800017
.word 0xd2800016
.word 0xf94023a0
bl _p_22
bl _p_16
.word 0xf90053a0
bl _p_23
.word 0xf94053a0
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xf9401fa1
.word 0xf9000801
.word 0x91004042
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9000c1a
.word 0x910062a0
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0x390183bf
.word 0xf9400b01
.word 0xaa0103e0
.word 0xf90037a1
.word 0x910183a1
bl _p_1
.word 0xaa1803e0
bl _p_2
.word 0xf9400f1a
.word 0xb5000517
.word 0xeb1f02bf
.word 0x10000011
.word 0x540013c0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #32]
bl _p_3
.word 0xf9001015
.word 0xf90057a0
.word 0x91008000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94023a0
bl _p_24
.word 0xaa0003e1
.word 0xf94057a0
.word 0xf9001401
.word 0xf90053a0
.word 0xf94023a0
bl _p_25
.word 0xaa0003e1
.word 0xf94053a0
.word 0xf9001c01

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xaa0003f7

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #48]
.word 0xaa1a03e0
.word 0xaa1703e1
bl _p_6
.word 0xaa0003fa
.word 0xf9400ea0
.word 0xb4000600
.word 0xb5000516
.word 0xeb1f02bf
.word 0x10000011
.word 0x54000da0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #32]
bl _p_3
.word 0xf9001015
.word 0xf90057a0
.word 0x91008000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94023a0
bl _p_26
.word 0xaa0003e1
.word 0xf94057a0
.word 0xf9001401
.word 0xf90053a0
.word 0xf94023a0
bl _p_27
.word 0xaa0003e1
.word 0xf94053a0
.word 0xf9001c01

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xaa0003f6

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #48]
.word 0xaa1a03e0
.word 0xaa1603e1
bl _p_6
.word 0xaa0003fa

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #56]
.word 0xaa1a03e0
bl _p_7
.word 0xf90053a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_8
.word 0xf94053a1
.word 0x910123a8
.word 0xaa0103e0
.word 0xf940003e
bl _p_9
.word 0x14000012
.word 0x910123a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_10
.word 0xaa0003fa
.word 0xf9400f00
.word 0xf90053a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_8
.word 0xf94053a2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf940005e
bl _p_20
.word 0x910123a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_13
.word 0x53001c00
.word 0x35fffd20
.word 0x94000002
.word 0x14000009
.word 0xf90047be
.word 0x910123a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_14
.word 0xf94047be
.word 0xd61f03c0
.word 0x94000002
.word 0x14000008
.word 0xf9004bbe
.word 0x394183a0
.word 0x34000060
.word 0xf94037a0
bl _p_15
.word 0xf9404bbe
.word 0xd61f03c0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xf9401bba
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd28069a0
.word 0xaa1103e1
bl _p_21

Lme_3:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Cleanup
PubSub_Hub_Cleanup:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xd2800000
.word 0xf90013a0
.word 0xf90017a0
.word 0xf9001ba0
.word 0xf9400f41

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400000
.word 0xaa0103f9
.word 0xb5000320

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #32]
bl _p_3
.word 0xaa0003e1

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #136]
.word 0xf9001420

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #144]
.word 0xf9001c20

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #152]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9000001

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400001

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #48]
.word 0xaa1903e0
bl _p_6

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #56]
bl _p_7
.word 0xaa0003e1
.word 0x910083a8
.word 0xaa0103e0
.word 0xf940003e
bl _p_9
.word 0x1400000a

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf9401bb9
.word 0xf9400f42
.word 0xaa0203e0
.word 0xaa1903e1
.word 0xf940005e
bl _p_20
.word 0x910083a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_13
.word 0x53001c00
.word 0x35fffe20
.word 0x94000002
.word 0x14000009
.word 0xf9002bbe
.word 0x910083a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #72]
.word 0xf9001fa0
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip PubSub_Hub__ctor
PubSub_Hub__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #160]
bl _p_28
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_3

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #168]
.word 0xf9400021
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9000f40
.word 0x91006341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip PubSub_Hub__Publishb__1_T_PubSub_Hub_Handler
PubSub_Hub__Publishb__1_T_PubSub_Hub_Handler:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf940003e
bl PubSub_Hub_Handler_get_Type
.word 0xf90013a0
.word 0xf9400fa0
bl _p_29
.word 0xaa0003e1
.word 0xf94013a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9411450
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_6:
.text
	.align 4
	.no_dead_strip PubSub_Hub__Cleanupb__11_PubSub_Hub_Handler
PubSub_Hub__Cleanupb__11_PubSub_Hub_Handler:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf940001e
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403c30
.word 0xd63f0200
.word 0x53001c00
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Handler_get_Action
PubSub_Hub_Handler_get_Action:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Handler_set_Action_object
PubSub_Hub_Handler_set_Action_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Handler_get_Sender
PubSub_Hub_Handler_get_Sender:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Handler_set_Sender_System_WeakReference
PubSub_Hub_Handler_set_Sender_System_WeakReference:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Handler_get_Type
PubSub_Hub_Handler_get_Type:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Handler_set_Type_System_Type
PubSub_Hub_Handler_set_Type_System_Type:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9001020
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Handler__ctor
PubSub_Hub_Handler__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Exists_T_object
PubSub_PubSubExtensions_Exists_T_object:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013af
.word 0xaa0003fa
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0xf9001fa0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf9400c00
.word 0xf90033a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_8
.word 0xf94033a1
.word 0x9100a3a8
.word 0xaa0103e0
.word 0xf940003e
bl _p_9
.word 0x1400002c
.word 0x9100a3a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_10
.word 0xaa0003f9
.word 0xaa1903e1
.word 0xaa0103e0
.word 0xf940003e
bl PubSub_Hub_Handler_get_Sender
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9401c30
.word 0xd63f0200
.word 0xf90033a0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9401c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94033a0
bl _p_30
.word 0x53001c00
.word 0x340001c0
.word 0xf94013a0
bl _p_31
.word 0xf90033a0
.word 0xaa1903e0
.word 0xf940033e
bl PubSub_Hub_Handler_get_Type
.word 0xaa0003e1
.word 0xf94033a0
.word 0xeb01001f
.word 0x54000081
.word 0xd280003a
.word 0x9400000b
.word 0x14000014
.word 0x9100a3a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_13
.word 0x53001c00
.word 0x35fff9e0
.word 0x94000002
.word 0x14000009
.word 0xf9002bbe
.word 0x9100a3a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x15, [x16, #72]
bl _p_14
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xd2800000
.word 0x14000002
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Publish_T_object
PubSub_PubSubExtensions_Publish_T_object:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf90013a0
.word 0xf9400fa0
bl _p_32
.word 0xaa0003ef
.word 0xf94013a0
.word 0xf940001e
.word 0xf9400ba1
.word 0xd2800002
bl _p_33
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Publish_T_object_T
PubSub_PubSubExtensions_Publish_T_object_T:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf9001ba0
.word 0xf94013a0
bl _p_34
.word 0xaa0003ef
.word 0xf9401ba0
.word 0xf940001e
.word 0xf9400ba1
.word 0xf9400fa2
bl _p_35
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Subscribe_T_object_System_Action_1_T
PubSub_PubSubExtensions_Subscribe_T_object_System_Action_1_T:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf9001ba0
.word 0xf94013a0
bl _p_36
.word 0xaa0003ef
.word 0xf9401ba0
.word 0xf940001e
.word 0xf9400ba1
.word 0xf9400fa2
bl _p_37
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Unsubscribe_object
PubSub_PubSubExtensions_Unsubscribe_object:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400002
.word 0xaa0203e0
.word 0xf9400ba1
.word 0xf940005e
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Unsubscribe_T_object
PubSub_PubSubExtensions_Unsubscribe_T_object:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf90013a0
.word 0xf9400fa0
bl _p_39
.word 0xaa0003ef
.word 0xf94013a0
.word 0xf940001e
.word 0xf9400ba1
.word 0xd2800002
bl _p_40
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Unsubscribe_T_object_System_Action_1_T
PubSub_PubSubExtensions_Unsubscribe_T_object_System_Action_1_T:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf9001ba0
.word 0xf94013a0
bl _p_41
.word 0xaa0003ef
.word 0xf9401ba0
.word 0xf940001e
.word 0xf9400ba1
.word 0xf9400fa2
bl _p_42
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions__cctor
PubSub_PubSubExtensions__cctor:
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #184]
bl _p_3
.word 0xf9000ba0
bl _p_43
.word 0xf9400ba1

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_16:
.text
	.align 4
	.no_dead_strip PubSub_Hub__c__DisplayClass8__ctor
PubSub_Hub__c__DisplayClass8__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip PubSub_Hub__c__DisplayClass8__Unsubscribeb__6_PubSub_Hub_Handler
PubSub_Hub__c__DisplayClass8__Unsubscribeb__6_PubSub_Hub_Handler:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf940001e
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip PubSub_Hub__c__DisplayClassf_1__ctor
PubSub_Hub__c__DisplayClassf_1__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__b_PubSub_Hub_Handler
PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__b_PubSub_Hub_Handler:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xaa1a03e0
.word 0xf940035e
bl PubSub_Hub_Handler_get_Sender
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9400fa0
.word 0xf9400801
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c00
.word 0x340001a0
.word 0xaa1a03e0
.word 0xf940035e
bl PubSub_Hub_Handler_get_Type
.word 0xf90013a0
.word 0xf9400fa0
.word 0xf9400000
bl _p_44
.word 0xaa0003e1
.word 0xf94013a0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__c_PubSub_Hub_Handler
PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__c_PubSub_Hub_Handler:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400fa1
.word 0xf940003e
bl PubSub_Hub_Handler_get_Action
.word 0xaa0003e2
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Publish___0_object___0
PubSub_Hub_Publish___0_object___0:
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90023af
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf94023a0
bl _p_45
.word 0xaa0003fa
.word 0xb9800340
.word 0xd2800019
.word 0x390183bf
.word 0xf90037bf
.word 0xd2800000
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xd2800018
.word 0x390183bf
.word 0xf94017a0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf90037a1
.word 0x910183a1
bl _p_1
.word 0xf94017a0
bl _p_2
.word 0xf94017a0
.word 0xf9400c00
.word 0xf9003ba0
.word 0xb5000338

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #32]
bl _p_3
.word 0xf90057a0
.word 0xf94023a0
bl _p_46
.word 0xaa0003e1
.word 0xf94057a0
.word 0xf9001401
.word 0xf90053a0
.word 0xf94023a0
bl _p_47
.word 0xaa0003e1
.word 0xf94053a0
.word 0xf9001c01

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xaa0003f8

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf9005fa0
.word 0xf94017a0
.word 0xf9400000
bl _p_48
.word 0xaa0003e2
.word 0xf9405faf
.word 0xf9403ba0
.word 0xaa1803e1
.word 0xd63f0040
.word 0xf90057a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9005ba0
.word 0xf94017a0
.word 0xf9400000
bl _p_49
.word 0xaa0003e1
.word 0xf94057a0
.word 0xf9405baf
.word 0xd63f0020
.word 0xf90053a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_8
.word 0xf94017a0
.word 0xf9400000
bl _p_50
.word 0xaa0003e1
.word 0xf94053a0
.word 0x910123a8
.word 0xd63f0020
.word 0x14000023
.word 0x910123a0
.word 0xf9005fa0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf90063a0
.word 0xf94017a0
.word 0xf9400000
bl _p_51
.word 0xaa0003e1
.word 0xf9405fa0
.word 0xf94063af
.word 0xd63f0020
.word 0xaa0003f8
.word 0xaa1803e1
.word 0xaa0103e0
.word 0xf940003e
bl PubSub_Hub_Handler_get_Action
.word 0xf9005ba0
.word 0xf94023a0
bl _p_52
.word 0xaa0003e2
.word 0xf9405ba0
.word 0xf9400441
bl _p_12
.word 0xf90057a0
.word 0xf94023a0
bl _p_53
.word 0xaa0003e2
.word 0xf94057a0
.word 0xf90053a0
.word 0xf9401fa1
.word 0xd63f0040
.word 0xf94053a0
.word 0x910123a0
.word 0xf90053a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf90057a0
.word 0xf94017a0
.word 0xf9400000
bl _p_54
.word 0xaa0003e1
.word 0xf94053a0
.word 0xf94057af
.word 0xd63f0020
.word 0x53001c00
.word 0x35fffa00
.word 0x94000002
.word 0x14000011
.word 0xf9004bbe
.word 0x910123a0
.word 0xf90053a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf90057a0
.word 0xf94017a0
.word 0xf9400000
bl _p_55
.word 0xaa0003e1
.word 0xf94053a0
.word 0xf94057af
.word 0xd63f0020
.word 0xf9404bbe
.word 0xd61f03c0
.word 0x94000002
.word 0x14000008
.word 0xf9004fbe
.word 0x394183a0
.word 0x34000060
.word 0xf94037a0
bl _p_15
.word 0xf9404fbe
.word 0xd61f03c0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_1d:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Subscribe___0_object_System_Action_1___0
PubSub_Hub_Subscribe___0_object_System_Action_1___0:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9001baf
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9401ba0
bl _p_56
.word 0xaa0003f7
.word 0xb98002e0
.word 0xf9001fbf
.word 0x390103bf
.word 0xf90027bf
.word 0x390103bf
.word 0xf9400fa0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf90027a1
.word 0x910103a1
bl _p_1
.word 0xf9400fa0
.word 0xf9400c00
.word 0xf9003ba0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #80]
bl _p_3
.word 0xf90043a0
bl PubSub_Hub_Handler__ctor
.word 0xf94043a0
.word 0xaa0003f7
.word 0xaa1703e2
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf940005e
bl PubSub_Hub_Handler_set_Action_object

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #88]
bl _p_16
.word 0xf9003fa0
.word 0xf94013a1
bl _p_17
.word 0xf9403fa1
.word 0xaa1703e0
.word 0xf94002fe
bl PubSub_Hub_Handler_set_Sender_System_WeakReference
.word 0xf9401ba0
bl _p_57
.word 0xaa0003e1
.word 0xaa1703e0
.word 0xf94002fe
bl PubSub_Hub_Handler_set_Type_System_Type

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_8
.word 0xf9400fa0
.word 0xf9400000
bl _p_58
.word 0xaa0003e2
.word 0xf9403ba0
.word 0xaa1703e1
.word 0xd63f0040
.word 0x94000002
.word 0x14000008
.word 0xf90033be
.word 0x394103a0
.word 0x34000060
.word 0xf94027a0
bl _p_15
.word 0xf94033be
.word 0xd61f03c0
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_1e:
.text
	.align 4
	.no_dead_strip PubSub_Hub_Unsubscribe___0_object_System_Action_1___0
PubSub_Hub_Unsubscribe___0_object_System_Action_1___0:
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001bba
.word 0xf90027af
.word 0xf9001fa0
.word 0xf90023a1
.word 0xaa0203fa
.word 0xf94027a0
bl _p_59
.word 0xaa0003f8
.word 0xb9800300
.word 0xf90037bf
.word 0x3901c3bf
.word 0xf9003fbf
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0xd2800017
.word 0xd2800016
.word 0xf94027a0
bl _p_60
bl _p_16
.word 0xf9005fa0
.word 0xf94027a0
bl _p_61
.word 0xaa0003e1
.word 0xf9405fa0
.word 0xf9005ba0
.word 0xd63f0020
.word 0xf9405ba0
.word 0xaa0003f5
.word 0xaa1503e1
.word 0xf9400700
.word 0x8b000022
.word 0xf94023a0
.word 0xf9000040
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400b00
.word 0x8b0002a0
.word 0xf900001a
.word 0x910062a0
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0x3901c3bf
.word 0xf9401fa0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9003fa1
.word 0x9101c3a1
bl _p_1
.word 0xf9401fa0
bl _p_2
.word 0xf9401fa0
.word 0xf9400c1a
.word 0xb5000517
.word 0xeb1f02bf
.word 0x10000011
.word 0x540019e0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #32]
bl _p_3
.word 0xf9001015
.word 0xf9005fa0
.word 0x91008000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94027a0
bl _p_62
.word 0xaa0003e1
.word 0xf9405fa0
.word 0xf9001401
.word 0xf9005ba0
.word 0xf94027a0
bl _p_63
.word 0xaa0003e1
.word 0xf9405ba0
.word 0xf9001c01

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xaa0003f7

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf9005ba0
.word 0xf9401fa0
.word 0xf9400000
bl _p_64
.word 0xaa0003e2
.word 0xf9405baf
.word 0xaa1a03e0
.word 0xaa1703e1
.word 0xd63f0040
.word 0xaa0003fa
.word 0xf9400b00
.word 0x8b0002a0
.word 0xf9400000
.word 0xb40006c0
.word 0xb5000516
.word 0xeb1f02bf
.word 0x10000011
.word 0x540012c0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #32]
bl _p_3
.word 0xf9001015
.word 0xf9005fa0
.word 0x91008000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94027a0
bl _p_65
.word 0xaa0003e1
.word 0xf9405fa0
.word 0xf9001401
.word 0xf9005ba0
.word 0xf94027a0
bl _p_66
.word 0xaa0003e1
.word 0xf9405ba0
.word 0xf9001c01

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xaa0003f6

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xf9005ba0
.word 0xf9401fa0
.word 0xf9400000
bl _p_64
.word 0xaa0003e2
.word 0xf9405baf
.word 0xaa1a03e0
.word 0xaa1603e1
.word 0xd63f0040
.word 0xaa0003fa

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9005fa0
.word 0xf9401fa0
.word 0xf9400000
bl _p_67
.word 0xaa0003e1
.word 0xf9405faf
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xf9005ba0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_8
.word 0xf9401fa0
.word 0xf9400000
bl _p_68
.word 0xaa0003e1
.word 0xf9405ba0
.word 0x910143a8
.word 0xd63f0020
.word 0x1400001d
.word 0x910143a0
.word 0xf9005fa0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf90063a0
.word 0xf9401fa0
.word 0xf9400000
bl _p_69
.word 0xaa0003e1
.word 0xf9405fa0
.word 0xf94063af
.word 0xd63f0020
.word 0xaa0003fa
.word 0xf9401fa0
.word 0xf9400c00
.word 0xf9005ba0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_8
.word 0xf9401fa0
.word 0xf9400000
bl _p_70
.word 0xaa0003e2
.word 0xf9405ba0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x910143a0
.word 0xf9005ba0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf9005fa0
.word 0xf9401fa0
.word 0xf9400000
bl _p_71
.word 0xaa0003e1
.word 0xf9405ba0
.word 0xf9405faf
.word 0xd63f0020
.word 0x53001c00
.word 0x35fffac0
.word 0x94000002
.word 0x14000011
.word 0xf9004fbe
.word 0x910143a0
.word 0xf9005ba0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf9005fa0
.word 0xf9401fa0
.word 0xf9400000
bl _p_72
.word 0xaa0003e1
.word 0xf9405ba0
.word 0xf9405faf
.word 0xd63f0020
.word 0xf9404fbe
.word 0xd61f03c0
.word 0x94000002
.word 0x14000008
.word 0xf90053be
.word 0x3941c3a0
.word 0x34000060
.word 0xf9403fa0
bl _p_15
.word 0xf94053be
.word 0xd61f03c0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xf9401bba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd28069a0
.word 0xaa1103e1
bl _p_21

Lme_1f:
.text
	.align 4
	.no_dead_strip PubSub_Hub__Publishb__1___0_PubSub_Hub_Handler
PubSub_Hub__Publishb__1___0_PubSub_Hub_Handler:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0
.word 0xf9400fa0
bl _p_73
.word 0xf90013a0
.word 0xf94013a0
.word 0xb9800000
.word 0xf90013bf
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf940003e
bl PubSub_Hub_Handler_get_Type
.word 0xf9001ba0
.word 0xf9400fa0
bl _p_74
.word 0xaa0003e1
.word 0xf9401ba2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9411450
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_20:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Exists___0_object
PubSub_PubSubExtensions_Exists___0_object:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013af
.word 0xaa0003fa
.word 0xf94013a0
bl _p_75
.word 0xaa0003f9
.word 0xb9800320
.word 0xf90023bf
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0xf9001fa0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf9400c00
.word 0xf90033a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #64]
bl _p_8
.word 0xf94013a0
.word 0xf9400000
bl _p_76
.word 0xaa0003e1
.word 0xf94033a0
.word 0x9100a3a8
.word 0xd63f0020
.word 0x14000034
.word 0x9100a3a0
.word 0xf90037a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf9003ba0
.word 0xf94013a0
.word 0xf9400000
bl _p_77
.word 0xaa0003e1
.word 0xf94037a0
.word 0xf9403baf
.word 0xd63f0020
.word 0xaa0003f9
.word 0xaa1903e1
.word 0xaa0103e0
.word 0xf940003e
bl PubSub_Hub_Handler_get_Sender
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9401c30
.word 0xd63f0200
.word 0xf90033a0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9401c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94033a0
bl _p_30
.word 0x53001c00
.word 0x340001c0
.word 0xf94013a0
bl _p_78
.word 0xf90033a0
.word 0xaa1903e0
.word 0xf940033e
bl PubSub_Hub_Handler_get_Type
.word 0xaa0003e1
.word 0xf94033a0
.word 0xeb01001f
.word 0x54000081
.word 0xd280003a
.word 0x94000013
.word 0x14000024
.word 0x9100a3a0
.word 0xf90033a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf90037a0
.word 0xf94013a0
.word 0xf9400000
bl _p_79
.word 0xaa0003e1
.word 0xf94033a0
.word 0xf94037af
.word 0xd63f0020
.word 0x53001c00
.word 0x35fff7e0
.word 0x94000002
.word 0x14000011
.word 0xf9002fbe
.word 0x9100a3a0
.word 0xf90033a0

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #72]
.word 0xf90037a0
.word 0xf94013a0
.word 0xf9400000
bl _p_80
.word 0xaa0003e1
.word 0xf94033a0
.word 0xf94037af
.word 0xd63f0020
.word 0xf9402fbe
.word 0xd61f03c0
.word 0xd2800000
.word 0x14000002
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Publish___0_object
PubSub_PubSubExtensions_Publish___0_object:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90017af
.word 0xf90013a0
.word 0xf94017a0
bl _p_81
.word 0xaa0003f9
.word 0xb9800320
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f8

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf90023a0
.word 0xb9801b20
.word 0x8b000300
.word 0xf9400721
.word 0xf9400b22
.word 0xd63f0040
.word 0xf94017a0
bl _p_82
.word 0xaa0003e1
.word 0xf94023a0
.word 0xf9001fa1
.word 0xf940001e
.word 0xf9001ba0
.word 0xf94017a0
bl _p_83
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9401faf
.word 0xf94013a1
.word 0xb9801b24
.word 0xaa1803e2
.word 0x8b040042
.word 0xd63f0060
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Publish___0_object___0
PubSub_PubSubExtensions_Publish___0_object___0:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf90017af
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf94017a0
bl _p_84
.word 0xaa0003f9
.word 0xb9800320
.word 0xf9001bbf

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf9002ba0
.word 0xf94017a0
bl _p_85
.word 0xaa0003e1
.word 0xf9402ba0
.word 0xf90027a1
.word 0xf940001e
.word 0xf90023a0
.word 0xf94017a0
bl _p_86
.word 0xaa0003e3
.word 0xf94023a0
.word 0xf94027af
.word 0xf9400fa1
.word 0xf9401ba2
.word 0xf94013a2
.word 0xd63f0060
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_23:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Subscribe___0_object_System_Action_1___0
PubSub_PubSubExtensions_Subscribe___0_object_System_Action_1___0:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf94013a0
bl _p_87
.word 0xf90017a0
.word 0xf94017a0
.word 0xb9800000
.word 0xf90017bf

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf90023a0
.word 0xf94013a0
bl _p_88
.word 0xaa0003e1
.word 0xf94023a0
.word 0xf9001fa1
.word 0xf940001e
.word 0xf9001ba0
.word 0xf94013a0
bl _p_89
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9401faf
.word 0xf9400ba1
.word 0xf9400fa2
.word 0xd63f0060
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_24:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Unsubscribe___0_object
PubSub_PubSubExtensions_Unsubscribe___0_object:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0
.word 0xf9400fa0
bl _p_90
.word 0xf90013a0
.word 0xf94013a0
.word 0xb9800000
.word 0xf90013bf

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf90023a0
.word 0xf9400fa0
bl _p_91
.word 0xaa0003e1
.word 0xf94023a0
.word 0xf9001fa1
.word 0xf940001e
.word 0xf9001ba0
.word 0xf9400fa0
bl _p_92
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9401faf
.word 0xf9400ba1
.word 0xd2800002
.word 0xd63f0060
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_25:
.text
	.align 4
	.no_dead_strip PubSub_PubSubExtensions_Unsubscribe___0_object_System_Action_1___0
PubSub_PubSubExtensions_Unsubscribe___0_object_System_Action_1___0:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf94013a0
bl _p_93
.word 0xf90017a0
.word 0xf94017a0
.word 0xb9800000
.word 0xf90017bf

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xf9400000
.word 0xf90023a0
.word 0xf94013a0
bl _p_94
.word 0xaa0003e1
.word 0xf94023a0
.word 0xf9001fa1
.word 0xf940001e
.word 0xf9001ba0
.word 0xf94013a0
bl _p_95
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9401faf
.word 0xf9400ba1
.word 0xf9400fa2
.word 0xd63f0060
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_26:
.text
	.align 4
	.no_dead_strip PubSub_Hub__c__DisplayClassf_1__0__ctor
PubSub_Hub__c__DisplayClassf_1__0__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_96
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xb9800000
.word 0xf9000fbf
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_27:
.text
	.align 4
	.no_dead_strip PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__b_PubSub_Hub_Handler
PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__b_PubSub_Hub_Handler:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400000
bl _p_97
.word 0xaa0003f9
.word 0xb9800320
.word 0xf90017bf
.word 0xaa1a03e0
.word 0xf940035e
bl PubSub_Hub_Handler_get_Sender
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9400721
.word 0x8b010000
.word 0xf9400001
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c00
.word 0x340001a0
.word 0xaa1a03e0
.word 0xf940035e
bl PubSub_Hub_Handler_get_Type
.word 0xf9001ba0
.word 0xf94013a0
.word 0xf9400000
bl _p_98
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_28:
.text
	.align 4
	.no_dead_strip PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__c_PubSub_Hub_Handler
PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__c_PubSub_Hub_Handler:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf9400fa0
.word 0xf9400000
bl _p_99
.word 0xaa0003f9
.word 0xb9800320
.word 0xf90017bf
.word 0xf94013a0
.word 0xf94013a1
.word 0xf940003e
bl PubSub_Hub_Handler_get_Action
.word 0xaa0003e2
.word 0xf9400fa0
.word 0xf9400721
.word 0x8b010000
.word 0xf9400001
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c00
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_29:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_PubSub_Hub_Handler_bool_invoke_TResult_T_PubSub_Hub_Handler
wrapper_delegate_invoke_System_Func_2_PubSub_Hub_Handler_bool_invoke_TResult_T_PubSub_Hub_Handler:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #192]
.word 0xb9400000
.word 0x350003a0
.word 0x14000001
.word 0xf9402f38
.word 0xaa1803e0
.word 0xb5000280
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9400b22
.word 0xaa1803e0
.word 0xf94013a1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000005
.word 0xf9400b21
.word 0xf94013a0
.word 0xd63f0020
.word 0x53001c00
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_100
.word 0xaa1803e0
.word 0xf94013a1
.word 0xf9400f10
.word 0xd63f0200
.word 0x17ffffe9
bl _p_101
.word 0xaa0003f8
.word 0xb5fffee0
.word 0x17ffffe2

Lme_2e:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T
System_Array_InternalArray__IEnumerable_GetEnumerator_T:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9401fa0
bl _p_102
.word 0xf90023a0
.word 0xf94023a0
.word 0xb9800000
.word 0xf90023bf
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0x9100a3a0
.word 0xf9002ba0
.word 0xf9401fa0
bl _p_103
.word 0xf9002fa0
.word 0xf9401fa0
bl _p_104
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402faf
.word 0xf9400ba1
.word 0xd63f0040
.word 0xf94017a0
.word 0xf9000fa0
.word 0xf9401ba0
.word 0xf90013a0
.word 0xf9401fa0
bl _p_103
bl _p_16
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_2f:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_Count
System_Array_InternalArray__ICollection_get_Count:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_30:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_IsReadOnly
System_Array_InternalArray__ICollection_get_IsReadOnly:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_31:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Clear
System_Array_InternalArray__ICollection_Clear:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28dec00
.word 0xf2a00020
bl _p_105
.word 0xaa0003e1
.word 0xd28074e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_100
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Add_T_T
System_Array_InternalArray__ICollection_Add_T_T:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf94013a0
bl _p_106
.word 0xf90017a0
.word 0xf94017a0
.word 0xb9800000
.word 0xf90017bf
.word 0xd28df200
.word 0xf2a00020
bl _p_105
.word 0xaa0003e1
.word 0xd28074e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_100
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_33:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Remove_T_T
System_Array_InternalArray__ICollection_Remove_T_T:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf94013a0
bl _p_107
.word 0xf90017a0
.word 0xf94017a0
.word 0xb9800000
.word 0xf90017bf
.word 0xd28df200
.word 0xf2a00020
bl _p_105
.word 0xaa0003e1
.word 0xd28074e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_100
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Contains_T_T
System_Array_InternalArray__ICollection_Contains_T_T:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf9001baf
.word 0xaa0003fa
.word 0xf90017a1
.word 0xf9401ba0
bl _p_108
.word 0xaa0003f9
.word 0xb9800320
.word 0xf9001fbf
.word 0xf90023bf
.word 0xf9400340
.word 0x3940a800
.word 0xd280003e
.word 0x6b1e001f
.word 0x5400054c
.word 0xb9801b59
.word 0xd2800018
.word 0x1400001f
.word 0x910103a0
.word 0xf9002ba0
.word 0xf9401ba0
bl _p_109
.word 0xf9002fa0
.word 0xf9401ba0
bl _p_110
.word 0xaa0003e3
.word 0xf9402ba2
.word 0xf9402faf
.word 0xaa1a03e0
.word 0xaa1803e1
.word 0xd63f0060
.word 0xf94017a0
.word 0xb50000a0
.word 0xf94023a0
.word 0xb50001a0
.word 0xd2800020
.word 0x1400000f
.word 0xf94023a1
.word 0xf94017a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000060
.word 0xd2800020
.word 0x14000005
.word 0x11000718
.word 0x6b19031f
.word 0x54fffc2b
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd28df980
.word 0xf2a00020
bl _p_105
bl _p_111
.word 0xaa0003e1
.word 0xd2807700
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_100

Lme_35:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_CopyTo_T_T___int
System_Array_InternalArray__ICollection_CopyTo_T_T___int:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90027af
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xf94027a0
bl _p_112
.word 0xaa0003f7
.word 0xb98002e0
.word 0xf9002bbf
.word 0xb4000d59
.word 0xf9400300
.word 0x3940a800
.word 0xd280003e
.word 0x6b1e001f
.word 0x540007cc
.word 0xaa1a03f7
.word 0xaa1803f6
.word 0xf9400b15
.word 0xeb1f02bf
.word 0x54000060
.word 0xb98002b5
.word 0x14000002
.word 0xb9801ad5
.word 0xb1502f6
.word 0xf9400b37
.word 0xeb1f02ff
.word 0x54000060
.word 0xb98006f7
.word 0x14000002
.word 0xd2800017
.word 0xaa1903f5
.word 0xf9400b34
.word 0xeb1f029f
.word 0x54000060
.word 0xb9800294
.word 0x14000002
.word 0xb9801ab4
.word 0xb1402e0
.word 0x6b0002df
.word 0x540005cc
.word 0xf9400320
.word 0x3940a800
.word 0xd280003e
.word 0x6b1e001f
.word 0x5400062c
.word 0x6b1f035f
.word 0x5400070b
.word 0xaa1803f7
.word 0xf9400b16
.word 0xeb1f02df
.word 0x54000060
.word 0xb98006d6
.word 0x14000002
.word 0xd2800016
.word 0xaa1903f5
.word 0xaa1a03f9
.word 0xaa1803fa
.word 0xf9400b14
.word 0xeb1f029f
.word 0x54000060
.word 0xb9800298
.word 0x14000002
.word 0xb9801b58
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xaa1503e2
.word 0xaa1903e3
.word 0xaa1803e4
bl _p_113
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd28df980
.word 0xf2a00020
bl _p_105
bl _p_111
.word 0xaa0003e1
.word 0xd2807700
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_100
.word 0xd28e0480
.word 0xf2a00020
bl _p_105
.word 0xaa0003e1
.word 0xd28069a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_100
.word 0xd28df980
.word 0xf2a00020
bl _p_105
bl _p_111
.word 0xaa0003e1
.word 0xd2807700
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_100
.word 0xd280f5e0
bl _p_105
.word 0xf90033a0
.word 0xd28e1ce0
.word 0xf2a00020
bl _p_105
bl _p_111
.word 0xaa0003e2
.word 0xf94033a1
.word 0xd28069e0
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_100
.word 0xd281c1c0
bl _p_105
.word 0xaa0003e1
.word 0xd28069c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_100

Lme_36:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_PubSub_Hub_Handler_invoke_bool_T_PubSub_Hub_Handler
wrapper_delegate_invoke_System_Predicate_1_PubSub_Hub_Handler_invoke_bool_T_PubSub_Hub_Handler:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #192]
.word 0xb9400000
.word 0x350003a0
.word 0x14000001
.word 0xf9402f38
.word 0xaa1803e0
.word 0xb5000280
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000e0
.word 0xf9400b22
.word 0xaa1803e0
.word 0xf94013a1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000005
.word 0xf9400b21
.word 0xf94013a0
.word 0xd63f0020
.word 0x53001c00
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_100
.word 0xaa1803e0
.word 0xf94013a1
.word 0xf9400f10
.word 0xd63f0200
.word 0x17ffffe9
bl _p_101
.word 0xaa0003f8
.word 0xb5fffee0
.word 0x17ffffe2

Lme_37:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_PubSub_Hub_Handler_invoke_void_T_PubSub_Hub_Handler
wrapper_delegate_invoke_System_Action_1_PubSub_Hub_Handler_invoke_void_T_PubSub_Hub_Handler:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #192]
.word 0xb9400000
.word 0x35000360
.word 0x14000001
.word 0xf9402f38
.word 0xaa1803e0
.word 0xb5000240
.word 0xf9401338
.word 0xaa1803e0
.word 0xb40000c0
.word 0xf9400b22
.word 0xaa1803e0
.word 0xf94013a1
.word 0xd63f0040
.word 0x14000004
.word 0xf9400b21
.word 0xf94013a0
.word 0xd63f0020
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xaa1803e0
bl _p_100
.word 0xaa1803e0
.word 0xf94013a1
.word 0xf9400f10
.word 0xd63f0200
.word 0x17ffffeb
bl _p_101
.word 0xaa0003f8
.word 0xb5fffee0
.word 0x17ffffe4

Lme_38:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_PubSub_Hub_Handler_invoke_int_T_T_PubSub_Hub_Handler_PubSub_Hub_Handler
wrapper_delegate_invoke_System_Comparison_1_PubSub_Hub_Handler_invoke_int_T_T_PubSub_Hub_Handler_PubSub_Hub_Handler:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xaa0003f8
.word 0xf90013a1
.word 0xf90017a2

adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x0, [x16, #192]
.word 0xb9400000
.word 0x35000420
.word 0x14000001
.word 0xf9402f17
.word 0xaa1703e0
.word 0xb50002c0
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000100
.word 0xf9400b03
.word 0xaa1703e0
.word 0xf94013a1
.word 0xf94017a2
.word 0xd63f0060
.word 0x93407c00
.word 0x14000006
.word 0xf9400b02
.word 0xf94013a0
.word 0xf94017a1
.word 0xd63f0040
.word 0x93407c00
.word 0xa94163b7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_100
.word 0xaa1703e0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9400ef0
.word 0xd63f0200
.word 0x93407c00
.word 0x17ffffe5
bl _p_101
.word 0xaa0003f7
.word 0xb5fffea0
.word 0x17ffffde

Lme_39:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl PubSub_Hub_Publish_T_object_T
bl PubSub_Hub_Subscribe_T_object_System_Action_1_T
bl PubSub_Hub_Unsubscribe_object
bl PubSub_Hub_Unsubscribe_T_object_System_Action_1_T
bl PubSub_Hub_Cleanup
bl PubSub_Hub__ctor
bl PubSub_Hub__Publishb__1_T_PubSub_Hub_Handler
bl PubSub_Hub__Cleanupb__11_PubSub_Hub_Handler
bl PubSub_Hub_Handler_get_Action
bl PubSub_Hub_Handler_set_Action_object
bl PubSub_Hub_Handler_get_Sender
bl PubSub_Hub_Handler_set_Sender_System_WeakReference
bl PubSub_Hub_Handler_get_Type
bl PubSub_Hub_Handler_set_Type_System_Type
bl PubSub_Hub_Handler__ctor
bl PubSub_PubSubExtensions_Exists_T_object
bl PubSub_PubSubExtensions_Publish_T_object
bl PubSub_PubSubExtensions_Publish_T_object_T
bl PubSub_PubSubExtensions_Subscribe_T_object_System_Action_1_T
bl PubSub_PubSubExtensions_Unsubscribe_object
bl PubSub_PubSubExtensions_Unsubscribe_T_object
bl PubSub_PubSubExtensions_Unsubscribe_T_object_System_Action_1_T
bl PubSub_PubSubExtensions__cctor
bl PubSub_Hub__c__DisplayClass8__ctor
bl PubSub_Hub__c__DisplayClass8__Unsubscribeb__6_PubSub_Hub_Handler
bl PubSub_Hub__c__DisplayClassf_1__ctor
bl PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__b_PubSub_Hub_Handler
bl PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__c_PubSub_Hub_Handler
bl method_addresses
bl PubSub_Hub_Publish___0_object___0
bl PubSub_Hub_Subscribe___0_object_System_Action_1___0
bl PubSub_Hub_Unsubscribe___0_object_System_Action_1___0
bl PubSub_Hub__Publishb__1___0_PubSub_Hub_Handler
bl PubSub_PubSubExtensions_Exists___0_object
bl PubSub_PubSubExtensions_Publish___0_object
bl PubSub_PubSubExtensions_Publish___0_object___0
bl PubSub_PubSubExtensions_Subscribe___0_object_System_Action_1___0
bl PubSub_PubSubExtensions_Unsubscribe___0_object
bl PubSub_PubSubExtensions_Unsubscribe___0_object_System_Action_1___0
bl PubSub_Hub__c__DisplayClassf_1__0__ctor
bl PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__b_PubSub_Hub_Handler
bl PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__c_PubSub_Hub_Handler
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl wrapper_delegate_invoke_System_Func_2_PubSub_Hub_Handler_bool_invoke_TResult_T_PubSub_Hub_Handler
bl System_Array_InternalArray__IEnumerable_GetEnumerator_T
bl System_Array_InternalArray__ICollection_get_Count
bl System_Array_InternalArray__ICollection_get_IsReadOnly
bl System_Array_InternalArray__ICollection_Clear
bl System_Array_InternalArray__ICollection_Add_T_T
bl System_Array_InternalArray__ICollection_Remove_T_T
bl System_Array_InternalArray__ICollection_Contains_T_T
bl System_Array_InternalArray__ICollection_CopyTo_T_T___int
bl wrapper_delegate_invoke_System_Predicate_1_PubSub_Hub_Handler_invoke_bool_T_PubSub_Hub_Handler
bl wrapper_delegate_invoke_System_Action_1_PubSub_Hub_Handler_invoke_void_T_PubSub_Hub_Handler
bl wrapper_delegate_invoke_System_Comparison_1_PubSub_Hub_Handler_invoke_int_T_T_PubSub_Hub_Handler_PubSub_Hub_Handler
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
method_info_offsets:

	.long 58,10,6,2
	.short 0, 10, 20, 34, 45, 61
	.byte 1,10,5,12,14,14,5,2,2,2,69,2,2,2,2,2,8,4,4,4,103,4,4,5,2,2,2,2,255,255,255,255
	.byte 132,126,128,136,5,14,2,8,4,4,4,4,4,128,187,2,255,255,255,255,67,0,0,0,128,191,3,2,2,128,200,2
	.byte 2,2,2,2,3,3
.section __TEXT, __const
	.align 3
extra_method_table:

	.long 37,0,0,0,0,0,0,0
	.long 0,0,504,48,0,360,37,0
	.long 275,32,38,670,56,0,0,0
	.long 0,0,0,0,258,31,39,309
	.long 34,0,0,0,0,561,52,0
	.long 0,0,0,0,0,0,224,29
	.long 0,0,0,0,241,30,0,406
	.long 39,0,424,40,0,326,35,0
	.long 0,0,0,292,33,37,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,652,55,42,0,0,0
	.long 343,36,40,512,50,0,625,54
	.long 0,460,46,0,529,51,0,0
	.long 0,0,0,0,0,0,0,0
	.long 377,38,41,442,41,0,485,47
	.long 0,508,49,0,593,53,0,688
	.long 57,0
.section __TEXT, __const
	.align 3
extra_method_info_offsets:

	.long 29,29,224,30,241,31,258,32
	.long 275,33,292,34,309,35,326,36
	.long 343,37,360,38,377,39,406,40
	.long 424,41,442,42,0,43,0,44
	.long 0,45,0,46,460,47,485,48
	.long 504,49,508,50,512,51,529,52
	.long 561,53,593,54,625,55,652,56
	.long 670,57,688
.section __TEXT, __const
	.align 3
class_name_table:

	.short 11, 1, 14, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 2, 11, 3
	.short 12, 4, 13, 5, 0, 6, 0
.section __TEXT, __const
	.align 3
got_info_offsets:

	.long 25,10,3,2
	.short 0, 11, 22
	.byte 130,186,2,1,1,1,6,8,12,12,6,130,241,3,5,3,2,2,9,4,2,2,131,26,5,8,4,3
.section __TEXT, __const
	.align 3
ex_info_offsets:

	.long 58,10,6,2
	.short 0, 11, 22, 38, 49, 65
	.byte 143,19,47,36,24,49,14,3,26,4,4,143,230,4,4,4,4,4,37,26,27,27,144,115,26,27,4,4,4,27,27,255
	.byte 255,255,239,22,145,5,145,57,40,53,30,40,30,30,30,30,30,146,145,31,255,255,255,237,80,0,0,0,146,207,4,32
	.byte 4,146,251,4,31,31,32,32,4,4
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 19,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,153,18,154,17,17,12,31,0,68,14,128,1,157,16,158,15
	.byte 68,13,29,68,152,14,24,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,151,16,152,15,68,153,14,154,13,27
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,149,20,150,19,68,151,18,152,17,68,154,16,18,12,31,0,68
	.byte 14,96,157,12,158,11,68,13,29,68,153,10,154,9,16,12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2,13
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,13,12,31,0,68,14,32,157,4,158,3,68,13,29,18,12,31,0,68
	.byte 14,112,157,14,158,13,68,13,29,68,153,12,154,11,13,12,31,0,68,14,64,157,8,158,7,68,13,29,16,12,31,0
	.byte 68,14,48,157,6,158,5,68,13,29,68,154,4,22,12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,152,24,153
	.byte 23,68,154,22,17,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,151,16,27,12,31,0,68,14,208,1,157,26
	.byte 158,25,68,13,29,68,149,24,150,23,68,151,22,152,21,68,154,20,19,12,31,0,68,14,128,1,157,16,158,15,68,13
	.byte 29,68,153,14,154,13,18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,16,12,31,0,68,14,96
	.byte 157,12,158,11,68,13,29,68,153,10,13,12,31,0,68,14,80,157,10,158,9,68,13,29,18,12,31,0,68,14,64,157
	.byte 8,158,7,68,13,29,68,153,6,154,5,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,18,12,31,0
	.byte 68,14,48,157,6,158,5,68,13,29,68,152,4,153,3,13,12,31,0,68,14,96,157,12,158,11,68,13,29,21,12,31
	.byte 0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8,31,12,31,0,68,14,112,157,14,158,13,68,13
	.byte 29,68,148,12,149,11,68,150,10,151,9,68,152,8,153,7,68,154,6,18,12,31,0,68,14,48,157,6,158,5,68,13
	.byte 29,68,151,4,152,3
.section __TEXT, __const
	.align 3
class_info_offsets:

	.long 6,10,1,2
	.short 0
	.byte 147,137,7,23,23,24,23

.text
	.align 4
plt:
_mono_aot_PubSub_plt:
	.no_dead_strip plt_System_Threading_Monitor_Enter_object_bool_
plt_System_Threading_Monitor_Enter_object_bool_:
_p_1:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #208]
br x16
.word 815
	.no_dead_strip plt_PubSub_Hub_Cleanup
plt_PubSub_Hub_Cleanup:
_p_2:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #216]
br x16
.word 820
	.no_dead_strip plt__jit_icall_mono_object_new_fast
plt__jit_icall_mono_object_new_fast:
_p_3:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #224]
br x16
.word 822
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_4:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #232]
br x16
.word 872
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_5:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #240]
br x16
.word 894
	.no_dead_strip plt_System_Linq_Enumerable_Where_PubSub_Hub_Handler_System_Collections_Generic_IEnumerable_1_PubSub_Hub_Handler_System_Func_2_PubSub_Hub_Handler_bool
plt_System_Linq_Enumerable_Where_PubSub_Hub_Handler_System_Collections_Generic_IEnumerable_1_PubSub_Hub_Handler_System_Func_2_PubSub_Hub_Handler_bool:
_p_6:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #248]
br x16
.word 916
	.no_dead_strip plt_System_Linq_Enumerable_ToList_PubSub_Hub_Handler_System_Collections_Generic_IEnumerable_1_PubSub_Hub_Handler
plt_System_Linq_Enumerable_ToList_PubSub_Hub_Handler_System_Collections_Generic_IEnumerable_1_PubSub_Hub_Handler:
_p_7:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #256]
br x16
.word 928
	.no_dead_strip plt__generic_class_init
plt__generic_class_init:
_p_8:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #264]
br x16
.word 940
	.no_dead_strip plt_System_Collections_Generic_List_1_PubSub_Hub_Handler_GetEnumerator
plt_System_Collections_Generic_List_1_PubSub_Hub_Handler_GetEnumerator:
_p_9:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #272]
br x16
.word 941
	.no_dead_strip plt_System_Collections_Generic_List_1_Enumerator_PubSub_Hub_Handler_get_Current
plt_System_Collections_Generic_List_1_Enumerator_PubSub_Hub_Handler_get_Current:
_p_10:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #280]
br x16
.word 952
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_11:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #288]
br x16
.word 972
	.no_dead_strip plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr
plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr:
_p_12:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #296]
br x16
.word 980
	.no_dead_strip plt_System_Collections_Generic_List_1_Enumerator_PubSub_Hub_Handler_MoveNext
plt_System_Collections_Generic_List_1_Enumerator_PubSub_Hub_Handler_MoveNext:
_p_13:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #304]
br x16
.word 988
	.no_dead_strip plt_System_Collections_Generic_List_1_Enumerator_PubSub_Hub_Handler_Dispose
plt_System_Collections_Generic_List_1_Enumerator_PubSub_Hub_Handler_Dispose:
_p_14:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #312]
br x16
.word 999
	.no_dead_strip plt_System_Threading_Monitor_Exit_object
plt_System_Threading_Monitor_Exit_object:
_p_15:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #320]
br x16
.word 1019
	.no_dead_strip plt__jit_icall_mono_object_new_specific
plt__jit_icall_mono_object_new_specific:
_p_16:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #328]
br x16
.word 1024
	.no_dead_strip plt_System_WeakReference__ctor_object
plt_System_WeakReference__ctor_object:
_p_17:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #336]
br x16
.word 1051
	.no_dead_strip plt__rgctx_fetch_3
plt__rgctx_fetch_3:
_p_18:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #344]
br x16
.word 1083
	.no_dead_strip plt_System_Collections_Generic_List_1_PubSub_Hub_Handler_Add_PubSub_Hub_Handler
plt_System_Collections_Generic_List_1_PubSub_Hub_Handler_Add_PubSub_Hub_Handler:
_p_19:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #352]
br x16
.word 1091
	.no_dead_strip plt_System_Collections_Generic_List_1_PubSub_Hub_Handler_Remove_PubSub_Hub_Handler
plt_System_Collections_Generic_List_1_PubSub_Hub_Handler_Remove_PubSub_Hub_Handler:
_p_20:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #360]
br x16
.word 1111
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_21:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #368]
br x16
.word 1122
	.no_dead_strip plt__rgctx_fetch_4
plt__rgctx_fetch_4:
_p_22:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #376]
br x16
.word 1191
	.no_dead_strip plt_PubSub_Hub__c__DisplayClassf_1_T__ctor
plt_PubSub_Hub__c__DisplayClassf_1_T__ctor:
_p_23:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #384]
br x16
.word 1199
	.no_dead_strip plt__rgctx_fetch_5
plt__rgctx_fetch_5:
_p_24:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #392]
br x16
.word 1218
	.no_dead_strip plt__rgctx_fetch_6
plt__rgctx_fetch_6:
_p_25:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #400]
br x16
.word 1241
	.no_dead_strip plt__rgctx_fetch_7
plt__rgctx_fetch_7:
_p_26:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #408]
br x16
.word 1264
	.no_dead_strip plt__rgctx_fetch_8
plt__rgctx_fetch_8:
_p_27:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #416]
br x16
.word 1287
	.no_dead_strip plt__jit_icall_mono_object_new_ptrfree
plt__jit_icall_mono_object_new_ptrfree:
_p_28:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #424]
br x16
.word 1310
	.no_dead_strip plt__rgctx_fetch_9
plt__rgctx_fetch_9:
_p_29:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #432]
br x16
.word 1363
	.no_dead_strip plt_string_op_Equality_string_string
plt_string_op_Equality_string_string:
_p_30:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #440]
br x16
.word 1371
	.no_dead_strip plt__rgctx_fetch_10
plt__rgctx_fetch_10:
_p_31:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #448]
br x16
.word 1403
	.no_dead_strip plt__rgctx_fetch_11
plt__rgctx_fetch_11:
_p_32:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #456]
br x16
.word 1438
	.no_dead_strip plt_PubSub_Hub_Publish_T_object_T
plt_PubSub_Hub_Publish_T_object_T:
_p_33:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #464]
br x16
.word 1460
	.no_dead_strip plt__rgctx_fetch_12
plt__rgctx_fetch_12:
_p_34:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #472]
br x16
.word 1505
	.no_dead_strip plt_PubSub_Hub_Publish_T_object_T_0
plt_PubSub_Hub_Publish_T_object_T_0:
_p_35:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #480]
br x16
.word 1527
	.no_dead_strip plt__rgctx_fetch_13
plt__rgctx_fetch_13:
_p_36:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #488]
br x16
.word 1572
	.no_dead_strip plt_PubSub_Hub_Subscribe_T_object_System_Action_1_T
plt_PubSub_Hub_Subscribe_T_object_System_Action_1_T:
_p_37:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #496]
br x16
.word 1594
	.no_dead_strip plt_PubSub_Hub_Unsubscribe_object
plt_PubSub_Hub_Unsubscribe_object:
_p_38:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #504]
br x16
.word 1612
	.no_dead_strip plt__rgctx_fetch_14
plt__rgctx_fetch_14:
_p_39:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #512]
br x16
.word 1641
	.no_dead_strip plt_PubSub_Hub_Unsubscribe_T_object_System_Action_1_T
plt_PubSub_Hub_Unsubscribe_T_object_System_Action_1_T:
_p_40:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #520]
br x16
.word 1663
	.no_dead_strip plt__rgctx_fetch_15
plt__rgctx_fetch_15:
_p_41:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #528]
br x16
.word 1708
	.no_dead_strip plt_PubSub_Hub_Unsubscribe_T_object_System_Action_1_T_0
plt_PubSub_Hub_Unsubscribe_T_object_System_Action_1_T_0:
_p_42:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #536]
br x16
.word 1730
	.no_dead_strip plt_PubSub_Hub__ctor
plt_PubSub_Hub__ctor:
_p_43:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #544]
br x16
.word 1748
	.no_dead_strip plt__rgctx_fetch_16
plt__rgctx_fetch_16:
_p_44:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #552]
br x16
.word 1774
	.no_dead_strip plt__rgctx_fetch_17
plt__rgctx_fetch_17:
_p_45:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #560]
br x16
.word 1799
	.no_dead_strip plt__rgctx_fetch_18
plt__rgctx_fetch_18:
_p_46:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #568]
br x16
.word 1824
	.no_dead_strip plt__rgctx_fetch_19
plt__rgctx_fetch_19:
_p_47:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #576]
br x16
.word 1846
	.no_dead_strip plt__rgctx_fetch_20
plt__rgctx_fetch_20:
_p_48:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #584]
br x16
.word 1868
	.no_dead_strip plt__rgctx_fetch_21
plt__rgctx_fetch_21:
_p_49:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #592]
br x16
.word 1914
	.no_dead_strip plt__rgctx_fetch_22
plt__rgctx_fetch_22:
_p_50:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #600]
br x16
.word 1949
	.no_dead_strip plt__rgctx_fetch_23
plt__rgctx_fetch_23:
_p_51:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #608]
br x16
.word 1975
	.no_dead_strip plt__rgctx_fetch_24
plt__rgctx_fetch_24:
_p_52:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #616]
br x16
.word 2006
	.no_dead_strip plt__rgctx_fetch_25
plt__rgctx_fetch_25:
_p_53:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #624]
br x16
.word 2014
	.no_dead_strip plt__rgctx_fetch_26
plt__rgctx_fetch_26:
_p_54:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #632]
br x16
.word 2046
	.no_dead_strip plt__rgctx_fetch_27
plt__rgctx_fetch_27:
_p_55:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #640]
br x16
.word 2066
	.no_dead_strip plt__rgctx_fetch_28
plt__rgctx_fetch_28:
_p_56:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #648]
br x16
.word 2112
	.no_dead_strip plt__rgctx_fetch_29
plt__rgctx_fetch_29:
_p_57:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #656]
br x16
.word 2137
	.no_dead_strip plt__rgctx_fetch_30
plt__rgctx_fetch_30:
_p_58:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #664]
br x16
.word 2145
	.no_dead_strip plt__rgctx_fetch_31
plt__rgctx_fetch_31:
_p_59:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #672]
br x16
.word 2201
	.no_dead_strip plt__rgctx_fetch_32
plt__rgctx_fetch_32:
_p_60:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #680]
br x16
.word 2236
	.no_dead_strip plt__rgctx_fetch_33
plt__rgctx_fetch_33:
_p_61:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #688]
br x16
.word 2244
	.no_dead_strip plt__rgctx_fetch_34
plt__rgctx_fetch_34:
_p_62:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #696]
br x16
.word 2267
	.no_dead_strip plt__rgctx_fetch_35
plt__rgctx_fetch_35:
_p_63:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #704]
br x16
.word 2290
	.no_dead_strip plt__rgctx_fetch_36
plt__rgctx_fetch_36:
_p_64:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #712]
br x16
.word 2313
	.no_dead_strip plt__rgctx_fetch_37
plt__rgctx_fetch_37:
_p_65:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #720]
br x16
.word 2359
	.no_dead_strip plt__rgctx_fetch_38
plt__rgctx_fetch_38:
_p_66:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #728]
br x16
.word 2382
	.no_dead_strip plt__rgctx_fetch_39
plt__rgctx_fetch_39:
_p_67:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #736]
br x16
.word 2405
	.no_dead_strip plt__rgctx_fetch_40
plt__rgctx_fetch_40:
_p_68:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #744]
br x16
.word 2440
	.no_dead_strip plt__rgctx_fetch_41
plt__rgctx_fetch_41:
_p_69:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #752]
br x16
.word 2466
	.no_dead_strip plt__rgctx_fetch_42
plt__rgctx_fetch_42:
_p_70:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #760]
br x16
.word 2488
	.no_dead_strip plt__rgctx_fetch_43
plt__rgctx_fetch_43:
_p_71:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #768]
br x16
.word 2511
	.no_dead_strip plt__rgctx_fetch_44
plt__rgctx_fetch_44:
_p_72:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #776]
br x16
.word 2531
	.no_dead_strip plt__rgctx_fetch_45
plt__rgctx_fetch_45:
_p_73:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #784]
br x16
.word 2577
	.no_dead_strip plt__rgctx_fetch_46
plt__rgctx_fetch_46:
_p_74:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #792]
br x16
.word 2602
	.no_dead_strip plt__rgctx_fetch_47
plt__rgctx_fetch_47:
_p_75:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #800]
br x16
.word 2627
	.no_dead_strip plt__rgctx_fetch_48
plt__rgctx_fetch_48:
_p_76:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #808]
br x16
.word 2652
	.no_dead_strip plt__rgctx_fetch_49
plt__rgctx_fetch_49:
_p_77:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #816]
br x16
.word 2678
	.no_dead_strip plt__rgctx_fetch_50
plt__rgctx_fetch_50:
_p_78:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #824]
br x16
.word 2700
	.no_dead_strip plt__rgctx_fetch_51
plt__rgctx_fetch_51:
_p_79:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #832]
br x16
.word 2708
	.no_dead_strip plt__rgctx_fetch_52
plt__rgctx_fetch_52:
_p_80:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #840]
br x16
.word 2728
	.no_dead_strip plt__rgctx_fetch_53
plt__rgctx_fetch_53:
_p_81:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #848]
br x16
.word 2774
	.no_dead_strip plt__rgctx_fetch_54
plt__rgctx_fetch_54:
_p_82:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #856]
br x16
.word 2811
	.no_dead_strip plt__rgctx_fetch_55
plt__rgctx_fetch_55:
_p_83:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #864]
br x16
.word 2833
	.no_dead_strip plt__rgctx_fetch_56
plt__rgctx_fetch_56:
_p_84:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #872]
br x16
.word 2883
	.no_dead_strip plt__rgctx_fetch_57
plt__rgctx_fetch_57:
_p_85:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #880]
br x16
.word 2908
	.no_dead_strip plt__rgctx_fetch_58
plt__rgctx_fetch_58:
_p_86:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #888]
br x16
.word 2930
	.no_dead_strip plt__rgctx_fetch_59
plt__rgctx_fetch_59:
_p_87:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #896]
br x16
.word 2980
	.no_dead_strip plt__rgctx_fetch_60
plt__rgctx_fetch_60:
_p_88:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #904]
br x16
.word 3005
	.no_dead_strip plt__rgctx_fetch_61
plt__rgctx_fetch_61:
_p_89:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #912]
br x16
.word 3027
	.no_dead_strip plt__rgctx_fetch_62
plt__rgctx_fetch_62:
_p_90:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #920]
br x16
.word 3082
	.no_dead_strip plt__rgctx_fetch_63
plt__rgctx_fetch_63:
_p_91:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #928]
br x16
.word 3107
	.no_dead_strip plt__rgctx_fetch_64
plt__rgctx_fetch_64:
_p_92:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #936]
br x16
.word 3129
	.no_dead_strip plt__rgctx_fetch_65
plt__rgctx_fetch_65:
_p_93:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #944]
br x16
.word 3184
	.no_dead_strip plt__rgctx_fetch_66
plt__rgctx_fetch_66:
_p_94:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #952]
br x16
.word 3209
	.no_dead_strip plt__rgctx_fetch_67
plt__rgctx_fetch_67:
_p_95:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #960]
br x16
.word 3231
	.no_dead_strip plt__rgctx_fetch_68
plt__rgctx_fetch_68:
_p_96:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #968]
br x16
.word 3287
	.no_dead_strip plt__rgctx_fetch_69
plt__rgctx_fetch_69:
_p_97:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #976]
br x16
.word 3331
	.no_dead_strip plt__rgctx_fetch_70
plt__rgctx_fetch_70:
_p_98:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #984]
br x16
.word 3362
	.no_dead_strip plt__rgctx_fetch_71
plt__rgctx_fetch_71:
_p_99:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #992]
br x16
.word 3388
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_100:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1000]
br x16
.word 3419
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_101:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1008]
br x16
.word 3447
	.no_dead_strip plt__rgctx_fetch_72
plt__rgctx_fetch_72:
_p_102:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1016]
br x16
.word 3504
	.no_dead_strip plt__rgctx_fetch_73
plt__rgctx_fetch_73:
_p_103:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1024]
br x16
.word 3540
	.no_dead_strip plt__rgctx_fetch_74
plt__rgctx_fetch_74:
_p_104:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1032]
br x16
.word 3548
	.no_dead_strip plt__jit_icall_mono_helper_ldstr_mscorlib
plt__jit_icall_mono_helper_ldstr_mscorlib:
_p_105:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1040]
br x16
.word 3571
	.no_dead_strip plt__rgctx_fetch_75
plt__rgctx_fetch_75:
_p_106:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1048]
br x16
.word 3619
	.no_dead_strip plt__rgctx_fetch_76
plt__rgctx_fetch_76:
_p_107:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1056]
br x16
.word 3665
	.no_dead_strip plt__rgctx_fetch_77
plt__rgctx_fetch_77:
_p_108:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1064]
br x16
.word 3711
	.no_dead_strip plt__rgctx_fetch_78
plt__rgctx_fetch_78:
_p_109:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1072]
br x16
.word 3738
	.no_dead_strip plt__rgctx_fetch_79
plt__rgctx_fetch_79:
_p_110:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1080]
br x16
.word 3762
	.no_dead_strip plt_Locale_GetText_string
plt_Locale_GetText_string:
_p_111:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1088]
br x16
.word 3803
	.no_dead_strip plt__rgctx_fetch_80
plt__rgctx_fetch_80:
_p_112:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1096]
br x16
.word 3827
	.no_dead_strip plt_System_Array_Copy_System_Array_int_System_Array_int_int
plt_System_Array_Copy_System_Array_int_System_Array_int_int:
_p_113:
adrp x16, _mono_aot_PubSub_got@PAGE+0
add x16, x16, _mono_aot_PubSub_got@PAGEOFF
ldr x16, [x16, #1104]
br x16
.word 3854
plt_end:
.section __TEXT, __const
	.align 3
image_table:

	.long 3
	.asciz "PubSub"
	.asciz "4314F2AB-8790-4599-9958-0EB9551201C7"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,1,3,0,0
	.asciz "mscorlib"
	.asciz "5ABA7FA6-2064-48C8-9159-9B9F8936BC69"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
	.asciz "System.Core"
	.asciz "6B249D4A-BDB9-406A-B0F3-171FFB43DB95"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
.data
	.align 3
_mono_aot_PubSub_got:
	.space 1112
got_end:
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "4314F2AB-8790-4599-9958-0EB9551201C7"
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "PubSub"
.data
	.align 3
_mono_aot_file_info:

	.long 111,0
	.align 3
	.quad _mono_aot_PubSub_got
	.align 3
	.quad 0
	.align 3
	.quad methods
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad 0
	.align 3
	.quad blob
	.align 3
	.quad class_name_table
	.align 3
	.quad class_info_offsets
	.align 3
	.quad method_info_offsets
	.align 3
	.quad ex_info_offsets
	.align 3
	.quad method_addresses
	.align 3
	.quad extra_method_info_offsets
	.align 3
	.quad extra_method_table
	.align 3
	.quad got_info_offsets
	.align 3
	.quad 0
	.align 3
	.quad unwind_info
	.align 3
	.quad mem_end
	.align 3
	.quad image_table
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 25,1112,114,58,2,387000831,0,5106
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,128,8,8,15
	.long 0,0,0,0,0
	.globl _mono_aot_module_PubSub_info
	.align 3
_mono_aot_module_PubSub_info:
	.align 3
	.quad _mono_aot_file_info
.section __TEXT, __const
	.align 3
blob:

	.byte 0,0,8,4,5,6,7,8,9,9,9,0,3,10,11,8,0,10,12,4,13,14,15,6,7,9,9,9,0,12,4,5
	.byte 6,4,5,6,7,8,9,8,9,9,0,12,16,4,17,18,19,16,16,6,7,9,9,9,0,3,20,8,21,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,4,5,22,8,9,9,9,1,4,1,22,1,4,1,22,1
	.byte 4,1,22,1,4,1,22,1,4,1,22,1,4,1,22,1,4,2,23,22,0,0,0,0,0,0,0,0,0,0,0,8
	.byte 4,5,6,7,8,9,9,9,0,3,10,11,8,0,12,4,5,6,4,5,6,7,8,9,8,9,9,0,0,1,4,5
	.byte 22,8,9,9,9,1,4,1,22,1,4,1,22,1,4,1,22,1,4,1,22,1,4,1,22,0,0,0,0,0,0,0
	.byte 1,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,24,0,1,24,0,1,24,5,30,0,0,1
	.byte 255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,128,219,255,253,0,0,0,1,2,0,198,0,0,2,0,1,7
	.byte 128,219,255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,128,219,255,253,0,0,0,1,2,0,198,0,0,7,0
	.byte 1,7,128,219,255,253,0,0,0,1,4,0,198,0,0,16,0,1,7,128,219,255,253,0,0,0,1,4,0,198,0,0
	.byte 17,0,1,7,128,219,255,253,0,0,0,1,4,0,198,0,0,18,0,1,7,128,219,255,253,0,0,0,1,4,0,198
	.byte 0,0,19,0,1,7,128,219,255,253,0,0,0,1,4,0,198,0,0,21,0,1,7,128,219,255,253,0,0,0,1,4
	.byte 0,198,0,0,22,0,1,7,128,219,5,19,0,0,1,4,1,6,1,7,129,138,255,253,0,0,0,7,129,143,0,198
	.byte 0,0,26,1,7,129,138,0,255,253,0,0,0,7,129,143,0,198,0,0,27,1,7,129,138,0,255,253,0,0,0,7
	.byte 129,143,0,198,0,0,28,1,7,129,138,0,255,252,0,0,0,1,1,3,219,0,0,2,5,30,0,1,255,255,255,255
	.byte 255,193,0,25,224,255,253,0,0,0,2,131,81,1,1,198,0,25,224,0,1,7,129,216,193,0,25,222,193,0,25,223
	.byte 193,0,25,225,5,30,0,1,255,255,255,255,255,193,0,25,226,255,253,0,0,0,2,131,81,1,1,198,0,25,226,0
	.byte 1,7,130,4,5,30,0,1,255,255,255,255,255,193,0,25,227,255,253,0,0,0,2,131,81,1,1,198,0,25,227,0
	.byte 1,7,130,36,5,30,0,1,255,255,255,255,255,193,0,25,228,255,253,0,0,0,2,131,81,1,1,198,0,25,228,0
	.byte 1,7,130,68,5,30,0,1,255,255,255,255,255,193,0,25,229,255,253,0,0,0,2,131,81,1,1,198,0,25,229,0
	.byte 1,7,130,100,4,2,131,183,1,1,1,3,255,252,0,0,0,1,1,7,130,132,4,2,131,64,1,1,1,3,255,252
	.byte 0,0,0,1,1,7,130,150,4,2,131,98,1,1,1,3,255,252,0,0,0,1,1,7,130,168,12,0,40,43,48,14
	.byte 3,219,0,0,2,30,3,219,0,0,2,0,0,34,255,254,0,0,0,0,255,43,0,0,2,34,255,254,0,0,0,0
	.byte 255,43,0,0,3,14,3,219,0,0,3,14,3,219,0,0,4,14,1,3,14,2,131,218,1,14,1,5,6,25,51,25
	.byte 30,3,219,0,0,2,1,25,0,16,1,2,3,6,8,51,8,30,3,219,0,0,2,1,8,0,14,2,131,173,1,16
	.byte 3,219,0,0,3,128,219,16,1,4,7,14,1,2,33,3,193,0,25,10,3,5,7,20,109,111,110,111,95,111,98,106
	.byte 101,99,116,95,110,101,119,95,102,97,115,116,0,5,30,0,1,255,255,255,255,255,1,255,253,0,0,0,1,2,0,198
	.byte 0,0,1,0,1,7,131,77,35,131,87,140,11,255,253,0,0,0,1,2,0,198,0,0,7,0,1,7,131,77,35,131
	.byte 87,140,23,255,253,0,0,0,1,2,0,198,0,0,7,0,1,7,131,77,3,255,254,0,0,0,0,255,43,0,0,2
	.byte 3,255,254,0,0,0,0,255,43,0,0,3,36,3,255,254,0,0,0,0,202,0,0,25,3,255,254,0,0,0,0,202
	.byte 0,0,26,4,2,131,64,1,1,7,131,77,35,131,87,150,25,7,131,195,3,255,252,0,0,0,19,10,3,255,254,0
	.byte 0,0,0,202,0,0,28,3,255,253,0,0,0,3,219,0,0,4,1,198,0,2,207,1,1,3,0,3,193,0,24,255
	.byte 7,24,109,111,110,111,95,111,98,106,101,99,116,95,110,101,119,95,115,112,101,99,105,102,105,99,0,3,193,0,30,237
	.byte 5,30,0,1,255,255,255,255,255,2,255,253,0,0,0,1,2,0,198,0,0,2,0,1,7,132,32,35,132,42,150,9
	.byte 7,132,32,3,255,253,0,0,0,3,219,0,0,3,1,198,0,2,168,1,1,3,0,3,255,254,0,0,0,0,202,0
	.byte 0,36,7,32,109,111,110,111,95,97,114,99,104,95,116,104,114,111,119,95,99,111,114,108,105,98,95,101,120,99,101,112
	.byte 116,105,111,110,0,5,30,0,1,255,255,255,255,255,4,255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,132,133
	.byte 4,1,6,1,7,132,133,35,132,143,150,5,7,132,160,3,255,253,0,0,0,7,132,160,0,198,0,0,26,1,7,132
	.byte 133,0,35,132,143,140,11,255,253,0,0,0,7,132,160,0,198,0,0,27,1,7,132,133,0,35,132,143,140,23,255,253
	.byte 0,0,0,7,132,160,0,198,0,0,27,1,7,132,133,0,35,132,143,140,11,255,253,0,0,0,7,132,160,0,198,0
	.byte 0,28,1,7,132,133,0,35,132,143,140,23,255,253,0,0,0,7,132,160,0,198,0,0,28,1,7,132,133,0,7,23
	.byte 109,111,110,111,95,111,98,106,101,99,116,95,110,101,119,95,112,116,114,102,114,101,101,0,5,30,0,1,255,255,255,255
	.byte 255,7,255,253,0,0,0,1,2,0,198,0,0,7,0,1,7,133,56,35,133,66,150,9,7,133,56,3,193,0,29,42
	.byte 5,30,0,1,255,255,255,255,255,16,255,253,0,0,0,1,4,0,198,0,0,16,0,1,7,133,96,35,133,106,150,9
	.byte 7,133,96,5,30,0,1,255,255,255,255,255,17,255,253,0,0,0,1,4,0,198,0,0,17,0,1,7,133,131,35,133
	.byte 141,140,17,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,133,131,3,255,253,0,0,0,1,2,0,198,0,0
	.byte 1,0,1,7,133,131,5,30,0,1,255,255,255,255,255,18,255,253,0,0,0,1,4,0,198,0,0,18,0,1,7,133
	.byte 198,35,133,208,140,17,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,133,198,3,255,253,0,0,0,1,2,0
	.byte 198,0,0,1,0,1,7,133,198,5,30,0,1,255,255,255,255,255,19,255,253,0,0,0,1,4,0,198,0,0,19,0
	.byte 1,7,134,9,35,134,19,140,17,255,253,0,0,0,1,2,0,198,0,0,2,0,1,7,134,9,3,255,253,0,0,0
	.byte 1,2,0,198,0,0,2,0,1,7,134,9,3,3,5,30,0,1,255,255,255,255,255,21,255,253,0,0,0,1,4,0
	.byte 198,0,0,21,0,1,7,134,78,35,134,88,140,17,255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,134,78,3
	.byte 255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,134,78,5,30,0,1,255,255,255,255,255,22,255,253,0,0,0
	.byte 1,4,0,198,0,0,22,0,1,7,134,145,35,134,155,140,17,255,253,0,0,0,1,2,0,198,0,0,4,0,1,7
	.byte 134,145,3,255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,134,145,3,6,5,19,0,1,0,1,6,255,253,0
	.byte 0,0,1,6,0,198,0,0,27,1,7,134,214,0,35,134,221,150,8,7,134,214,255,253,0,0,0,1,2,0,198,0
	.byte 0,1,0,1,7,128,219,35,134,246,192,0,94,41,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,128,219,0
	.byte 35,134,246,140,11,255,253,0,0,0,1,2,0,198,0,0,7,0,1,7,128,219,35,134,246,140,23,255,253,0,0,0
	.byte 1,2,0,198,0,0,7,0,1,7,128,219,35,134,246,192,0,92,32,16,1,2,21,2,62,1,1,1,3,21,2,62
	.byte 1,1,1,3,21,2,131,127,1,2,1,3,2,33,1,255,254,0,0,0,0,255,43,0,0,2,35,134,246,192,0,92
	.byte 32,16,1,1,21,2,71,1,1,1,3,21,2,62,1,1,1,3,255,254,0,0,0,0,255,43,0,0,3,35,134,246
	.byte 192,0,92,32,32,0,21,2,72,1,1,1,3,255,254,0,0,0,0,202,0,0,25,35,134,246,192,0,92,32,32,0
	.byte 18,1,3,255,254,0,0,0,0,202,0,0,26,4,2,131,64,1,1,7,128,219,35,134,246,150,25,7,135,205,35,134
	.byte 246,192,0,92,35,32,1,1,30,7,128,219,255,253,0,0,0,7,135,205,1,198,0,25,149,1,7,128,219,0,35,134
	.byte 246,192,0,92,32,32,0,2,255,254,0,0,0,0,202,0,0,28,35,134,246,192,0,92,32,32,0,1,255,253,0,0
	.byte 0,3,219,0,0,4,1,198,0,2,207,1,1,3,0,255,253,0,0,0,1,2,0,198,0,0,2,0,1,7,128,219
	.byte 35,136,47,192,0,94,41,255,253,0,0,0,1,2,0,198,0,0,2,0,1,7,128,219,0,35,136,47,150,9,7,128
	.byte 219,35,136,47,192,0,92,34,32,1,1,18,1,3,255,253,0,0,0,3,219,0,0,3,1,198,0,2,168,1,1,3
	.byte 0,255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,128,219,4,1,6,1,7,128,219,35,136,129,192,0,94,41
	.byte 255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,128,219,2,15,7,136,146,9,15,7,136,146,10,35,136,129,150
	.byte 5,7,136,146,35,136,129,140,13,255,253,0,0,0,7,136,146,0,198,0,0,26,1,7,128,219,0,35,136,129,140,11
	.byte 255,253,0,0,0,7,136,146,0,198,0,0,27,1,7,128,219,0,35,136,129,140,23,255,253,0,0,0,7,136,146,0
	.byte 198,0,0,27,1,7,128,219,0,35,136,129,192,0,92,32,16,1,2,21,2,62,1,1,1,3,21,2,62,1,1,1
	.byte 3,21,2,131,127,1,2,1,3,2,33,1,255,254,0,0,0,0,255,43,0,0,2,35,136,129,140,11,255,253,0,0
	.byte 0,7,136,146,0,198,0,0,28,1,7,128,219,0,35,136,129,140,23,255,253,0,0,0,7,136,146,0,198,0,0,28
	.byte 1,7,128,219,0,35,136,129,192,0,92,32,16,1,1,21,2,71,1,1,1,3,21,2,62,1,1,1,3,255,254,0
	.byte 0,0,0,255,43,0,0,3,35,136,129,192,0,92,32,32,0,21,2,72,1,1,1,3,255,254,0,0,0,0,202,0
	.byte 0,25,35,136,129,192,0,92,32,32,0,18,1,3,255,254,0,0,0,0,202,0,0,26,35,136,129,192,0,92,34,32
	.byte 1,2,18,1,3,255,254,0,0,0,0,202,0,0,36,35,136,129,192,0,92,32,32,0,2,255,254,0,0,0,0,202
	.byte 0,0,28,35,136,129,192,0,92,32,32,0,1,255,253,0,0,0,3,219,0,0,4,1,198,0,2,207,1,1,3,0
	.byte 255,253,0,0,0,1,2,0,198,0,0,7,0,1,7,128,219,35,138,0,192,0,94,41,255,253,0,0,0,1,2,0
	.byte 198,0,0,7,0,1,7,128,219,0,35,138,0,150,9,7,128,219,255,253,0,0,0,1,4,0,198,0,0,16,0,1
	.byte 7,128,219,35,138,50,192,0,94,41,255,253,0,0,0,1,4,0,198,0,0,16,0,1,7,128,219,0,35,138,50,192
	.byte 0,92,32,32,0,21,2,72,1,1,1,3,255,254,0,0,0,0,202,0,0,25,35,138,50,192,0,92,32,32,0,18
	.byte 1,3,255,254,0,0,0,0,202,0,0,26,35,138,50,150,9,7,128,219,35,138,50,192,0,92,32,32,0,2,255,254
	.byte 0,0,0,0,202,0,0,28,35,138,50,192,0,92,32,32,0,1,255,253,0,0,0,3,219,0,0,4,1,198,0,2
	.byte 207,1,1,3,0,255,253,0,0,0,1,4,0,198,0,0,17,0,1,7,128,219,35,138,197,192,0,94,41,255,253,0
	.byte 0,0,1,4,0,198,0,0,17,0,1,7,128,219,3,14,7,128,219,23,7,128,219,21,7,128,219,35,138,197,140,17
	.byte 255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,128,219,35,138,197,192,0,92,33,48,1,2,1,28,30,7,128
	.byte 219,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,128,219,255,253,0,0,0,1,4,0,198,0,0,18,0,1
	.byte 7,128,219,35,139,50,192,0,94,41,255,253,0,0,0,1,4,0,198,0,0,18,0,1,7,128,219,0,35,139,50,140
	.byte 17,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,128,219,35,139,50,192,0,92,33,48,1,2,1,28,30,7
	.byte 128,219,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,128,219,255,253,0,0,0,1,4,0,198,0,0,19,0
	.byte 1,7,128,219,35,139,147,192,0,94,41,255,253,0,0,0,1,4,0,198,0,0,19,0,1,7,128,219,0,35,139,147
	.byte 140,17,255,253,0,0,0,1,2,0,198,0,0,2,0,1,7,128,219,35,139,147,192,0,92,33,48,1,2,1,28,21
	.byte 2,131,64,1,1,7,128,219,255,253,0,0,0,1,2,0,198,0,0,2,0,1,7,128,219,255,253,0,0,0,1,4
	.byte 0,198,0,0,21,0,1,7,128,219,35,139,249,192,0,94,41,255,253,0,0,0,1,4,0,198,0,0,21,0,1,7
	.byte 128,219,0,35,139,249,140,17,255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,128,219,35,139,249,192,0,92,33
	.byte 48,1,2,1,28,21,2,131,64,1,1,7,128,219,255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,128,219,255
	.byte 253,0,0,0,1,4,0,198,0,0,22,0,1,7,128,219,35,140,95,192,0,94,41,255,253,0,0,0,1,4,0,198
	.byte 0,0,22,0,1,7,128,219,0,35,140,95,140,17,255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,128,219,35
	.byte 140,95,192,0,92,33,48,1,2,1,28,21,2,131,64,1,1,7,128,219,255,253,0,0,0,1,2,0,198,0,0,4
	.byte 0,1,7,128,219,255,253,0,0,0,7,129,143,0,198,0,0,26,1,7,129,138,0,35,140,197,192,0,94,40,255,253
	.byte 0,0,0,7,129,143,0,198,0,0,26,1,7,129,138,0,0,255,253,0,0,0,7,129,143,0,198,0,0,27,1,7
	.byte 129,138,0,35,140,241,192,0,94,40,255,253,0,0,0,7,129,143,0,198,0,0,27,1,7,129,138,0,1,15,7,129
	.byte 143,9,35,140,241,150,8,7,129,138,255,253,0,0,0,7,129,143,0,198,0,0,28,1,7,129,138,0,35,141,42,192
	.byte 0,94,40,255,253,0,0,0,7,129,143,0,198,0,0,28,1,7,129,138,0,1,15,7,129,143,10,7,25,109,111,110
	.byte 111,95,97,114,99,104,95,116,104,114,111,119,95,101,120,99,101,112,116,105,111,110,0,7,35,109,111,110,111,95,116,104
	.byte 114,101,97,100,95,105,110,116,101,114,114,117,112,116,105,111,110,95,99,104,101,99,107,112,111,105,110,116,0,255,253,0
	.byte 0,0,2,131,81,1,1,198,0,25,224,0,1,7,129,216,35,141,157,192,0,94,41,255,253,0,0,0,2,131,81,1
	.byte 1,198,0,25,224,0,1,7,129,216,0,4,2,131,82,1,1,7,129,216,35,141,157,150,5,7,141,203,35,141,157,140
	.byte 13,255,253,0,0,0,7,141,203,1,198,0,26,68,1,7,129,216,0,7,26,109,111,110,111,95,104,101,108,112,101,114
	.byte 95,108,100,115,116,114,95,109,115,99,111,114,108,105,98,0,255,253,0,0,0,2,131,81,1,1,198,0,25,226,0,1
	.byte 7,130,4,35,142,16,192,0,94,41,255,253,0,0,0,2,131,81,1,1,198,0,25,226,0,1,7,130,4,0,255,253
	.byte 0,0,0,2,131,81,1,1,198,0,25,227,0,1,7,130,36,35,142,62,192,0,94,41,255,253,0,0,0,2,131,81
	.byte 1,1,198,0,25,227,0,1,7,130,36,0,255,253,0,0,0,2,131,81,1,1,198,0,25,228,0,1,7,130,68,35
	.byte 142,108,192,0,94,41,255,253,0,0,0,2,131,81,1,1,198,0,25,228,0,1,7,130,68,0,35,142,108,140,17,255
	.byte 253,0,0,0,2,131,81,1,1,198,0,25,237,0,1,7,130,68,35,142,108,192,0,92,33,16,1,3,1,18,2,131
	.byte 81,1,8,16,30,7,130,68,255,253,0,0,0,2,131,81,1,1,198,0,25,237,0,1,7,130,68,3,193,0,14,157
	.byte 255,253,0,0,0,2,131,81,1,1,198,0,25,229,0,1,7,130,100,35,142,224,192,0,94,41,255,253,0,0,0,2
	.byte 131,81,1,1,198,0,25,229,0,1,7,130,100,0,3,193,0,26,26,7,0,2,2,120,129,184,129,16,129,152,129,152
	.byte 2,128,128,129,220,60,129,192,129,192,0,1,29,48,17,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,131,77
	.byte 0,0,7,20,1,2,80,129,4,40,128,232,128,232,0,1,29,40,17,255,253,0,0,0,1,2,0,198,0,0,2,0
	.byte 1,7,132,32,0,0,6,38,2,2,120,129,220,129,112,129,188,129,188,2,128,128,130,0,124,129,228,129,228,0,7,63
	.byte 2,2,128,136,131,52,130,168,131,20,131,20,2,128,144,131,88,128,204,131,60,131,60,0,1,29,64,17,255,253,0,0
	.byte 0,1,2,0,198,0,0,4,0,1,7,132,133,0,0,6,91,1,2,80,129,80,128,228,129,48,129,48,0,2,110,0
	.byte 3,127,0,1,29,24,17,255,253,0,0,0,1,2,0,198,0,0,7,0,1,7,133,56,0,0,2,128,141,0,2,128
	.byte 141,0,2,128,141,0,2,128,141,0,2,128,141,0,2,128,141,0,2,128,141,0,2,128,141,0,7,128,155,1,2,80
	.byte 129,84,96,129,52,129,52,0,1,29,32,17,255,253,0,0,0,1,4,0,198,0,0,16,0,1,7,133,96,0,0,3
	.byte 127,0,1,29,24,17,255,253,0,0,0,1,4,0,198,0,0,17,0,1,7,133,131,0,0,3,128,174,0,1,29,32
	.byte 17,255,253,0,0,0,1,4,0,198,0,0,18,0,1,7,133,198,0,0,3,128,174,0,1,29,32,17,255,253,0,0
	.byte 0,1,4,0,198,0,0,19,0,1,7,134,9,0,0,2,128,141,0,3,127,0,1,29,24,17,255,253,0,0,0,1
	.byte 4,0,198,0,0,21,0,1,7,134,78,0,0,3,128,174,0,1,29,32,17,255,253,0,0,0,1,4,0,198,0,0
	.byte 22,0,1,7,134,145,0,0,2,128,141,0,2,128,141,0,2,128,141,0,3,128,141,0,1,29,16,17,255,253,0,0
	.byte 0,1,6,0,198,0,0,26,1,7,134,214,0,0,0,3,128,188,0,1,29,24,17,255,253,0,0,0,1,6,0,198
	.byte 0,0,27,1,7,134,214,0,0,0,3,128,141,0,1,29,16,17,255,253,0,0,0,1,6,0,198,0,0,28,1,7
	.byte 134,214,0,0,0,7,128,205,2,2,128,144,130,132,129,116,130,68,130,68,2,128,152,130,168,84,130,140,130,140,0,1
	.byte 29,64,17,255,253,0,0,0,1,2,0,198,0,0,1,0,1,7,128,219,1,0,1,1,0,7,128,228,1,2,96,129
	.byte 40,60,129,12,129,12,0,1,29,48,17,255,253,0,0,0,1,2,0,198,0,0,2,0,1,7,128,219,1,0,1,1
	.byte 0,7,128,246,2,2,128,152,132,56,131,64,131,248,131,248,2,128,160,132,92,129,4,132,64,132,64,0,1,29,72,17
	.byte 255,253,0,0,0,1,2,0,198,0,0,4,0,1,7,128,219,1,0,1,1,0,3,128,174,0,1,29,24,17,255,253
	.byte 0,0,0,1,2,0,198,0,0,7,0,1,7,128,219,1,0,1,1,0,7,129,18,1,2,88,129,208,124,129,144,129
	.byte 144,0,1,29,32,17,255,253,0,0,0,1,4,0,198,0,0,16,0,1,7,128,219,1,0,1,1,0,3,129,38,0
	.byte 1,29,40,17,255,253,0,0,0,1,4,0,198,0,0,17,0,1,7,128,219,1,0,1,1,0,3,129,57,0,1,29
	.byte 40,17,255,253,0,0,0,1,4,0,198,0,0,18,0,1,7,128,219,1,0,1,1,0,3,129,74,0,1,29,32,17
	.byte 255,253,0,0,0,1,4,0,198,0,0,19,0,1,7,128,219,1,0,1,1,0,3,129,74,0,1,29,24,17,255,253
	.byte 0,0,0,1,4,0,198,0,0,21,0,1,7,128,219,1,0,1,1,0,3,129,74,0,1,29,32,17,255,253,0,0
	.byte 0,1,4,0,198,0,0,22,0,1,7,128,219,1,0,1,1,0,3,128,141,0,1,29,16,18,255,253,0,0,0,7
	.byte 129,143,0,198,0,0,26,1,7,129,138,0,1,1,1,0,0,3,129,88,0,1,29,32,18,255,253,0,0,0,7,129
	.byte 143,0,198,0,0,27,1,7,129,138,0,1,1,1,0,0,3,129,107,0,1,29,24,18,255,253,0,0,0,7,129,143
	.byte 0,198,0,0,28,1,7,129,138,0,1,1,1,0,0,2,129,124,0,3,129,143,0,1,29,56,19,255,253,0,0,0
	.byte 2,131,81,1,1,198,0,25,224,0,1,7,129,216,1,0,1,0,0,2,128,141,0,2,128,141,0,2,128,141,0,3
	.byte 127,0,1,29,32,19,255,253,0,0,0,2,131,81,1,1,198,0,25,226,0,1,7,130,4,1,0,1,0,0,3,127
	.byte 0,1,29,32,19,255,253,0,0,0,2,131,81,1,1,198,0,25,227,0,1,7,130,36,1,0,1,0,0,3,129,157
	.byte 0,1,29,48,19,255,253,0,0,0,2,131,81,1,1,198,0,25,228,0,1,7,130,68,1,0,1,0,0,3,129,179
	.byte 0,1,29,72,19,255,253,0,0,0,2,131,81,1,1,198,0,25,229,0,1,7,130,100,1,0,1,0,0,2,129,124
	.byte 0,2,129,124,0,2,129,211,0,0,128,144,16,0,0,1,4,128,232,32,8,0,8,193,0,28,194,193,0,28,191,193
	.byte 0,28,190,193,0,28,188,4,128,160,40,0,0,8,193,0,28,194,193,0,28,191,193,0,28,190,193,0,28,188,4,128
	.byte 196,23,16,8,0,1,193,0,28,194,193,0,28,191,193,0,28,190,193,0,28,188,4,128,160,24,0,0,8,193,0,28
	.byte 194,193,0,28,191,193,0,28,190,193,0,28,188,255,255,255,255,255,115,103,101,110,0
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_4:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM7=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_3:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM10=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM11=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM12=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM12
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM13=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM14=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_2:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM15=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM16=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM17=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM18=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM19=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM19
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM20=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM21=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM22=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_0:

	.byte 5
	.asciz "PubSub_Hub"

	.byte 32,16
LDIFF_SYM23=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,35,0,6
	.asciz "locker"

LDIFF_SYM24=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,35,16,6
	.asciz "handlers"

LDIFF_SYM25=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2,35,24,0,7
	.asciz "PubSub_Hub"

LDIFF_SYM26=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM27=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM28=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_7:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM29=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM30=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM31=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM32=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM33=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_6:

	.byte 5
	.asciz "System_WeakReference"

	.byte 24,16
LDIFF_SYM34=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,35,0,6
	.asciz "isLongReference"

LDIFF_SYM35=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,35,16,6
	.asciz "gcHandle"

LDIFF_SYM36=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,20,0,7
	.asciz "System_WeakReference"

LDIFF_SYM37=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM38=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM39=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_9:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM40=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM41=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM41
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM42=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM43=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_8:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM44=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM45=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM46=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM47=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM48=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_5:

	.byte 5
	.asciz "_Handler"

	.byte 40,16
LDIFF_SYM49=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,0,6
	.asciz "<Action>k__BackingField"

LDIFF_SYM50=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,16,6
	.asciz "<Sender>k__BackingField"

LDIFF_SYM51=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,35,24,6
	.asciz "<Type>k__BackingField"

LDIFF_SYM52=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,35,32,0,7
	.asciz "_Handler"

LDIFF_SYM53=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM54=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM54
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM55=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_14:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM56=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM57=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM57
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM58=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM58
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM59=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM59
LTDIE_13:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM60=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM61=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM62=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM62
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM63=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_15:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM64=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM65=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM66=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM67=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM68=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM68
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM69=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM70=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_12:

	.byte 5
	.asciz "System_Delegate"

	.byte 88,16
LDIFF_SYM71=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM72=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM73=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM74=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM75=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM76=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,48,6
	.asciz "method_code"

LDIFF_SYM77=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,56,6
	.asciz "method_info"

LDIFF_SYM78=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,64,6
	.asciz "original_method_info"

LDIFF_SYM79=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,72,6
	.asciz "data"

LDIFF_SYM80=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,80,0,7
	.asciz "System_Delegate"

LDIFF_SYM81=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM81
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM82=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM82
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM83=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM83
LTDIE_11:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 104,16
LDIFF_SYM84=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,35,0,6
	.asciz "prev"

LDIFF_SYM85=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,35,88,6
	.asciz "kpm_next"

LDIFF_SYM86=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,35,96,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM87=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM87
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM88=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM88
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM89=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM89
LTDIE_10:

	.byte 5
	.asciz "System_Func`2"

	.byte 104,16
LDIFF_SYM90=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM91=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM91
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM92=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM92
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM93=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2
	.asciz "PubSub.Hub:Publish<T>"
	.asciz "PubSub_Hub_Publish_T_object_T"

	.byte 0,0
	.quad PubSub_Hub_Publish_T_object_T
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM94=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 1,106,3
	.asciz "sender"

LDIFF_SYM95=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 0,3
	.asciz "data"

LDIFF_SYM96=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM97=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM98=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 3,141,208,0,11
	.asciz "V_2"

LDIFF_SYM99=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM100=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 3,141,216,0,11
	.asciz "V_4"

LDIFF_SYM101=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM102=Lfde0_end - Lfde0_start
	.long LDIFF_SYM102
Lfde0_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Publish_T_object_T

LDIFF_SYM103=Lme_0 - PubSub_Hub_Publish_T_object_T
	.long LDIFF_SYM103
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,153,18,154,17
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_16:

	.byte 5
	.asciz "System_Action`1"

	.byte 104,16
LDIFF_SYM104=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM105=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM105
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM106=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM106
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM107=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2
	.asciz "PubSub.Hub:Subscribe<T>"
	.asciz "PubSub_Hub_Subscribe_T_object_System_Action_1_T"

	.byte 0,0
	.quad PubSub_Hub_Subscribe_T_object_System_Action_1_T
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM108=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 1,104,3
	.asciz "sender"

LDIFF_SYM109=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2,141,24,3
	.asciz "handler"

LDIFF_SYM110=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM111=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM112=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,141,48,11
	.asciz "V_2"

LDIFF_SYM113=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM114=Lfde1_end - Lfde1_start
	.long LDIFF_SYM114
Lfde1_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Subscribe_T_object_System_Action_1_T

LDIFF_SYM115=Lme_1 - PubSub_Hub_Subscribe_T_object_System_Action_1_T
	.long LDIFF_SYM115
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,152,14
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_17:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM116=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM116
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM117=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM117
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM118=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM118
LTDIE_18:

	.byte 5
	.asciz "_<>c__DisplayClass8"

	.byte 24,16
LDIFF_SYM119=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 2,35,0,6
	.asciz "sender"

LDIFF_SYM120=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,35,16,0,7
	.asciz "_<>c__DisplayClass8"

LDIFF_SYM121=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM121
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM122=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM122
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM123=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2
	.asciz "PubSub.Hub:Unsubscribe"
	.asciz "PubSub_Hub_Unsubscribe_object"

	.byte 0,0
	.quad PubSub_Hub_Unsubscribe_object
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM124=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 1,105,3
	.asciz "sender"

LDIFF_SYM125=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM126=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM127=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM128=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 3,141,200,0,11
	.asciz "V_3"

LDIFF_SYM129=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 1,104,11
	.asciz "V_4"

LDIFF_SYM130=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 1,103,11
	.asciz "V_5"

LDIFF_SYM131=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 3,141,208,0,11
	.asciz "V_6"

LDIFF_SYM132=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM133=Lfde2_end - Lfde2_start
	.long LDIFF_SYM133
Lfde2_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Unsubscribe_object

LDIFF_SYM134=Lme_2 - PubSub_Hub_Unsubscribe_object
	.long LDIFF_SYM134
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,151,16,152,15,68,153,14,154,13
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_19:

	.byte 5
	.asciz "System_Action`1"

	.byte 104,16
LDIFF_SYM135=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM136=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM136
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM137=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM137
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM138=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM138
LTDIE_20:

	.byte 5
	.asciz "_<>c__DisplayClassf`1"

	.byte 32,16
LDIFF_SYM139=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,0,6
	.asciz "sender"

LDIFF_SYM140=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,16,6
	.asciz "handler"

LDIFF_SYM141=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,35,24,0,7
	.asciz "_<>c__DisplayClassf`1"

LDIFF_SYM142=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM142
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM143=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM143
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM144=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2
	.asciz "PubSub.Hub:Unsubscribe<T>"
	.asciz "PubSub_Hub_Unsubscribe_T_object_System_Action_1_T"

	.byte 0,0
	.quad PubSub_Hub_Unsubscribe_T_object_System_Action_1_T
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM145=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 1,104,3
	.asciz "sender"

LDIFF_SYM146=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,141,56,3
	.asciz "handler"

LDIFF_SYM147=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM147
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM148=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM149=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM150=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM150
	.byte 3,141,224,0,11
	.asciz "V_3"

LDIFF_SYM151=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM151
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM152=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 1,102,11
	.asciz "V_5"

LDIFF_SYM153=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 1,101,11
	.asciz "V_6"

LDIFF_SYM154=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 3,141,232,0,11
	.asciz "V_7"

LDIFF_SYM155=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM156=Lfde3_end - Lfde3_start
	.long LDIFF_SYM156
Lfde3_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Unsubscribe_T_object_System_Action_1_T

LDIFF_SYM157=Lme_3 - PubSub_Hub_Unsubscribe_T_object_System_Action_1_T
	.long LDIFF_SYM157
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,149,20,150,19,68,151,18,152,17,68,154,16
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub:Cleanup"
	.asciz "PubSub_Hub_Cleanup"

	.byte 0,0
	.quad PubSub_Hub_Cleanup
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM158=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM159=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM160=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM161=Lfde4_end - Lfde4_start
	.long LDIFF_SYM161
Lfde4_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Cleanup

LDIFF_SYM162=Lme_4 - PubSub_Hub_Cleanup
	.long LDIFF_SYM162
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub:.ctor"
	.asciz "PubSub_Hub__ctor"

	.byte 0,0
	.quad PubSub_Hub__ctor
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM163=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM164=Lfde5_end - Lfde5_start
	.long LDIFF_SYM164
Lfde5_start:

	.long 0
	.align 3
	.quad PubSub_Hub__ctor

LDIFF_SYM165=Lme_5 - PubSub_Hub__ctor
	.long LDIFF_SYM165
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub:<Publish>b__1<T>"
	.asciz "PubSub_Hub__Publishb__1_T_PubSub_Hub_Handler"

	.byte 0,0
	.quad PubSub_Hub__Publishb__1_T_PubSub_Hub_Handler
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "a"

LDIFF_SYM166=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM167=Lfde6_end - Lfde6_start
	.long LDIFF_SYM167
Lfde6_start:

	.long 0
	.align 3
	.quad PubSub_Hub__Publishb__1_T_PubSub_Hub_Handler

LDIFF_SYM168=Lme_6 - PubSub_Hub__Publishb__1_T_PubSub_Hub_Handler
	.long LDIFF_SYM168
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub:<Cleanup>b__11"
	.asciz "PubSub_Hub__Cleanupb__11_PubSub_Hub_Handler"

	.byte 0,0
	.quad PubSub_Hub__Cleanupb__11_PubSub_Hub_Handler
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "a"

LDIFF_SYM169=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM170=Lfde7_end - Lfde7_start
	.long LDIFF_SYM170
Lfde7_start:

	.long 0
	.align 3
	.quad PubSub_Hub__Cleanupb__11_PubSub_Hub_Handler

LDIFF_SYM171=Lme_7 - PubSub_Hub__Cleanupb__11_PubSub_Hub_Handler
	.long LDIFF_SYM171
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/Handler:get_Action"
	.asciz "PubSub_Hub_Handler_get_Action"

	.byte 0,0
	.quad PubSub_Hub_Handler_get_Action
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM172=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM173=Lfde8_end - Lfde8_start
	.long LDIFF_SYM173
Lfde8_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Handler_get_Action

LDIFF_SYM174=Lme_8 - PubSub_Hub_Handler_get_Action
	.long LDIFF_SYM174
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/Handler:set_Action"
	.asciz "PubSub_Hub_Handler_set_Action_object"

	.byte 0,0
	.quad PubSub_Hub_Handler_set_Action_object
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM175=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM176=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM177=Lfde9_end - Lfde9_start
	.long LDIFF_SYM177
Lfde9_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Handler_set_Action_object

LDIFF_SYM178=Lme_9 - PubSub_Hub_Handler_set_Action_object
	.long LDIFF_SYM178
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/Handler:get_Sender"
	.asciz "PubSub_Hub_Handler_get_Sender"

	.byte 0,0
	.quad PubSub_Hub_Handler_get_Sender
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM179=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM180=Lfde10_end - Lfde10_start
	.long LDIFF_SYM180
Lfde10_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Handler_get_Sender

LDIFF_SYM181=Lme_a - PubSub_Hub_Handler_get_Sender
	.long LDIFF_SYM181
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/Handler:set_Sender"
	.asciz "PubSub_Hub_Handler_set_Sender_System_WeakReference"

	.byte 0,0
	.quad PubSub_Hub_Handler_set_Sender_System_WeakReference
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM182=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM183=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM184=Lfde11_end - Lfde11_start
	.long LDIFF_SYM184
Lfde11_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Handler_set_Sender_System_WeakReference

LDIFF_SYM185=Lme_b - PubSub_Hub_Handler_set_Sender_System_WeakReference
	.long LDIFF_SYM185
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/Handler:get_Type"
	.asciz "PubSub_Hub_Handler_get_Type"

	.byte 0,0
	.quad PubSub_Hub_Handler_get_Type
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM186=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM187=Lfde12_end - Lfde12_start
	.long LDIFF_SYM187
Lfde12_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Handler_get_Type

LDIFF_SYM188=Lme_c - PubSub_Hub_Handler_get_Type
	.long LDIFF_SYM188
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/Handler:set_Type"
	.asciz "PubSub_Hub_Handler_set_Type_System_Type"

	.byte 0,0
	.quad PubSub_Hub_Handler_set_Type_System_Type
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM189=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM190=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM191=Lfde13_end - Lfde13_start
	.long LDIFF_SYM191
Lfde13_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Handler_set_Type_System_Type

LDIFF_SYM192=Lme_d - PubSub_Hub_Handler_set_Type_System_Type
	.long LDIFF_SYM192
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/Handler:.ctor"
	.asciz "PubSub_Hub_Handler__ctor"

	.byte 0,0
	.quad PubSub_Hub_Handler__ctor
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM193=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM194=Lfde14_end - Lfde14_start
	.long LDIFF_SYM194
Lfde14_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Handler__ctor

LDIFF_SYM195=Lme_e - PubSub_Hub_Handler__ctor
	.long LDIFF_SYM195
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Exists<T>"
	.asciz "PubSub_PubSubExtensions_Exists_T_object"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Exists_T_object
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM196=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM197=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM198=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM199=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM200=Lfde15_end - Lfde15_start
	.long LDIFF_SYM200
Lfde15_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Exists_T_object

LDIFF_SYM201=Lme_f - PubSub_PubSubExtensions_Exists_T_object
	.long LDIFF_SYM201
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,153,12,154,11
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Publish<T>"
	.asciz "PubSub_PubSubExtensions_Publish_T_object"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Publish_T_object
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM202=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 2,141,16,11
	.asciz "V_0"

LDIFF_SYM203=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM204=Lfde16_end - Lfde16_start
	.long LDIFF_SYM204
Lfde16_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Publish_T_object

LDIFF_SYM205=Lme_10 - PubSub_PubSubExtensions_Publish_T_object
	.long LDIFF_SYM205
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Publish<T>"
	.asciz "PubSub_PubSubExtensions_Publish_T_object_T"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Publish_T_object_T
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM206=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM206
	.byte 2,141,16,3
	.asciz "data"

LDIFF_SYM207=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM207
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM208=Lfde17_end - Lfde17_start
	.long LDIFF_SYM208
Lfde17_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Publish_T_object_T

LDIFF_SYM209=Lme_11 - PubSub_PubSubExtensions_Publish_T_object_T
	.long LDIFF_SYM209
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_21:

	.byte 5
	.asciz "System_Action`1"

	.byte 104,16
LDIFF_SYM210=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM211=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM211
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM212=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM213=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 2
	.asciz "PubSub.PubSubExtensions:Subscribe<T>"
	.asciz "PubSub_PubSubExtensions_Subscribe_T_object_System_Action_1_T"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Subscribe_T_object_System_Action_1_T
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM214=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,141,16,3
	.asciz "handler"

LDIFF_SYM215=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM215
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM216=Lfde18_end - Lfde18_start
	.long LDIFF_SYM216
Lfde18_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Subscribe_T_object_System_Action_1_T

LDIFF_SYM217=Lme_12 - PubSub_PubSubExtensions_Subscribe_T_object_System_Action_1_T
	.long LDIFF_SYM217
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Unsubscribe"
	.asciz "PubSub_PubSubExtensions_Unsubscribe_object"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Unsubscribe_object
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM218=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM219=Lfde19_end - Lfde19_start
	.long LDIFF_SYM219
Lfde19_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Unsubscribe_object

LDIFF_SYM220=Lme_13 - PubSub_PubSubExtensions_Unsubscribe_object
	.long LDIFF_SYM220
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Unsubscribe<T>"
	.asciz "PubSub_PubSubExtensions_Unsubscribe_T_object"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Unsubscribe_T_object
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM221=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM222=Lfde20_end - Lfde20_start
	.long LDIFF_SYM222
Lfde20_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Unsubscribe_T_object

LDIFF_SYM223=Lme_14 - PubSub_PubSubExtensions_Unsubscribe_T_object
	.long LDIFF_SYM223
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_22:

	.byte 5
	.asciz "System_Action`1"

	.byte 104,16
LDIFF_SYM224=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM225=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM225
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM226=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM226
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM227=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2
	.asciz "PubSub.PubSubExtensions:Unsubscribe<T>"
	.asciz "PubSub_PubSubExtensions_Unsubscribe_T_object_System_Action_1_T"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Unsubscribe_T_object_System_Action_1_T
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM228=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,141,16,3
	.asciz "handler"

LDIFF_SYM229=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM230=Lfde21_end - Lfde21_start
	.long LDIFF_SYM230
Lfde21_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Unsubscribe_T_object_System_Action_1_T

LDIFF_SYM231=Lme_15 - PubSub_PubSubExtensions_Unsubscribe_T_object_System_Action_1_T
	.long LDIFF_SYM231
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:.cctor"
	.asciz "PubSub_PubSubExtensions__cctor"

	.byte 0,0
	.quad PubSub_PubSubExtensions__cctor
	.quad Lme_16

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM232=Lfde22_end - Lfde22_start
	.long LDIFF_SYM232
Lfde22_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions__cctor

LDIFF_SYM233=Lme_16 - PubSub_PubSubExtensions__cctor
	.long LDIFF_SYM233
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/<>c__DisplayClass8:.ctor"
	.asciz "PubSub_Hub__c__DisplayClass8__ctor"

	.byte 0,0
	.quad PubSub_Hub__c__DisplayClass8__ctor
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM234=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM235=Lfde23_end - Lfde23_start
	.long LDIFF_SYM235
Lfde23_start:

	.long 0
	.align 3
	.quad PubSub_Hub__c__DisplayClass8__ctor

LDIFF_SYM236=Lme_17 - PubSub_Hub__c__DisplayClass8__ctor
	.long LDIFF_SYM236
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/<>c__DisplayClass8:<Unsubscribe>b__6"
	.asciz "PubSub_Hub__c__DisplayClass8__Unsubscribeb__6_PubSub_Hub_Handler"

	.byte 0,0
	.quad PubSub_Hub__c__DisplayClass8__Unsubscribeb__6_PubSub_Hub_Handler
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM237=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM237
	.byte 2,141,16,3
	.asciz "a"

LDIFF_SYM238=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM239=Lfde24_end - Lfde24_start
	.long LDIFF_SYM239
Lfde24_start:

	.long 0
	.align 3
	.quad PubSub_Hub__c__DisplayClass8__Unsubscribeb__6_PubSub_Hub_Handler

LDIFF_SYM240=Lme_18 - PubSub_Hub__c__DisplayClass8__Unsubscribeb__6_PubSub_Hub_Handler
	.long LDIFF_SYM240
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_24:

	.byte 5
	.asciz "System_Action`1"

	.byte 104,16
LDIFF_SYM241=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM241
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM242=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM243=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM244=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM244
LTDIE_23:

	.byte 5
	.asciz "_<>c__DisplayClassf`1"

	.byte 32,16
LDIFF_SYM245=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 2,35,0,6
	.asciz "sender"

LDIFF_SYM246=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,35,16,6
	.asciz "handler"

LDIFF_SYM247=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM247
	.byte 2,35,24,0,7
	.asciz "_<>c__DisplayClassf`1"

LDIFF_SYM248=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM248
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM249=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM249
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM250=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 2
	.asciz "PubSub.Hub/<>c__DisplayClassf`1:.ctor"
	.asciz "PubSub_Hub__c__DisplayClassf_1__ctor"

	.byte 0,0
	.quad PubSub_Hub__c__DisplayClassf_1__ctor
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM251=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM252=Lfde25_end - Lfde25_start
	.long LDIFF_SYM252
Lfde25_start:

	.long 0
	.align 3
	.quad PubSub_Hub__c__DisplayClassf_1__ctor

LDIFF_SYM253=Lme_19 - PubSub_Hub__c__DisplayClassf_1__ctor
	.long LDIFF_SYM253
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/<>c__DisplayClassf`1:<Unsubscribe>b__b"
	.asciz "PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__b_PubSub_Hub_Handler"

	.byte 0,0
	.quad PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__b_PubSub_Hub_Handler
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM254=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM254
	.byte 2,141,24,3
	.asciz "a"

LDIFF_SYM255=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM256=Lfde26_end - Lfde26_start
	.long LDIFF_SYM256
Lfde26_start:

	.long 0
	.align 3
	.quad PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__b_PubSub_Hub_Handler

LDIFF_SYM257=Lme_1a - PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__b_PubSub_Hub_Handler
	.long LDIFF_SYM257
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/<>c__DisplayClassf`1:<Unsubscribe>b__c"
	.asciz "PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__c_PubSub_Hub_Handler"

	.byte 0,0
	.quad PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__c_PubSub_Hub_Handler
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM258=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,141,16,3
	.asciz "a"

LDIFF_SYM259=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM260=Lfde27_end - Lfde27_start
	.long LDIFF_SYM260
Lfde27_start:

	.long 0
	.align 3
	.quad PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__c_PubSub_Hub_Handler

LDIFF_SYM261=Lme_1b - PubSub_Hub__c__DisplayClassf_1__Unsubscribeb__c_PubSub_Hub_Handler
	.long LDIFF_SYM261
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub:Publish<!!0>"
	.asciz "PubSub_Hub_Publish___0_object___0"

	.byte 0,0
	.quad PubSub_Hub_Publish___0_object___0
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM262=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 2,141,40,3
	.asciz "sender"

LDIFF_SYM263=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 0,3
	.asciz "data"

LDIFF_SYM264=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 1,80,11
	.asciz "V_0"

LDIFF_SYM265=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM266=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM266
	.byte 3,141,224,0,11
	.asciz "V_2"

LDIFF_SYM267=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM267
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM268=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM268
	.byte 3,141,232,0,11
	.asciz "V_4"

LDIFF_SYM269=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM270=Lfde28_end - Lfde28_start
	.long LDIFF_SYM270
Lfde28_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Publish___0_object___0

LDIFF_SYM271=Lme_1d - PubSub_Hub_Publish___0_object___0
	.long LDIFF_SYM271
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,152,24,153,23,68,154,22
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_25:

	.byte 5
	.asciz "System_Action`1"

	.byte 104,16
LDIFF_SYM272=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM272
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM273=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM273
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM274=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM274
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM275=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2
	.asciz "PubSub.Hub:Subscribe<!!0>"
	.asciz "PubSub_Hub_Subscribe___0_object_System_Action_1___0"

	.byte 0,0
	.quad PubSub_Hub_Subscribe___0_object_System_Action_1___0
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM276=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM276
	.byte 2,141,24,3
	.asciz "sender"

LDIFF_SYM277=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM277
	.byte 2,141,32,3
	.asciz "handler"

LDIFF_SYM278=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM278
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM279=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM280=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM280
	.byte 3,141,192,0,11
	.asciz "V_2"

LDIFF_SYM281=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM281
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM282=Lfde29_end - Lfde29_start
	.long LDIFF_SYM282
Lfde29_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Subscribe___0_object_System_Action_1___0

LDIFF_SYM283=Lme_1e - PubSub_Hub_Subscribe___0_object_System_Action_1___0
	.long LDIFF_SYM283
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,151,16
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_26:

	.byte 5
	.asciz "_<>c__DisplayClassf`1"

	.byte 32,16
LDIFF_SYM284=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,35,0,6
	.asciz "sender"

LDIFF_SYM285=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM285
	.byte 2,35,16,6
	.asciz "handler"

LDIFF_SYM286=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM286
	.byte 2,35,24,0,7
	.asciz "_<>c__DisplayClassf`1"

LDIFF_SYM287=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM287
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM288=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM288
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM289=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 2
	.asciz "PubSub.Hub:Unsubscribe<!!0>"
	.asciz "PubSub_Hub_Unsubscribe___0_object_System_Action_1___0"

	.byte 0,0
	.quad PubSub_Hub_Unsubscribe___0_object_System_Action_1___0
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM290=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 2,141,56,3
	.asciz "sender"

LDIFF_SYM291=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM291
	.byte 3,141,192,0,3
	.asciz "handler"

LDIFF_SYM292=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM292
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM293=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM293
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM294=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM295=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 3,141,240,0,11
	.asciz "V_3"

LDIFF_SYM296=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM297=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 1,102,11
	.asciz "V_5"

LDIFF_SYM298=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM298
	.byte 1,101,11
	.asciz "V_6"

LDIFF_SYM299=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM299
	.byte 3,141,248,0,11
	.asciz "V_7"

LDIFF_SYM300=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM301=Lfde30_end - Lfde30_start
	.long LDIFF_SYM301
Lfde30_start:

	.long 0
	.align 3
	.quad PubSub_Hub_Unsubscribe___0_object_System_Action_1___0

LDIFF_SYM302=Lme_1f - PubSub_Hub_Unsubscribe___0_object_System_Action_1___0
	.long LDIFF_SYM302
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,149,24,150,23,68,151,22,152,21,68,154,20
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub:<Publish>b__1<!!0>"
	.asciz "PubSub_Hub__Publishb__1___0_PubSub_Hub_Handler"

	.byte 0,0
	.quad PubSub_Hub__Publishb__1___0_PubSub_Hub_Handler
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "a"

LDIFF_SYM303=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM303
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM304=Lfde31_end - Lfde31_start
	.long LDIFF_SYM304
Lfde31_start:

	.long 0
	.align 3
	.quad PubSub_Hub__Publishb__1___0_PubSub_Hub_Handler

LDIFF_SYM305=Lme_20 - PubSub_Hub__Publishb__1___0_PubSub_Hub_Handler
	.long LDIFF_SYM305
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Exists<!!0>"
	.asciz "PubSub_PubSubExtensions_Exists___0_object"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Exists___0_object
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM306=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM306
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM307=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM307
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM308=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM309=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM310=Lfde32_end - Lfde32_start
	.long LDIFF_SYM310
Lfde32_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Exists___0_object

LDIFF_SYM311=Lme_21 - PubSub_PubSubExtensions_Exists___0_object
	.long LDIFF_SYM311
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,153,14,154,13
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Publish<!!0>"
	.asciz "PubSub_PubSubExtensions_Publish___0_object"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Publish___0_object
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM312=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM312
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM313=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM314=Lfde33_end - Lfde33_start
	.long LDIFF_SYM314
Lfde33_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Publish___0_object

LDIFF_SYM315=Lme_22 - PubSub_PubSubExtensions_Publish___0_object
	.long LDIFF_SYM315
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Publish<!!0>"
	.asciz "PubSub_PubSubExtensions_Publish___0_object___0"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Publish___0_object___0
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM316=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM316
	.byte 2,141,24,3
	.asciz "data"

LDIFF_SYM317=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM317
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM318=Lfde34_end - Lfde34_start
	.long LDIFF_SYM318
Lfde34_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Publish___0_object___0

LDIFF_SYM319=Lme_23 - PubSub_PubSubExtensions_Publish___0_object___0
	.long LDIFF_SYM319
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Subscribe<!!0>"
	.asciz "PubSub_PubSubExtensions_Subscribe___0_object_System_Action_1___0"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Subscribe___0_object_System_Action_1___0
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM320=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM320
	.byte 2,141,16,3
	.asciz "handler"

LDIFF_SYM321=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM322=Lfde35_end - Lfde35_start
	.long LDIFF_SYM322
Lfde35_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Subscribe___0_object_System_Action_1___0

LDIFF_SYM323=Lme_24 - PubSub_PubSubExtensions_Subscribe___0_object_System_Action_1___0
	.long LDIFF_SYM323
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Unsubscribe<!!0>"
	.asciz "PubSub_PubSubExtensions_Unsubscribe___0_object"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Unsubscribe___0_object
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM324=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM325=Lfde36_end - Lfde36_start
	.long LDIFF_SYM325
Lfde36_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Unsubscribe___0_object

LDIFF_SYM326=Lme_25 - PubSub_PubSubExtensions_Unsubscribe___0_object
	.long LDIFF_SYM326
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.PubSubExtensions:Unsubscribe<!!0>"
	.asciz "PubSub_PubSubExtensions_Unsubscribe___0_object_System_Action_1___0"

	.byte 0,0
	.quad PubSub_PubSubExtensions_Unsubscribe___0_object_System_Action_1___0
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM327=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,141,16,3
	.asciz "handler"

LDIFF_SYM328=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM329=Lfde37_end - Lfde37_start
	.long LDIFF_SYM329
Lfde37_start:

	.long 0
	.align 3
	.quad PubSub_PubSubExtensions_Unsubscribe___0_object_System_Action_1___0

LDIFF_SYM330=Lme_26 - PubSub_PubSubExtensions_Unsubscribe___0_object_System_Action_1___0
	.long LDIFF_SYM330
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_28:

	.byte 5
	.asciz "System_Action`1"

	.byte 104,16
LDIFF_SYM331=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM331
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM332=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM332
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM333=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM333
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM334=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM334
LTDIE_27:

	.byte 5
	.asciz "_<>c__DisplayClassf`1"

	.byte 32,16
LDIFF_SYM335=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM335
	.byte 2,35,0,6
	.asciz "sender"

LDIFF_SYM336=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM336
	.byte 2,35,16,6
	.asciz "handler"

LDIFF_SYM337=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM337
	.byte 2,35,24,0,7
	.asciz "_<>c__DisplayClassf`1"

LDIFF_SYM338=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM338
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM339=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM339
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM340=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM340
	.byte 2
	.asciz "PubSub.Hub/<>c__DisplayClassf`1<!0>:.ctor"
	.asciz "PubSub_Hub__c__DisplayClassf_1__0__ctor"

	.byte 0,0
	.quad PubSub_Hub__c__DisplayClassf_1__0__ctor
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM341=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM341
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM342=Lfde38_end - Lfde38_start
	.long LDIFF_SYM342
Lfde38_start:

	.long 0
	.align 3
	.quad PubSub_Hub__c__DisplayClassf_1__0__ctor

LDIFF_SYM343=Lme_27 - PubSub_Hub__c__DisplayClassf_1__0__ctor
	.long LDIFF_SYM343
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/<>c__DisplayClassf`1<!0>:<Unsubscribe>b__b"
	.asciz "PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__b_PubSub_Hub_Handler"

	.byte 0,0
	.quad PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__b_PubSub_Hub_Handler
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM344=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM344
	.byte 2,141,32,3
	.asciz "a"

LDIFF_SYM345=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM346=Lfde39_end - Lfde39_start
	.long LDIFF_SYM346
Lfde39_start:

	.long 0
	.align 3
	.quad PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__b_PubSub_Hub_Handler

LDIFF_SYM347=Lme_28 - PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__b_PubSub_Hub_Handler
	.long LDIFF_SYM347
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "PubSub.Hub/<>c__DisplayClassf`1<!0>:<Unsubscribe>b__c"
	.asciz "PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__c_PubSub_Hub_Handler"

	.byte 0,0
	.quad PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__c_PubSub_Hub_Handler
	.quad Lme_29

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM348=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM348
	.byte 2,141,24,3
	.asciz "a"

LDIFF_SYM349=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM349
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM350=Lfde40_end - Lfde40_start
	.long LDIFF_SYM350
Lfde40_start:

	.long 0
	.align 3
	.quad PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__c_PubSub_Hub_Handler

LDIFF_SYM351=Lme_29 - PubSub_Hub__c__DisplayClassf_1__0__Unsubscribeb__c_PubSub_Hub_Handler
	.long LDIFF_SYM351
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper delegate-invoke) System.Func`2<PubSub.Hub/Handler, bool>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_PubSub_Hub_Handler_bool_invoke_TResult_T_PubSub_Hub_Handler"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_PubSub_Hub_Handler_bool_invoke_TResult_T_PubSub_Hub_Handler
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM352=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM353=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM354=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM354
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM355=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM356=Lfde41_end - Lfde41_start
	.long LDIFF_SYM356
Lfde41_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_PubSub_Hub_Handler_bool_invoke_TResult_T_PubSub_Hub_Handler

LDIFF_SYM357=Lme_2e - wrapper_delegate_invoke_System_Func_2_PubSub_Hub_Handler_bool_invoke_TResult_T_PubSub_Hub_Handler
	.long LDIFF_SYM357
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_29:

	.byte 5
	.asciz "System_Array"

	.byte 16,16
LDIFF_SYM358=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM358
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM359=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM359
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM360=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM360
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM361=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM361
	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<T>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_T"

	.byte 0,0
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM362=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM363=Lfde42_end - Lfde42_start
	.long LDIFF_SYM363
Lfde42_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T

LDIFF_SYM364=Lme_2f - System_Array_InternalArray__IEnumerable_GetEnumerator_T
	.long LDIFF_SYM364
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_get_Count"
	.asciz "System_Array_InternalArray__ICollection_get_Count"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_get_Count
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM365=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM365
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM366=Lfde43_end - Lfde43_start
	.long LDIFF_SYM366
Lfde43_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_get_Count

LDIFF_SYM367=Lme_30 - System_Array_InternalArray__ICollection_get_Count
	.long LDIFF_SYM367
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_get_IsReadOnly"
	.asciz "System_Array_InternalArray__ICollection_get_IsReadOnly"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly
	.quad Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM368=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM368
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM369=Lfde44_end - Lfde44_start
	.long LDIFF_SYM369
Lfde44_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly

LDIFF_SYM370=Lme_31 - System_Array_InternalArray__ICollection_get_IsReadOnly
	.long LDIFF_SYM370
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Clear"
	.asciz "System_Array_InternalArray__ICollection_Clear"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_Clear
	.quad Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM371=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM371
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM372=Lfde45_end - Lfde45_start
	.long LDIFF_SYM372
Lfde45_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Clear

LDIFF_SYM373=Lme_32 - System_Array_InternalArray__ICollection_Clear
	.long LDIFF_SYM373
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Add<T>"
	.asciz "System_Array_InternalArray__ICollection_Add_T_T"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_Add_T_T
	.quad Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM374=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM375=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM375
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM376=Lfde46_end - Lfde46_start
	.long LDIFF_SYM376
Lfde46_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Add_T_T

LDIFF_SYM377=Lme_33 - System_Array_InternalArray__ICollection_Add_T_T
	.long LDIFF_SYM377
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Remove<T>"
	.asciz "System_Array_InternalArray__ICollection_Remove_T_T"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_Remove_T_T
	.quad Lme_34

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM378=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM379=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM379
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM380=Lfde47_end - Lfde47_start
	.long LDIFF_SYM380
Lfde47_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Remove_T_T

LDIFF_SYM381=Lme_34 - System_Array_InternalArray__ICollection_Remove_T_T
	.long LDIFF_SYM381
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Contains<T>"
	.asciz "System_Array_InternalArray__ICollection_Contains_T_T"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_Contains_T_T
	.quad Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM382=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 1,106,3
	.asciz "item"

LDIFF_SYM383=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM383
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM384=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM384
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM385=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM386=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM386
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM387=Lfde48_end - Lfde48_start
	.long LDIFF_SYM387
Lfde48_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Contains_T_T

LDIFF_SYM388=Lme_35 - System_Array_InternalArray__ICollection_Contains_T_T
	.long LDIFF_SYM388
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_CopyTo<T>"
	.asciz "System_Array_InternalArray__ICollection_CopyTo_T_T___int"

	.byte 0,0
	.quad System_Array_InternalArray__ICollection_CopyTo_T_T___int
	.quad Lme_36

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM389=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM389
	.byte 1,104,3
	.asciz "array"

LDIFF_SYM390=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM390
	.byte 1,105,3
	.asciz "index"

LDIFF_SYM391=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM392=Lfde49_end - Lfde49_start
	.long LDIFF_SYM392
Lfde49_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_CopyTo_T_T___int

LDIFF_SYM393=Lme_36 - System_Array_InternalArray__ICollection_CopyTo_T_T___int
	.long LDIFF_SYM393
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,149,11,68,150,10,151,9,68,152,8,153,7,68,154,6
	.align 3
Lfde49_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_30:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 104,16
LDIFF_SYM394=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM395=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM395
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM396=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM396
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM397=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM397
	.byte 2
	.asciz "(wrapper delegate-invoke) System.Predicate`1<PubSub.Hub/Handler>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_PubSub_Hub_Handler_invoke_bool_T_PubSub_Hub_Handler"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_PubSub_Hub_Handler_invoke_bool_T_PubSub_Hub_Handler
	.quad Lme_37

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM398=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM399=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM399
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM400=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM400
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM401=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM401
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM402=Lfde50_end - Lfde50_start
	.long LDIFF_SYM402
Lfde50_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_PubSub_Hub_Handler_invoke_bool_T_PubSub_Hub_Handler

LDIFF_SYM403=Lme_37 - wrapper_delegate_invoke_System_Predicate_1_PubSub_Hub_Handler_invoke_bool_T_PubSub_Hub_Handler
	.long LDIFF_SYM403
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde50_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_31:

	.byte 5
	.asciz "System_Action`1"

	.byte 104,16
LDIFF_SYM404=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM405=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM405
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM406=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM406
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM407=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 2
	.asciz "(wrapper delegate-invoke) System.Action`1<PubSub.Hub/Handler>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_PubSub_Hub_Handler_invoke_void_T_PubSub_Hub_Handler"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_PubSub_Hub_Handler_invoke_void_T_PubSub_Hub_Handler
	.quad Lme_38

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM408=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM409=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM410=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM410
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM411=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM411
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM412=Lfde51_end - Lfde51_start
	.long LDIFF_SYM412
Lfde51_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_PubSub_Hub_Handler_invoke_void_T_PubSub_Hub_Handler

LDIFF_SYM413=Lme_38 - wrapper_delegate_invoke_System_Action_1_PubSub_Hub_Handler_invoke_void_T_PubSub_Hub_Handler
	.long LDIFF_SYM413
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.align 3
Lfde51_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_32:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 104,16
LDIFF_SYM414=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM414
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM415=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM415
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM416=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM416
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM417=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM417
	.byte 2
	.asciz "(wrapper delegate-invoke) System.Comparison`1<PubSub.Hub/Handler>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_PubSub_Hub_Handler_invoke_int_T_T_PubSub_Hub_Handler_PubSub_Hub_Handler"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_PubSub_Hub_Handler_invoke_int_T_T_PubSub_Hub_Handler_PubSub_Hub_Handler
	.quad Lme_39

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM418=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM418
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM419=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM419
	.byte 2,141,32,3
	.asciz "param1"

LDIFF_SYM420=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM421=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM421
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM422=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM422
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM423=Lfde52_end - Lfde52_start
	.long LDIFF_SYM423
Lfde52_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_PubSub_Hub_Handler_invoke_int_T_T_PubSub_Hub_Handler_PubSub_Hub_Handler

LDIFF_SYM424=Lme_39 - wrapper_delegate_invoke_System_Comparison_1_PubSub_Hub_Handler_invoke_int_T_T_PubSub_Hub_Handler_PubSub_Hub_Handler
	.long LDIFF_SYM424
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3
	.align 3
Lfde52_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:

	.long Ldebug_line_end - . -4
	.short 2
	.long Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section __DWARF, __debug_line,regular,debug

	.byte 0
	.asciz "<unknown>"

	.byte 0,0,0,0
Ldebug_line_header_end:

	.byte 0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
