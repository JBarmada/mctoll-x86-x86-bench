	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ## -- Begin function func0
	.p2align	4, 0x90
_func0:                                 ## @func0
	.cfi_startproc
	// Save the frame pointer
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset x29, -16
	.cfi_offset x30, -24
	// Save the link register
	stp	x19, x20, [sp, -32]!
	.cfi_def_cfa_offset 32
	// Save the return address
	stp	x21, x22, [sp, -40]!
	.cfi_def_cfa_offset 40
	// Save the stack pointer
	stp	x28, x29, [sp, -56]!
	.cfi_def_cfa_offset 56
	// Save the callee-saved registers
	stp	x18, x17, [sp, -64]!
	stp	x16, x15, [sp, -72]!
	stp	x14, x13, [sp, -80]!
	stp	x12, x11, [sp, -88]!
	stp	x10, x9, [sp, -96]!
	stp	x8, x7, [sp, -104]!
	stp	x6, x5, [sp, -112]!
	stp	x4, x3, [sp, -120]!
	stp	x2, x1, [sp, -128]!
	// Save the callee-saved registers
	stp	x31, x30, [sp, -136]!
	.cfi_def_cfa_offset 136
	// Save the callee-saved registers
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	// Save the callee-saved registers
	stp	x28, x29, [sp, -152]!
	.cfi_def_cfa_offset 152
	// Save the callee-saved registers
	stp	x27, x28, [sp, -160]!
	.cfi_def_cfa_offset 160
	// Save the callee-saved registers
	stp	x26, x27, [sp, -168]!
	.cfi_def_cfa_offset 168
	// Save the callee-saved registers
	stp	x25, x26, [sp, -176]!
	.cfi_def_cfa_offset 176
	// Save the callee-saved registers
	stp	x24, x25, [sp, -184]!
	.cfi_def_cfa_offset 184
	// Save the callee-saved registers
	stp	x23, x24, [sp, -192]!
	.cfi_def_cfa_offset 192
	// Save the callee-saved registers
	stp	x22, x23, [sp, -200]!
	.cfi_def_cfa_offset 200
	// Save the callee-saved registers
	stp	x21, x22, [sp, -208]!
	.cfi_def_cfa_offset 208
	// Save the callee-saved registers
	stp	x20, x21, [sp, -216]!
	.cfi_def_cfa_offset 216
	// Save the callee-saved registers
	stp	x19, x20, [sp, -224]!
	.cfi_def_cfa_offset 224
	// Save the callee-saved registers
	stp	x18, x19, [sp, -232]!
	.cfi_def_cfa_offset 232
	// Save the callee-saved registers
	stp	x17, x18, [sp, -240]!
	.cfi_def_cfa_offset 240
	// Save the callee-saved registers
	stp	x16, x17, [sp, -248]!
	.cfi_def_cfa_offset 248
	// Save the callee-saved registers
	stp	x15, x16, [sp, -256]!
	.cfi_def_cfa_offset 256
	// Save the callee-saved registers
	stp	x14, x15, [sp, -264]!
	.cfi_def_cfa_offset 264
	// Save the callee-saved registers
	stp	x13, x14, [sp, -272]!
	.cfi_def_cfa_offset 272
	// Save the callee-saved registers
	stp	x12, x13, [sp, -280]!
	.cfi_def_cfa_offset 280
	// Save the callee-saved registers
	stp	x11, x12, [sp, -288]!
	.cfi_def_cfa_offset 288
	// Save the callee-saved registers
	stp	x10, x11, [sp, -296]!
	.cfi_def_cfa_offset 296
	// Save the callee-saved registers
	stp	x9, x10, [sp, -304]!
	.cfi_def_cfa_offset 304
	// Save the callee-saved registers
	stp	x8, x9, [sp, -312]!
	.cfi_def_cfa_offset 312
	// Save the callee-saved registers
	stp	x7, x8, [sp, -320]!
	.cfi_def_cfa_offset 320
	// Save the callee-saved registers
	stp	x6, x7, [sp, -328]!
	.cfi_def_cfa_offset 328
	// Save the callee-saved registers
	stp	x5, x6, [sp, -336]!
	.cfi_def_cfa_offset 336
	// Save the callee-saved registers
	stp	x4, x5, [sp, -344]!
	.cfi_def_cfa_offset 344
	// Save the callee-saved registers
	stp	x3, x4, [sp, -352]!
	.cfi_def_cfa_offset 352
	// Save the callee-saved registers
	stp	x2, x3, [sp, -360]!
	.cfi_def_cfa_offset 360
	// Save the callee-saved registers
	stp	x1, x2, [sp, -368]!
	.cfi_def_cfa_offset 368
	// Save the callee-saved registers
	stp	x0, x1, [sp, -376]!
	.cfi_def_cfa_offset 376
	// Save the callee-saved registers
	stp	x30, x31, [sp, -384]!
	.cfi_def_cfa_offset 384
	// Save the callee-saved registers
	stp	x29, x30, [sp, -392]!
	.cfi_def_cfa_offset 392
	// Save the callee-saved registers
	stp	x28, x29, [sp, -400]!
	.cfi_def_cfa_offset 400
	// Save the callee-saved registers
	stp	x27, x28, [sp, -408]!
	.cfi_def_cfa_offset 408
	// Save the callee-saved registers
	stp	x26, x27, [sp, -416]!
	.cfi_def_cfa_offset 416
	// Save the callee-saved registers
	stp	x25, x26, [sp, -424]!
	.cfi_def_cfa_offset 424
	// Save the callee-saved registers
	stp	x24, x25, [sp, -432]!
	.cfi_def_cfa_offset 432
	// Save the callee-saved registers
	stp	x23, x24, [sp, -440]!
	.cfi_def_cfa_offset 440
	// Save the callee-saved registers
	stp	x22, x23, [sp, -448]!
	.cfi_def_cfa_offset 448
	// Save the callee-saved registers
	stp	x21, x22, [sp, -456]!
	.cfi_def_cfa_offset 456
	// Save the callee-saved registers
	stp	x20, x21, [sp, -464]!
	.cfi_def_cfa_offset 464
	// Save the callee-saved registers
	stp	x19, x20, [sp, -472]!
	.cfi_def_cfa_offset 472
	// Save the callee-saved registers
	stp	x18, x19, [sp, -480]!
	.cfi_def_cfa_offset 480
	// Save the callee-saved registers
	stp	x17, x18, [sp, -488]!
	.cfi_def_cfa_offset 488
	// Save the callee-saved registers
	stp	x16, x17, [sp, -496]!
	.cfi_def_cfa_offset 496
	// Save the callee-saved registers
	stp	x15, x16, [sp, -504]!
	.cfi_def_cfa_offset 504
	// Save the callee-saved registers
	stp	x14, x15, [sp, -512]!
	.cfi_def_cfa_offset 512
	// Save the callee-saved registers
	stp	x13, x14, [sp, -520]!
	.cfi_def_cfa_offset 520
	// Save the callee-saved registers
	stp	x12, x13, [sp, -528]!
	.cfi_def_cfa_offset 528
	// Save the callee-saved registers
	stp	x11, x12, [sp, -536]!
	.cfi_def_cfa_offset 536
	// Save the callee-saved registers
	stp	x10, x11, [sp, -544]!
	.cfi_def_cfa_offset 544
	// Save the callee-saved registers
	stp	x9, x10, [sp, -552]!
	.cfi_def_cfa_offset 552
	// Save the callee-saved registers
	stp	x8, x9, [sp, -560]!
	.cfi_def_cfa_offset 560
	// Save the callee-saved registers
	stp	x7, x8, [sp, -568]!
	.cfi_def_cfa_offset 568
	// Save the callee-saved registers
	stp	x6, x7, [sp, -576]!
	.cfi_def_cfa_offset 576
	// Save the callee-saved registers
	stp	x5, x6, [sp, -584]!
	.cfi_def_cfa_offset 584
	// Save the callee-saved registers
	stp	x4, x5, [sp, -592]!
	.cfi_def_cfa_offset 592
	// Save the callee-saved registers
	stp	x3, x4, [sp, -600]!
	.cfi_def_cfa_offset 600
	// Save the callee-saved registers
	stp	x2, x3, [sp, -608]!
	.cfi_def_cfa_offset 608
	// Save the callee-saved registers
	stp	x1, x2, [sp, -616]!
	.cfi_def_cfa_offset 616
	// Save the callee-saved registers
	stp	x0, x1, [sp, -624]!
	.cfi_def_cfa_offset 624
	// Save the callee-saved registers
	stp	x30, x31, [sp, -632]!
	.cfi_def_cfa_offset 632
	// Save the callee-saved registers
	stp	x29, x30, [sp, -640]!
	.cfi_def_cfa_offset 640
	// Save the callee-saved registers
	stp	x28, x29, [sp, -648]!
	.cfi_def_cfa_offset 648
	// Save the callee-saved registers
	stp	x27, x28, [sp, -656]!
	.cfi_def_cfa_offset 656
	// Save the callee-saved registers
	stp	x26, x27, [sp, -664]!
	.cfi_def_cfa_offset 664
	// Save the callee-saved registers
	stp	x25, x26, [sp, -672]!
	.cfi_def_cfa_offset 672
	// Save the callee-saved registers
	stp	x24, x25, [sp, -680]!
	.cfi_def_cfa_offset 680
	// Save the callee-saved registers
	stp	x23, x24, [sp, -688]!
	.cfi_def_cfa_offset 688
	// Save the callee-saved registers
	stp	x22, x23, [sp, -696]!
	.cfi_def_cfa_offset 696
	// Save the callee-saved registers
	stp	x21, x22, [sp, -704]!
	.cfi_def_cfa_offset 704
	// Save the callee-saved registers
	stp	x20, x21, [sp, -712]!
	.cfi_def_cfa_offset 712
	// Save the callee-saved registers
	stp	x19, x20, [sp, -720]!
	.cfi_def_cfa_offset 720
	// Save the callee-saved registers
	stp	x18, x19, [sp, -728]!
	.cfi_def_cfa_offset 728
	// Save the callee-saved registers
	stp	x17, x18, [sp, -736]!
	.cfi_def_cfa_offset 736
	// Save the callee-saved registers
	stp	x16, x17, [sp, -744]!
	.cfi_def_cfa_offset 744
	// Save the callee-saved registers
	stp	x15, x16, [sp, -752]!
	.cfi_def_cfa_offset 752
	// Save the callee-saved registers
	stp	x14, x15, [sp, -760]!
	.cfi_def_cfa_offset 760
	// Save the callee-saved registers
	stp	x13, x14, [sp, -768]!
	.cfi_def_cfa_offset 768
	// Save the callee-saved registers
	stp	x12, x13, [sp, -776]!
	.cfi_def_cfa_offset 776
	// Save the callee-saved registers
	stp	x11, x12, [sp, -784]!
	.cfi_def_cfa_offset 784
	// Save the callee-saved registers
	stp	x10, x11, [sp, -792]!
	.cfi_def_cfa_offset 792
	// Save the callee-saved registers
	stp	x9, x10, [sp, -800]!
	.cfi_def_cfa_offset 800
	// Save the callee-saved registers
	stp	x8, x9, [sp, -808]!
	.cfi_def_cfa_offset 808
	// Save the callee-saved registers
	stp	x7, x8, [sp, -816]!
	.cfi_def_cfa_offset 816
	// Save the callee-saved registers
	stp	x6, x7, [sp, -824]!
	.cfi_def_cfa_offset 824
	// Save the callee-saved registers
	stp	x5, x6, [sp, -832]!
	.cfi_def_cfa_offset 832
	// Save the callee-saved registers
	stp	x4, x5, [sp, -840]!
	.cfi_def_cfa_offset 840
	// Save the callee-saved registers
	stp	x3, x4, [sp, -848]!
	.cfi_def_cfa_offset 848
	// Save the callee-saved registers
	stp	x2, x3, [sp, -856]!
	.cfi_def_cfa_offset 856
	// Save the callee-saved registers
	stp	x1, x2, [sp, -864]!
	.cfi_def_cfa_offset 864
	// Save the callee-saved registers
	stp	x0, x1, [sp, -872]!
	.cfi_def_cfa_offset 872
	// Save the callee-saved registers
	stp	x30, x31, [sp, -880]!
	.cfi_def_cfa_offset 880
	// Save the callee-saved registers
	stp	x29, x30, [sp, -888]!
	.cfi_def_cfa_offset 888
	// Save the callee-saved registers
	stp	x28, x29, [sp, -896]!
	.cfi_def_cfa_offset 896
	// Save the callee-saved registers
	stp	x27, x28, [sp, -904]!
	.cfi_def_cfa_offset 904
	// Save the callee-saved registers
	stp	x26, x27, [sp, -912]!
	.cfi_def_cfa_offset 912
	// Save the callee-saved registers
	stp	x25, x26, [sp, -920]!
	.cfi_def_cfa_offset 920
	// Save the callee-saved registers
	stp	x24, x25, [sp, -928]!
	.cfi_def_cfa_offset 928
	// Save the callee-saved registers
	stp	x23, x24, [sp, -936]!
	.cfi_def_cfa_offset 936
	// Save the callee-saved registers
	stp	x22, x23, [sp, -944]!
	.cfi_def_cfa_offset 944
	// Save the callee-saved registers
	stp	x21, x22, [sp, -952]!
	.cfi_def_cfa_offset 952
	// Save the callee-saved registers
	stp	x20, x21, [sp, -960]!
	.cfi_def_cfa_offset 960
	// Save the callee-saved registers
	stp	x19, x20, [sp, -968]!
	.cfi_def_cfa_offset 968
	// Save the callee-saved registers
	stp	x18, x19, [sp, -976]!
	.cfi_def_cfa_offset 976
	// Save the callee-saved registers
	stp	x17, x18, [sp, -984]!
	.cfi_def_cfa_offset 984
	// Save the callee-saved registers
	stp	x16, x17, [sp, -992]!
	.cfi_def_cfa_offset 992
	// Save the callee-saved registers
	stp	x15, x16, [sp, -1000]!
	.cfi_def_cfa_offset 1000
	// Save the callee-saved registers
	stp	x14, x15, [sp, -1008]!
	.cfi_def_cfa_offset 1008
	// Save the callee-saved registers
	stp	x13, x14, [sp, -1016]!
	.cfi_def_cfa_offset 1016
	// Save the callee-saved registers
	stp	x12, x13, [sp, -1024]!
	.cfi_def_cfa_offset 1024
	// Save the callee-saved registers
	stp	x11, x12, [sp, -1032]!
	.cfi_def_cfa_offset 1032
	// Save the callee-saved registers
	stp	x10, x11, [sp, -1040]!
	.cfi_def_cfa_offset 1040
	// Save the callee-saved registers
	stp	x9, x10, [sp, -1048]!
	.cfi_def_cfa_offset 1048
	// Save the callee-saved registers
	stp	x8, x9, [sp, -1056]!
	.cfi_def_cfa_offset 1056
	// Save the callee-saved registers
	stp	x7, x8, [sp, -1064]!
	.cfi_def_cfa_offset 1064
	// Save the callee-saved registers
	stp	x6, x7, [sp, -1072]!
	.cfi_def_cfa_offset 1072
	// Save the callee-saved registers
	stp	x5, x6, [sp, -1080]!
	.cfi_def_cfa_offset 1080
	// Save the callee-saved registers
	stp	x4, x5, [sp, -1088]!
	.cfi_def_cfa_offset 1088
	// Save the callee-saved registers
	stp	x3, x4, [sp, -1096]!
	.cfi_def_cfa_offset 1096
	// Save the callee-saved registers
	stp	x2, x3, [sp, -1104]!
	.cfi_def_cfa_offset 1104
	// Save the callee-saved registers
	stp	x1, x2, [sp, -1112]!
	.cfi_def_cfa_offset 1112
	// Save the callee-saved registers
	stp	x0, x1, [sp, -1120]!
	.cfi_def_cfa_offset 1120
	// Save the callee-saved registers
	stp	x30, x31, [sp, -1128]!
	.cfi_def_cfa_offset 1128
	// Save the callee-saved registers
	stp	x29, x30, [sp, -1136]!
	.cfi_def_cfa_offset 1136
	// Save the callee-saved registers
	stp	x28, x29, [sp, -1144]!
	.cfi_def_cfa_offset 1144
	// Save the callee-saved registers
	stp	x27, x28, [sp, -1152]!
	.cfi_def_cfa_offset 1152
	// Save the callee-saved registers
	stp	x26, x27, [sp, -1160]!
	.cfi_def_cfa_offset 1160
	// Save the callee-saved registers
	stp	x25, x26, [sp, -1168]!
	.cfi_def_cfa_offset 1168
	// Save the callee-saved registers
	stp	x24, x25, [sp, -1176]!
	.cfi_def_cfa_offset 1176
	// Save the callee-saved registers
	stp	x23, x24, [sp, -1184]!
	.cfi_def_cfa_offset 1184
	// Save the callee-saved registers
	stp	x22, x23, [sp, -1192]!
	.cfi_def_cfa_offset 1192
	// Save the callee-saved registers
	stp	x21, x22, [sp, -1200]!
	.cfi_def_cfa_offset 1200
	// Save the callee-saved registers
	stp	x20, x21, [sp, -1208]!
	.cfi_def_cfa_offset 1208
	// Save the callee-saved registers
	stp	x19, x20, [sp, -1216]!
	.cfi_def_cfa_offset 1216
	// Save the callee-saved registers
	stp	x18, x19, [sp, -1224]!
	.cfi_def_cfa_offset 1224
	// Save the callee-saved registers
	stp	x17, x18, [sp, -1232]!
	.cfi_def_cfa_offset 1232
	// Save the callee-saved registers
	stp	x16, x17, [sp, -1240]!
	.cfi_def_cfa_offset 1240
	// Save the callee-saved registers
	stp	x15, x16, [sp, -1248]!
	.cfi_def_cfa_offset 1248
	// Save the callee-saved registers
	stp	x14, x15, [sp, -1256]!
	.cfi_def_cfa_offset 1256
	// Save the callee-saved registers
	stp	x13, x14, [sp, -1264]!
	.cfi_def_cfa_offset 1264
	// Save the callee-saved registers
	stp	x12, x13, [sp, -1272]!
	.cfi_def_cfa_offset 1272
	// Save the callee-saved registers
	stp	x11, x12, [sp, -1280]!
	.cfi_def_cfa_offset 1280
	// Save the callee-saved registers
	stp	x10, x11, [sp, -1288]!
	.cfi_def_cfa_offset 1288
	// Save the callee-saved registers
	stp	x9, x10, [sp, -1296]!
	.cfi_def_cfa_offset 1296
	// Save the callee-saved registers
	stp	x8, x9, [sp, -1304]!
	.cfi_def_cfa_offset 1304
	// Save the callee-saved registers
	stp	x7, x8, [sp, -1312]!
	.cfi_def_cfa_offset 1312
	// Save the callee-saved registers
	stp	x6, x7, [sp, -1320]!
	.cfi_def_cfa_offset 1320
	// Save the callee-saved registers
	stp	x5, x6, [sp, -1328]!
	.cfi_def_cfa_offset 1328
	// Save the callee-saved registers
	stp	x4, x5, [sp, -1336]!
	.cfi_def_cfa_offset 1336
	// Save the callee-saved registers
	stp	x3, x4, [sp, -1344]!
	.cfi_def_cfa_offset 1344
	// Save the callee-saved registers
	stp	x2, x3, [sp, -1352]!
	.cfi_def_cfa_offset 1352
	// Save the callee-saved registers
	stp	x1, x2, [sp, -1360]!
	.cfi_def_cfa_offset 1360
	// Save the callee-saved registers
	stp	x0, x1, [sp, -1368]!
	.cfi_def_cfa_offset 1368
	// Save the callee-saved registers
	stp	x30, x31, [sp, -1376]!
	.cfi_def_cfa_offset 1376
	// Save the callee-saved registers
	stp	x29, x30, [sp, -1384]!
	.cfi_def_cfa_offset 1384
	// Save the callee-saved registers
	stp	x28, x29, [sp, -1392]!
	.cfi_def_cfa_offset 1392
	// Save the callee-saved registers
	stp	x27, x28, [sp, -1400]!
	.cfi_def_cfa_offset 1400
	// Save the callee-saved registers
	stp	x26, x27, [sp, -1408]!
	.cfi_def_cfa_offset 1408
	// Save the callee-saved registers
	stp	x25, x26, [sp, -1416]!
	.cfi_def_cfa_offset 1416
	// Save the callee-saved registers
	stp	x24, x25, [sp, -1424]!
	.cfi_def_cfa_offset 1424
	// Save the callee-saved registers
	stp	x23, x24, [sp, -1432]!
	.cfi_def_cfa_offset 1432
	// Save the callee-saved registers
	stp	x22, x23, [sp, -1440]!
	.cfi_def_cfa_offset 1440
	// Save the callee-saved registers
	stp	x21, x22, [sp, -1448]!
	.cfi_def_cfa_offset 1448
	// Save the callee-saved registers
	stp	x20, x21, [sp, -1456]!
	.cfi_def_cfa_offset 1456
	// Save the callee-saved registers
	stp	x19, x20, [sp, -1464]!
	.cfi_def_cfa_offset 1464
	// Save the callee-saved registers
	stp	x18, x19, [sp, -1472]!
	.cfi_def_cfa_offset 1472
	// Save the callee-saved registers
	stp	x17, x18, [sp, -1480]!
	.cfi_def_cfa_offset 1480
	// Save the callee-saved registers
	stp	x16, x17, [sp, -1488]!
	.cfi_def_cfa_offset 1488
	// Save the callee-saved registers
	stp	x15, x16, [sp, -1496]!
	.cfi_def_cfa_offset 1496
	// Save the callee-saved registers
	stp	x14, x15, [sp, -1504]!
	.cfi_def_cfa_offset 1504
	// Save the callee-saved registers
	stp	x13, x14, [sp, -1512]!
	.cfi_def_cfa_offset 1512
	// Save the callee-saved registers
	stp	x12, x13, [sp, -1520]!
	.cfi_def_cfa_offset 1520
	// Save the callee-saved registers
	stp	x11, x12, [sp, -1528]!
	.cfi_def_cfa_offset 1528
	// Save the callee-saved registers
	stp	x10, x11, [sp, -1536]!
	.cfi_def_cfa_offset 1536
	// Save the callee-saved registers
	stp	x9, x10, [sp, -1544]!
	.cfi_def_cfa_offset 1544
	// Save the callee-saved registers
	stp	x8, x9, [sp, -1552]!
	.cfi_def_cfa_offset 1552
	// Save the callee-saved registers
	stp	x7, x8, [sp, -1560]!
	.cfi_def_cfa_offset 1560
	// Save the callee-saved registers
	stp	x6, x7, [sp, -1568]!
	.cfi_def_cfa_offset 1568
	// Save the callee-saved registers
	stp	x5, x6, [sp, -1576]!
	.cfi_def_cfa_offset 1576
	// Save the callee-saved registers
	stp	x4, x5, [sp, -1584]!
	.cfi_def_cfa_offset 1584
	// Save the callee-saved registers
	stp	x3, x4, [sp, -1592]!
	.cfi_def_cfa_offset 1592
	// Save the callee-saved registers
	stp	x2, x3, [sp, -1600]!
	.cfi_def_cfa_offset 1600
	// Save the callee-saved registers
	stp	x1, x2, [sp, -1608]!
	.cfi_def_cfa_offset 1608
	// Save the callee-saved registers
	stp	x0, x1, [sp, -1616]!
	.cfi_def_cfa_offset 1616
	// Save the callee-saved registers
	stp	x30, x31, [sp, -1624]!
	.cfi_def_cfa_offset 1624
	// Save the callee-saved registers
	stp	x29, x30, [sp, -1632]!
	.cfi_def_cfa_offset 1632
	// Save the callee-saved registers
	stp	x28, x29, [sp, -1640]!
	.cfi_def_cfa_offset 1640
	// Save the callee-saved registers
	stp	x27, x28, [sp, -1648]!
	.cfi_def_cfa_offset 1648
	// Save the callee-saved registers
	stp	x26, x27, [sp, -1656]!
	.cfi_def_cfa_offset 1656
	// Save the callee-saved registers
	stp	x25, x26, [sp, -1664]!
	.cfi_def_cfa_offset 1664
	// Save the callee-saved registers
	stp	x24, x25, [sp, -1672]!
	.cfi_def_cfa_offset 1672
	// Save the callee-saved registers
	stp	x23, x24, [sp, -1680]!
	.cfi_def_cfa_offset 1680
	// Save the callee-saved registers
	stp	x22, x23, [sp, -1688]!
	.cfi_def_cfa_offset 1688
	// Save the callee-saved registers
	stp	x21, x22, [sp, -1696]!
	.cfi_def_cfa_offset 1696
	// Save the callee-saved registers
	stp	x20, x21, [sp, -1704]!
	.cfi_def_cfa_offset 1704
	// Save the callee-saved registers
	stp	x19, x20, [sp, -1712]!
	.cfi_def_cfa_offset 1712
	// Save the callee-saved registers
	stp	x18, x19, [sp, -1720]!
	.cfi_def_cfa_offset 1720
	// Save the callee-saved registers
	stp	x17, x18, [sp, -1728]!
	.cfi_def_cfa_offset 1728
	// Save the callee-saved registers
	stp	x16, x17, [sp, -1736]!
	.cfi_def_cfa_offset 1736
	// Save the callee-saved registers
	stp	x15, x16, [sp, -1744]!
	.cfi_def_cfa_offset 1744
	// Save the callee-saved registers
	stp	x14, x15, [sp, -1752]!
	.cfi_def_cfa_offset 1752
	// Save the callee-saved registers
	stp	x13, x14, [sp, -1760]!
	.cfi_def_cfa_offset 1760
	// Save the callee-saved registers
	stp	x12, x13, [sp, -1768]!
	.cfi_def_cfa_offset 1768
	// Save the callee-saved registers
	stp	x11, x12, [sp, -1776]!
	.cfi_def_cfa_offset 1776
	// Save the callee-saved registers
	stp	x10, x11, [sp, -1784]!
	.cfi_def_cfa_offset 1784
	// Save the callee-saved registers
	stp	x9, x10, [sp, -1792]!
	.cfi_def_cfa_offset 1792
	// Save the callee-saved registers
	stp	x8, x9, [sp, -1800]!
	.cfi_def_cfa_offset 1800
	// Save the callee-saved registers
	stp	x7, x8, [sp, -1808]!
	.cfi_def_cfa_offset 1808
	// Save the callee-saved registers
	stp	x6, x7, [sp, -1816]!
	.cfi_def_cfa_offset 1816
	// Save the callee-saved registers
	stp	x5, x6, [sp, -1824]!
	.cfi_def_cfa_offset 1824
	// Save the callee-saved registers
	stp	x4, x5, [sp, -1832]!
	.cfi_def_cfa_offset 1832
	// Save the callee-saved registers
	stp	x3, x4, [sp, -1840]!
	.cfi_def_cfa_offset 1840
	// Save the callee-saved registers
	stp	x2, x3, [sp, -1848]!
	.cfi_def_cfa_offset 1848
	// Save the callee-saved registers
	stp	x1, x2, [sp, -1856]!
	.cfi_def_cfa_offset 1856
	// Save the callee-saved registers
	stp	x0, x1, [sp, -1864]!
	.cfi_def_cfa_offset 1864
	// Save the callee-saved registers
	stp	x30, x31, [sp, -1872]!
	.cfi_def_cfa_offset 1872
	// Save the callee-saved registers
	stp	x29, x30, [sp, -1880]!
	.cfi_def_cfa_offset 1880
	// Save the callee-saved registers
	stp	x28, x29, [sp, -1888]!
	.cfi_def_cfa_offset 1888
	// Save the callee-saved registers
	stp	x27, x28, [sp, -1896]!
	.cfi_def_cfa_offset 1896
	// Save the callee-saved registers
	stp	x26, x27, [sp, -1904]!
	.cfi_def_cfa_offset 1904
	// Save the callee-saved registers
	stp	x25, x26, [sp, -1912]!
	.cfi_def_cfa_offset 1912
	// Save the callee-saved registers
	stp	x24, x25, [sp, -1920]!
	.cfi_def_cfa_offset 1920
	// Save the callee-saved registers
	stp	x23, x24, [sp, -1928]!
	.cfi_def_cfa_offset 1928
	// Save the callee-saved registers
	stp	x22, x23, [sp, -1936]!
	.cfi_def_cfa_offset 1936
	// Save the callee-saved registers
	stp	x21, x22, [sp, -1944]!
	.cfi_def_cfa_offset 1944
	// Save the callee-saved registers
	stp	x20, x21, [sp, -1952]!
	.cfi_def_cfa_offset 1952
	// Save the callee-saved registers
	stp	x19, x20, [sp, -1960]!
	.cfi_def_cfa_offset 1960
	// Save the callee-saved registers
	stp	x18, x19, [sp, -1968]!
	.cfi_def_cfa_offset 1968
	// Save the callee-saved registers
	stp	x17, x18, [sp, -1976]!
	.cfi_def_cfa_offset 1976
	// Save the callee-saved registers
	stp	x16, x17, [sp, -1984]!
	.cfi_def_cfa_offset 1984
	// Save the callee-saved registers
	stp	x15, x16, [sp, -1992]!
	.cfi_def_cfa_offset 1992
	// Save the callee-saved registers
	stp	x14, x15, [sp, -2000]!
	.cfi_def_cfa_offset 2000
	// Save the callee-saved registers
	stp	x13, x14, [sp, -2008]!
	.cfi_def_cfa_offset 2008
	// Save the callee-saved registers
	stp	x12, x13, [sp, -2016]!
	.cfi_def_cfa_offset 2016
	// Save the callee-saved registers
	stp	x11, x12, [sp, -2024]!
	.cfi_def_cfa_offset 2024
	// Save the callee-saved registers
	stp	x10, x11, [sp, -2032]!
	.cfi_def_cfa_offset 2032
	// Save the callee-saved registers
	stp	x9, x10, [sp, -2040]!
	.cfi_def_cfa_offset 2040
	// Save the callee-saved registers
	stp	x8, x9, [sp, -2048]!
	.cfi_def_cfa_offset 2048
	// Save the callee-saved registers
	stp	x7, x8, [sp, -2056]!
	.cfi_def_cfa_offset 2056
	// Save the callee-saved registers
	stp	x6, x7, [sp, -2064]!
	.cfi_def_cfa_offset 2064
	// Save the callee-saved registers
	stp	x5, x6, [sp, -2072]!
	.cfi_def_cfa_offset 2072
	// Save the callee-saved registers
	stp	x4, x5, [sp, -2080]!
	.cfi_def_cfa_offset 2080
	// Save the callee-saved registers
	stp	x3, x4, [sp, -2088]!
	.cfi_def_cfa_offset 2088
	// Save the callee-saved registers
	stp	x2, x3, [sp, -2096]!
	.cfi_def_cfa_offset 2096
	// Save the callee-saved registers
	stp	x1, x2, [sp, -2104]!
	.cfi_def_cfa_offset 2104
	// Save the callee-saved registers
	stp	x0, x1, [sp, -2112]!
	.cfi_def_cfa_offset 2112
	// Save the callee-saved registers
	stp	x30, x31, [sp, -2120]!
	.cfi_def_cfa_offset 2120
	// Save the callee-saved registers
	stp	x29, x30, [sp, -2128]!
	.cfi_def_cfa_offset 2128
	// Save the callee-saved registers
	stp	x28, x29, [sp, -2136]!
	.cfi_def_cfa_offset 2136
	// Save the callee-saved registers
	stp	x27, x28, [sp, -2144]!
	.cfi_def_cfa_offset 2144
	// Save the callee-saved registers
	stp	x26, x27, [sp, -2152]!
	.cfi_def_cfa_offset 2152
	// Save the callee-saved registers
	stp	x25, x26, [sp, -2160]!
	.cfi_def_cfa_offset 2160
	// Save the callee-saved registers
	stp	x24, x25, [sp, -2168]!
	.cfi_def_cfa_offset 2168
	// Save the callee-saved registers
	stp	x23, x24, [sp, -2176]!
	.cfi_def_cfa_offset 2176
	// Save the callee-saved registers
	stp	x22, x23, [sp, -2184]!
	.cfi_def_cfa_offset 2184
	// Save the callee-saved registers
	stp	x21, x22, [sp, -2192]!
	.cfi_def_cfa_offset 2192
	// Save the callee-saved registers
	stp	x20, x21, [sp, -2200]!
	.cfi_def_cfa_offset 2200
	// Save the callee-saved registers
	stp	x19, x20, [sp, -2208]!
	.cfi_def_cfa_offset 2208
	// Save the callee-saved registers
	stp	x18, x19, [sp, -2216]!
	.cfi_def_cfa_offset 2216
	// Save the callee-saved registers
	stp	x17, x18, [sp, -2224]!
	.cfi_def_cfa_offset 2224
	// Save the callee-saved registers
	stp	x16, x17, [sp, -2232]!
	.cfi_def_cfa_offset 2232
	// Save the callee-saved registers
	stp	x15, x16, [sp, -2240]!
	.cfi_def_cfa_offset 2240
	// Save the callee-saved registers
	stp	x14, x15, [sp, -2248]!
	.cfi_def_cfa_offset 2248
	// Save the callee-saved registers
	stp	x13, x14, [sp, -2256]!
	.cfi_def_cfa_offset 2256
	// Save the callee-saved registers
	stp	x12, x13, [sp, -2264]!
	.cfi_def_cfa_offset 2264
	// Save the callee-saved registers
	stp	x11, x12, [sp, -2272]!
	.cfi_def_cfa_offset 2272
	// Save the callee-saved registers
	stp	x10, x11, [sp, -2280]!
	.cfi_def_cfa_offset 2280
	// Save the callee-saved registers
	stp	x9, x10, [sp, -2288]!
	.cfi_def_cfa_offset 2288
	// Save the callee-saved registers
	stp	x8, x9, [sp, -2296]!
	.cfi_def_cfa_offset 2296
	// Save the callee-saved registers
	stp	x7, x8, [sp, -2304]!
	.cfi_def_cfa_offset 2304
	// Save the callee-saved registers
	stp	x6, x7, [sp, -2312]!
	.cfi_def_cfa_offset 2312
	// Save the callee-saved registers
	stp	x5, x6, [sp, -2320]!
	.cfi_def_cfa_offset 2320
	// Save the callee-saved registers
	stp	x4, x5, [sp, -2328]!
	.cfi_def_cfa_offset 2328
	// Save the callee-saved registers
	stp	x3, x4, [sp, -2336]!
	.cfi_def_cfa_offset 2336
	// Save the callee-saved registers
	stp	x2, x3, [sp, -2344]!
	.cfi_def_cfa_offset 2344
	// Save the callee-saved registers
	stp	x1, x2, [sp, -2352]!
	.cfi_def_cfa_offset 2352
	// Save the callee-saved registers
	stp	x0, x1, [sp, -2360]!
	.cfi_def_cfa_offset 2360
	// Save the callee-saved registers
	stp	x30, x31, [sp, -2368]!
	.cfi_def_cfa_offset 2368
	// Save the callee-saved registers
	stp	x29, x30, [sp, -2376]!
	.cfi_def_cfa_offset 2376
	// Save the callee-saved registers
	stp	x28, x29, [sp, -2384]!
	.cfi_def_cfa_offset 2384
	// Save the callee-saved registers
	stp	x27, x28, [sp, -2392]!
	.cfi_def_cfa_offset 2392
	// Save the callee-saved registers
	stp	x26, x27, [sp, -2400]!
	.cfi_def_cfa_offset 2400
	// Save the callee-saved registers
	stp	x25, x26, [sp, -2408]!
	.cfi_def_cfa_offset 2408
	// Save the callee-saved registers
	stp	x24, x25, [sp, -2416]!
	.cfi_def_cfa_offset 2416
	// Save the callee-saved registers
	stp	x23, x24, [sp, -2424]!
	.cfi_def_cfa_offset 2424
	// Save the callee-saved registers
	stp	x22, x23, [sp, -2432]!
	.cfi_def_cfa_offset 2432
	// Save the callee-saved registers
	stp	x21, x22, [sp, -2440]!
	.cfi_def_cfa_offset 2440
	// Save the callee-saved registers
	stp	x20, x21, [sp, -2448]!
	.cfi_def_cfa_offset 2448
	// Save the callee-saved registers
	stp	x19, x20, [sp, -2456]!
	.cfi_def_cfa_offset 2456
	// Save the callee-saved registers
	stp	x18, x19, [sp, -2464]!
	.cfi_def_cfa_offset 2464
	// Save the callee-saved registers
	stp	x17, x18, [sp, -2472]!
	.cfi_def_cfa_offset 2472
	// Save the callee-saved registers
	stp	x16, x17, [sp, -2480]!
	.cfi_def_cfa_offset 2480
	// Save the callee-saved registers
	stp	x15, x16, [sp, -2488]!
	.cfi_def_cfa_offset 2488
	// Save the callee-saved registers
	stp	x14, x15, [sp, -2496]!
	.cfi_def_cfa_offset 2496
	// Save the callee-saved registers
	stp	x13, x14, [sp, -2504]!
	.cfi_def_cfa_offset 2504
	// Save the callee-saved registers
	stp	x12, x13, [sp, -2512]!
	.cfi_def_cfa_offset 2512
	// Save the callee-saved registers
	stp	x11, x12, [sp, -2520]!
	.cfi_def_cfa_offset 2520
	// Save the callee-saved registers
	stp	x10, x11, [sp, -2528]!
	.cfi_def_cfa_offset 2528
	// Save the callee-saved registers
	stp	x9, x10, [sp, -2536]!
	.cfi_def_cfa_offset 2536
	// Save the callee-saved registers
	stp	x8, x9, [sp, -2544]!
	.cfi_def_cfa_offset 2544
	// Save the callee-saved registers
	stp	x7, x8, [sp, -2552]!
	.cfi_def_cfa_offset 2552
	// Save the callee-saved registers
	stp	x6, x7, [sp, -2560]!
	.cfi_def_cfa_offset 2560
	// Save the callee-saved registers
	stp	x5, x6, [sp, -2568]!
	.cfi_def_cfa_offset 2568
	// Save the callee-saved registers
	stp	x4, x5, [sp, -2576]!
	.cfi_def_cfa_offset 2576
	// Save the callee-saved registers
	stp	x3, x4, [sp, -2584]!
	.cfi_def_cfa_offset 2584
	// Save the callee-saved registers
	stp	x2, x3, [sp, -2592]!
	.cfi_def_cfa_offset 2592
	// Save the callee-saved registers
	stp	x1, x2, [sp, -2600]!
	.cfi_def_cfa_offset 2600
	// Save the callee-saved registers
	stp	x0, x1, [sp, -2608]!
	.cfi_def_cfa_offset 2608
	// Save the callee-saved registers
	stp	x30, x31, [sp, -2616]!
	.cfi_def_cfa_offset 2616
	// Save the callee-saved registers
	stp	x29, x30, [sp, -2624]!
	.cfi_def_cfa_offset 2624
	// Save the callee-saved registers
	stp	x28, x29, [sp, -2632]!
	.cfi_def_cfa_offset 2632
	// Save the callee-saved registers
	stp	x27, x28, [sp, -2640]!
	.cfi_def_cfa_offset 2640
	// Save the callee-saved registers
	stp	x26, x27, [sp, -2648]!
	.cfi_def_cfa_offset 2648
	// Save the callee-saved registers
	stp	x25, x26, [sp, -2656]!
	.cfi_def_cfa_offset 2656
	// Save the callee-saved registers
	stp	x24, x25, [sp, -2664]!
	.cfi_def_cfa_offset 2664
	// Save the callee-saved registers
	stp	x23, x24, [sp, -2672]!
	.cfi_def_cfa_offset 2672
	// Save the callee-saved registers
	stp	x22, x23, [sp, -2680]!
	.cfi_def_cfa_offset 2680
	// Save the callee-saved registers
	stp	x21, x22, [sp, -2688]!
	.cfi_def_cfa_offset 2688
	// Save the callee-saved registers
	stp	x20, x21, [sp, -2696]!
	.cfi_def_cfa_offset 2696
	// Save the callee-saved registers
	stp	x19, x20, [sp, -2704]!
	.cfi_def_cfa_offset 2704
	// Save the callee-saved registers
	stp	x18, x19, [sp, -2712]!
	.cfi_def_cfa_offset 2712
	// Save the callee-saved registers
	stp	x17, x18, [sp, -2720]!
	.cfi_def_cfa_offset 2720
	// Save the callee-saved registers
	stp	x16, x17, [sp, -2728]!
	.cfi_def_cfa_offset 2728
	// Save the callee-saved registers
	stp	x15, x16, [sp, -2736]!
	.cfi_def_cfa_offset 2736
	// Save the callee-saved registers
	stp	x14, x15, [sp, -2744]!
	.cfi_def_cfa_offset 2744
	// Save the callee-saved registers
	stp	x13, x14, [sp, -2752]!
	.cfi_def_cfa_offset 2752
	// Save the callee-saved registers
	stp	x12, x13, [sp, -2760]!
	.cfi_def_cfa_offset 2760
	// Save the callee-saved registers
	stp	x11, x12, [sp, -2768]!
	.cfi_def_cfa_offset 2768
	// Save the callee-saved registers
	stp	x10, x11, [sp, -2776]!
	.cfi_def_cfa_offset 2776
	// Save the callee-saved registers
	stp	x9, x10, [sp, -2784]!
	.cfi_def_cfa_offset 2784
	// Save the callee-saved registers
	stp	x8, x9, [sp, -2792]!
	.cfi_def_cfa_offset 2792
	// Save the callee-saved registers
	stp	x7, x8, [sp, -2800]!
	.cfi_def_cfa_offset 2800
	// Save the callee-saved registers
	stp	x6, x7, [sp, -2808]!
	.cfi_def_cfa_offset 2808
	// Save the callee-saved registers
	stp	x5, x6, [sp, -2816]!
	.cfi_def_cfa_offset 2816
	// Save the callee-saved registers
	stp	x4, x5, [sp, -2824]!
	.cfi_def_cfa_offset 2824
	// Save the callee-saved registers
	stp	x3, x4, [sp, -2832]!
	.cfi_def_cfa_offset 2832
	// Save the callee-saved registers
	stp	x2, x3, [sp, -2840]!
	.cfi_def_cfa_offset 2840
	// Save the callee-saved registers
	stp	x1, x2, [sp, -2848]!
	.cfi_def_cfa_offset 2848
	// Save the callee-saved registers
	stp	x0, x1, [sp, -2856]!
	.cfi_def_cfa_offset 2856
	// Save the callee-saved registers
	stp	x30, x31, [sp, -2864]!
	.cfi_def_cfa_offset 2864
	// Save the callee-saved registers
	stp	x29, x30, [sp, -2872]!
	.cfi_def_cfa_offset 2872
	// Save the callee-saved registers
	stp	x28, x29, [sp, -2880]!
	.cfi_def_cfa_offset 2880
	// Save the callee-saved registers
	stp	x27, x28, [sp, -2888]!
	.cfi_def_cfa_offset 2888
	// Save the callee-saved registers
	stp	x26, x27, [sp, -2896]!
	.cfi_def_cfa_offset 2896
	// Save the callee-saved registers
	stp	x25, x26, [sp, -2904]!
	.cfi_def_cfa_offset 2904
	// Save the callee-saved registers
	stp	x24, x25, [sp, -2912]!
	.cfi_def_cfa_offset 2912
	// Save the callee-saved registers
	stp	x23, x24, [sp, -2920]!
	.cfi_def_cfa_offset 2920
	// Save the callee-saved registers
	stp	x22, x23, [sp, -2928]!
	.cfi_def_cfa_offset 2928
	// Save the callee-saved registers
	stp	x21, x22, [sp, -2936]!
	.cfi_def_cfa_offset 2936
	// Save the callee-saved registers
	stp	x20, x21, [sp, -2944]!
	.cfi_def_cfa_offset 2944
	// Save the callee-saved registers
	stp	x19, x20, [sp, -2952]!
	.cfi_def_cfa_offset 2952
	// Save the callee-saved registers
	stp	x18, x19, [sp, -2960]!
	.cfi_def_cfa_offset 2960
	// Save the callee-saved registers
	stp	x17, x18, [sp, -2968]!
	.cfi_def_cfa_offset 2968
	// Save the callee-saved registers
	stp	x16, x17, [sp, -2976]!
	.cfi_def_cfa_offset 2976
	// Save the callee-saved registers
	stp	x15, x16, [sp, -2984]!
	.cfi_def_cfa_offset 2984
	// Save the callee-saved registers
	stp	x14, x15, [sp, -2992]!
	.cfi_def_cfa_offset 2992
	// Save the callee-saved registers
	stp	x13, x14, [sp, -3000]!
	.cfi_def_cfa_offset 3000
	// Save the callee-saved registers
	stp	x12, x13, [sp, -3008]!
	.cfi_def_cfa_offset 3008
	// Save the callee-saved registers
	stp	x11, x12, [sp, -3016]!
	.cfi_def_cfa_offset 3016
	// Save the callee-saved registers
	stp	x10, x11, [sp, -3024]!
	.cfi_def_cfa_offset 3024
	// Save the callee-saved registers
	stp	x9, x10, [sp, -3032]!
	.cfi_def_cfa_offset 3032
	// Save the callee-saved registers
	stp	x8, x9, [sp, -3040]!
	.cfi_def_cfa_offset 3040
	// Save the callee-saved registers
	stp	x7, x8, [sp, -3048]!
	.cfi_def_cfa_offset 3048
	// Save the callee-saved registers
	stp	x6, x7, [sp, -3056]!
	.cfi_def_cfa_offset 3056
	// Save the callee-saved registers
	stp	x5, x6, [sp, -3064]!
	.cfi_def_cfa_offset 3064
	// Save the callee-saved registers
	stp	x4, x5, [sp, -3072]!
	.cfi_def_cfa_offset 3072
	// Save the callee-saved registers
	stp	x3, x4, [sp, -3080]!
	.cfi_def_cfa_offset 3080
	// Save the callee-saved registers
	stp	x2, x3, [sp, -3088]!
	.cfi_def_cfa_offset 3088
	// Save the callee-saved registers
	stp	x1, x2, [sp, -3096]!
	.cfi_def_cfa_offset 3096
	// Save the callee-saved registers
	stp	x0, x1, [sp, -3104]!
	.cfi_def_cfa_offset 3104
	// Save the callee-saved registers
	stp	x30, x31, [sp, -3112]!
	.cfi_def_cfa_offset 3112
	// Save the callee-saved registers
	stp	x29, x30, [sp, -3120]!
	.cfi_def_cfa_offset 3120
	// Save the callee-saved registers
	stp	x28, x29, [sp, -3128]!
	.cfi_def_cfa_offset 3128
	// Save the callee-saved registers
	stp	x27, x28, [sp, -3136]!
	.cfi_def_cfa_offset 3136
	// Save the callee-saved registers
	stp	x26, x27, [sp, -3144]!
	.cfi_def_cfa_offset 3144
	// Save the callee-saved registers
	stp	x25, x26, [sp, -3152]!
	.cfi_def_cfa_offset 3152
	// Save the callee-saved registers
	stp	x24, x25, [sp, -3160]!
	.cfi_def_cfa_offset 3160
	// Save the callee-saved registers
	stp	x23, x24, [sp, -3168]!
	.cfi_def_cfa_offset 3168
	// Save the callee-saved registers
	stp	x22, x23, [sp, -3176]!
	.cfi_def_cfa_offset 3176
	// Save the callee-saved registers
	stp	x21, x22, [sp, -3184