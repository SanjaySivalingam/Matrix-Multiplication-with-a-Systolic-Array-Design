* Functional test stimulus file for 5ns period

* TT process corner
.include "/opt/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/opt/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "/tmp/openram_s4sivali_8624_temp/sram.sp"

* Global Power Supplies
Vvdd vdd 0 1.0

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xsram_mm2s din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 a0_0 a0_1 a0_2 a0_3 a1_0 a1_1 a1_2 a1_3 CSB0 CSB1 clk0 clk1 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 dout1_11 dout1_12 dout1_13 dout1_14 dout1_15 vdd gnd sram_mm2s

* SRAM output loads
CD10 dout1_0  0 0.8364f
CD11 dout1_1  0 0.8364f
CD12 dout1_2  0 0.8364f
CD13 dout1_3  0 0.8364f
CD14 dout1_4  0 0.8364f
CD15 dout1_5  0 0.8364f
CD16 dout1_6  0 0.8364f
CD17 dout1_7  0 0.8364f
CD18 dout1_8  0 0.8364f
CD19 dout1_9  0 0.8364f
CD110 dout1_10  0 0.8364f
CD111 dout1_11  0 0.8364f
CD112 dout1_12  0 0.8364f
CD113 dout1_13  0 0.8364f
CD114 dout1_14  0 0.8364f
CD115 dout1_15  0 0.8364f


* Important signals for debug
* bl:	xsram:xbank0:bl_0_1
* br:	xsram:xbank0:br_0_1
* s_en:	xsram:s_en
* q:	xsram:xbank0:xbitcell_array:xbitcell_array:xbit_r0_c0.Q
* qbar:	xsram:xbank0:xbitcell_array:xbitcell_array:xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 0010111110111000  to  address 0000 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 1100111100001000  to  address 1110 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 0100101010110110  to  address 0000 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 1100111100001000 from address 1110 (from port 1) during cycle 4 (20ns - 25ns)
*	Writing 1101010101101111  to  address 1110 (from port 0) during cycle 5 (25ns - 30ns)
*	Writing 1011100101011001  to  address 1110 (from port 0) during cycle 6 (30ns - 35ns)
*	Reading 0100101010110110 from address 0000 (from port 1) during cycle 6 (30ns - 35ns)
*	Writing 1101101100011100  to  address 0000 (from port 0) during cycle 7 (35ns - 40ns)
*	Reading 1011100101011001 from address 1110 (from port 1) during cycle 7 (35ns - 40ns)
*	Writing 1110101100011010  to  address 1110 (from port 0) during cycle 8 (40ns - 45ns)
*	Reading 1101101100011100 from address 0000 (from port 1) during cycle 8 (40ns - 45ns)
*	Writing 0001010010110100  to  address 0000 (from port 0) during cycle 9 (45ns - 50ns)
*	Writing 0001000110000100  to  address 0000 (from port 0) during cycle 10 (50ns - 55ns)
*	Writing 1111010011010001  to  address 0000 (from port 0) during cycle 11 (55ns - 60ns)
*	Writing 1101100101110011  to  address 1110 (from port 0) during cycle 12 (60ns - 65ns)
*	Reading 1111010011010001 from address 0000 (from port 1) during cycle 16 (80ns - 85ns)
*	Reading 1111010011010001 from address 0000 (from port 1) during cycle 18 (90ns - 95ns)
*	Writing 0110000001011111  to  address 0000 (from port 0) during cycle 19 (95ns - 100ns)
*	Reading 1101100101110011 from address 1110 (from port 1) during cycle 20 (100ns - 105ns)
*	Writing 1110000000111111  to  address 0000 (from port 0) during cycle 21 (105ns - 110ns)
*	Reading 1101100101110011 from address 1110 (from port 1) during cycle 21 (105ns - 110ns)
*	Reading 1110000000111111 from address 0000 (from port 1) during cycle 23 (115ns - 120ns)
*	Reading 1101100101110011 from address 1110 (from port 1) during cycle 24 (120ns - 125ns)
*	Reading 1101100101110011 from address 1110 (from port 1) during cycle 25 (125ns - 130ns)
*	Writing 1100011000001100  to  address 0000 (from port 0) during cycle 29 (145ns - 150ns)
*	Reading 1101100101110011 from address 1110 (from port 1) during cycle 29 (145ns - 150ns)
*	Writing 0001001011000001  to  address 1110 (from port 0) during cycle 30 (150ns - 155ns)
*	Writing 1011001111110011  to  address 0000 (from port 0) during cycle 31 (155ns - 160ns)
*	Reading 0001001011000001 from address 1110 (from port 1) during cycle 31 (155ns - 160ns)
*	Writing 0001111011000010  to  address 0000 (from port 0) during cycle 32 (160ns - 165ns)
*	Reading 0001111011000010 from address 0000 (from port 1) during cycle 33 (165ns - 170ns)
*	Writing 0110111001011101  to  address 1110 (from port 0) during cycle 34 (170ns - 175ns)
*	Reading 0110111001011101 from address 1110 (from port 1) during cycle 36 (180ns - 185ns)
*	Writing 1110100011010001  to  address 1110 (from port 0) during cycle 37 (185ns - 190ns)
*	Writing 1110101011100101  to  address 1110 (from port 0) during cycle 39 (195ns - 200ns)
*	Reading 0001111011000010 from address 0000 (from port 1) during cycle 39 (195ns - 200ns)
*	Writing 1111111110010100  to  address 0000 (from port 0) during cycle 40 (200ns - 205ns)
*	Reading 1111111110010100 from address 0000 (from port 1) during cycle 41 (205ns - 210ns)
*	Writing 1101001001110011  to  address 1110 (from port 0) during cycle 42 (210ns - 215ns)
*	Reading 1111111110010100 from address 0000 (from port 1) during cycle 42 (210ns - 215ns)
*	Writing 1000010101000011  to  address 1110 (from port 0) during cycle 43 (215ns - 220ns)
*	Reading 1111111110010100 from address 0000 (from port 1) during cycle 44 (220ns - 225ns)
*	Writing 0110001010001000  to  address 1110 (from port 0) during cycle 45 (225ns - 230ns)
*	Reading 1111111110010100 from address 0000 (from port 1) during cycle 46 (230ns - 235ns)
*	Writing 0010110100011100  to  address 1110 (from port 0) during cycle 48 (240ns - 245ns)
*	Reading 1111111110010100 from address 0000 (from port 1) during cycle 49 (245ns - 250ns)
*	Writing 1110010100101101  to  address 0000 (from port 0) during cycle 50 (250ns - 255ns)
*	Reading 0010110100011100 from address 1110 (from port 1) during cycle 50 (250ns - 255ns)
*	Writing 1001101110101111  to  address 1110 (from port 0) during cycle 51 (255ns - 260ns)
*	Reading 1110010100101101 from address 0000 (from port 1) during cycle 52 (260ns - 265ns)
*	Reading 1110010100101101 from address 0000 (from port 1) during cycle 53 (265ns - 270ns)
*	Writing 1101011010110000  to  address 1110 (from port 0) during cycle 54 (270ns - 275ns)
*	Reading 1110010100101101 from address 0000 (from port 1) during cycle 54 (270ns - 275ns)
*	Reading 1101011010110000 from address 1110 (from port 1) during cycle 55 (275ns - 280ns)
*	Writing 0100111010110010  to  address 0000 (from port 0) during cycle 56 (280ns - 285ns)
*	Writing 0101101010001000  to  address 1110 (from port 0) during cycle 57 (285ns - 290ns)
*	Reading 0100111010110010 from address 0000 (from port 1) during cycle 57 (285ns - 290ns)
*	Writing 0100001100111010  to  address 1110 (from port 0) during cycle 58 (290ns - 295ns)
*	Reading 0100001100111010 from address 1110 (from port 1) during cycle 59 (295ns - 300ns)
*	Writing 1100101011101011  to  address 1110 (from port 0) during cycle 60 (300ns - 305ns)
*	Writing 1010101100001110  to  address 0000 (from port 0) during cycle 61 (305ns - 310ns)
*	Writing 0111001101001001  to  address 1110 (from port 0) during cycle 62 (310ns - 315ns)
*	Writing 1100101010111000  to  address 0000 (from port 0) during cycle 63 (315ns - 320ns)
*	Reading 0111001101001001 from address 1110 (from port 1) during cycle 64 (320ns - 325ns)
*	Reading 0111001101001001 from address 1110 (from port 1) during cycle 65 (325ns - 330ns)
*	Writing 0100000110111011  to  address 0000 (from port 0) during cycle 66 (330ns - 335ns)
*	Reading 0111001101001001 from address 1110 (from port 1) during cycle 66 (330ns - 335ns)
*	Writing 1110010001111101  to  address 1110 (from port 0) during cycle 67 (335ns - 340ns)
*	Writing 0001101010111101  to  address 1110 (from port 0) during cycle 69 (345ns - 350ns)
*	Writing 1101001111111010  to  address 1110 (from port 0) during cycle 70 (350ns - 355ns)
*	Writing 0110110011110001  to  address 0000 (from port 0) during cycle 71 (355ns - 360ns)
*	Reading 1101001111111010 from address 1110 (from port 1) during cycle 72 (360ns - 365ns)
*	Reading 1101001111111010 from address 1110 (from port 1) during cycle 74 (370ns - 375ns)
*	Writing 1011011001101111  to  address 1110 (from port 0) during cycle 76 (380ns - 385ns)
*	Writing 1111001101011101  to  address 0000 (from port 0) during cycle 79 (395ns - 400ns)
*	Writing 0010001111011000  to  address 1110 (from port 0) during cycle 80 (400ns - 405ns)
*	Reading 0010001111011000 from address 1110 (from port 1) during cycle 82 (410ns - 415ns)
*	Writing 1000110010100110  to  address 1110 (from port 0) during cycle 83 (415ns - 420ns)
*	Writing 1100111011000010  to  address 1110 (from port 0) during cycle 85 (425ns - 430ns)
*	Reading 1111001101011101 from address 0000 (from port 1) during cycle 86 (430ns - 435ns)
*	Writing 1100110100010100  to  address 1110 (from port 0) during cycle 87 (435ns - 440ns)
*	Writing 0011011110011000  to  address 0000 (from port 0) during cycle 88 (440ns - 445ns)
*	Writing 0001001100001111  to  address 1110 (from port 0) during cycle 89 (445ns - 450ns)
*	Reading 0011011110011000 from address 0000 (from port 1) during cycle 89 (445ns - 450ns)
*	Writing 1111110000111000  to  address 0000 (from port 0) during cycle 90 (450ns - 455ns)
*	Writing 1001111000111001  to  address 1110 (from port 0) during cycle 91 (455ns - 460ns)
*	Reading 1111110000111000 from address 0000 (from port 1) during cycle 91 (455ns - 460ns)
*	Reading 1111110000111000 from address 0000 (from port 1) during cycle 92 (460ns - 465ns)
*	Writing 0100111101101110  to  address 1110 (from port 0) during cycle 94 (470ns - 475ns)
*	Reading 0100111101101110 from address 1110 (from port 1) during cycle 96 (480ns - 485ns)
*	Writing 1000110000111011  to  address 0000 (from port 0) during cycle 97 (485ns - 490ns)
*	Reading 0100111101101110 from address 1110 (from port 1) during cycle 97 (485ns - 490ns)
*	Writing 1111001000110111  to  address 0000 (from port 0) during cycle 98 (490ns - 495ns)
*	Reading 0100111101101110 from address 1110 (from port 1) during cycle 98 (490ns - 495ns)
*	Writing 0101000010110011  to  address 0000 (from port 0) during cycle 99 (495ns - 500ns)
*	Writing 1011001110100100  to  address 1110 (from port 0) during cycle 101 (505ns - 510ns)
*	Writing 1111010010010101  to  address 0000 (from port 0) during cycle 102 (510ns - 515ns)
*	Reading 1011001110100100 from address 1110 (from port 1) during cycle 103 (515ns - 520ns)
*	Writing 0011100100100100  to  address 0000 (from port 0) during cycle 104 (520ns - 525ns)
*	Reading 0011100100100100 from address 0000 (from port 1) during cycle 106 (530ns - 535ns)
*	Writing 1011010100010001  to  address 1110 (from port 0) during cycle 108 (540ns - 545ns)
*	Writing 0111110110010000  to  address 0000 (from port 0) during cycle 109 (545ns - 550ns)
*	Reading 1011010100010001 from address 1110 (from port 1) during cycle 109 (545ns - 550ns)
*	Reading 1011010100010001 from address 1110 (from port 1) during cycle 110 (550ns - 555ns)
*	Writing 1000100010000010  to  address 1110 (from port 0) during cycle 111 (555ns - 560ns)
*	Reading 0111110110010000 from address 0000 (from port 1) during cycle 112 (560ns - 565ns)
*	Writing 0100001111001010  to  address 0000 (from port 0) during cycle 113 (565ns - 570ns)
*	Writing 0111001100001111  to  address 0000 (from port 0) during cycle 114 (570ns - 575ns)
*	Reading 1000100010000010 from address 1110 (from port 1) during cycle 114 (570ns - 575ns)
*	Writing 1110110101110011  to  address 0000 (from port 0) during cycle 115 (575ns - 580ns)
*	Writing 0001110000100011  to  address 0000 (from port 0) during cycle 116 (580ns - 585ns)
*	Writing 0110110111111101  to  address 0000 (from port 0) during cycle 117 (585ns - 590ns)
*	Reading 1000100010000010 from address 1110 (from port 1) during cycle 117 (585ns - 590ns)
*	Writing 0011101110001100  to  address 0000 (from port 0) during cycle 118 (590ns - 595ns)
*	Reading 1000100010000010 from address 1110 (from port 1) during cycle 118 (590ns - 595ns)
*	Reading 0011101110001100 from address 0000 (from port 1) during cycle 119 (595ns - 600ns)
*	Writing 1000000001001010  to  address 1110 (from port 0) during cycle 120 (600ns - 605ns)
*	Reading 1000000001001010 from address 1110 (from port 1) during cycle 121 (605ns - 610ns)
*	Writing 1110011110001111  to  address 0000 (from port 0) during cycle 122 (610ns - 615ns)
*	Writing 1111100011110000  to  address 0000 (from port 0) during cycle 124 (620ns - 625ns)
*	Reading 1111100011110000 from address 0000 (from port 1) during cycle 125 (625ns - 630ns)
*	Writing 0010101001100001  to  address 1110 (from port 0) during cycle 126 (630ns - 635ns)
*	Writing 0000101111110100  to  address 1110 (from port 0) during cycle 127 (635ns - 640ns)
*	Reading 0000101111110100 from address 1110 (from port 1) during cycle 128 (640ns - 645ns)
*	Reading 0000101111110100 from address 1110 (from port 1) during cycle 129 (645ns - 650ns)
*	Reading 1111100011110000 from address 0000 (from port 1) during cycle 131 (655ns - 660ns)
*	Writing 1111000010000100  to  address 1110 (from port 0) during cycle 132 (660ns - 665ns)
*	Writing 0001011110111111  to  address 1110 (from port 0) during cycle 133 (665ns - 670ns)
*	Reading 1111100011110000 from address 0000 (from port 1) during cycle 133 (665ns - 670ns)
*	Writing 1101011111011111  to  address 1110 (from port 0) during cycle 134 (670ns - 675ns)
*	Reading 1111100011110000 from address 0000 (from port 1) during cycle 134 (670ns - 675ns)
*	Reading 1101011111011111 from address 1110 (from port 1) during cycle 135 (675ns - 680ns)
*	Reading 1111100011110000 from address 0000 (from port 1) during cycle 136 (680ns - 685ns)
*	Writing 1100010000101110  to  address 0000 (from port 0) during cycle 137 (685ns - 690ns)
*	Reading 1101011111011111 from address 1110 (from port 1) during cycle 137 (685ns - 690ns)
*	Writing 1110011000101000  to  address 1110 (from port 0) during cycle 139 (695ns - 700ns)
*	Reading 1100010000101110 from address 0000 (from port 1) during cycle 139 (695ns - 700ns)
*	Writing 0111000011001110  to  address 0000 (from port 0) during cycle 140 (700ns - 705ns)
*	Writing 1101000011011111  to  address 1110 (from port 0) during cycle 142 (710ns - 715ns)
*	Reading 0111000011001110 from address 0000 (from port 1) during cycle 142 (710ns - 715ns)
*	Writing 0111000100111110  to  address 1110 (from port 0) during cycle 143 (715ns - 720ns)
*	Writing 1111001000001000  to  address 1110 (from port 0) during cycle 144 (720ns - 725ns)
*	Writing 0000100100101001  to  address 1110 (from port 0) during cycle 146 (730ns - 735ns)
*	Writing 1111100101100101  to  address 0000 (from port 0) during cycle 148 (740ns - 745ns)
*	Reading 0000100100101001 from address 1110 (from port 1) during cycle 148 (740ns - 745ns)
*	Writing 1000100001010011  to  address 1110 (from port 0) during cycle 149 (745ns - 750ns)
*	Reading 1111100101100101 from address 0000 (from port 1) during cycle 150 (750ns - 755ns)
*	Writing 0100100111101100  to  address 1110 (from port 0) during cycle 151 (755ns - 760ns)
*	Writing 0010111100100000  to  address 1110 (from port 0) during cycle 152 (760ns - 765ns)
*	Reading 1111100101100101 from address 0000 (from port 1) during cycle 152 (760ns - 765ns)
*	Writing 1000011010101000  to  address 0000 (from port 0) during cycle 153 (765ns - 770ns)
*	Writing 1101000100010111  to  address 1110 (from port 0) during cycle 154 (770ns - 775ns)
*	Reading 1000011010101000 from address 0000 (from port 1) during cycle 154 (770ns - 775ns)
*	Reading 1000011010101000 from address 0000 (from port 1) during cycle 156 (780ns - 785ns)
*	Writing 1100001010000101  to  address 0000 (from port 0) during cycle 157 (785ns - 790ns)
*	Writing 0100000101101000  to  address 0000 (from port 0) during cycle 158 (790ns - 795ns)
*	Reading 1101000100010111 from address 1110 (from port 1) during cycle 158 (790ns - 795ns)
*	Writing 0010111101000000  to  address 1110 (from port 0) during cycle 159 (795ns - 800ns)
*	Writing 1001110111011111  to  address 0000 (from port 0) during cycle 160 (800ns - 805ns)
*	Reading 1001110111011111 from address 0000 (from port 1) during cycle 161 (805ns - 810ns)
*	Reading 0010111101000000 from address 1110 (from port 1) during cycle 162 (810ns - 815ns)
*	Reading 1001110111011111 from address 0000 (from port 1) during cycle 164 (820ns - 825ns)
*	Reading 1001110111011111 from address 0000 (from port 1) during cycle 165 (825ns - 830ns)
*	Reading 1001110111011111 from address 0000 (from port 1) during cycle 166 (830ns - 835ns)
*	Reading 0010111101000000 from address 1110 (from port 1) during cycle 167 (835ns - 840ns)
*	Writing 0011110100110110  to  address 1110 (from port 0) during cycle 168 (840ns - 845ns)
*	Reading 0011110100110110 from address 1110 (from port 1) during cycle 169 (845ns - 850ns)
*	Reading 1001110111011111 from address 0000 (from port 1) during cycle 170 (850ns - 855ns)
*	Writing 0011100010000011  to  address 1110 (from port 0) during cycle 171 (855ns - 860ns)
*	Reading 0011100010000011 from address 1110 (from port 1) during cycle 172 (860ns - 865ns)
*	Writing 0101011011011100  to  address 1110 (from port 0) during cycle 173 (865ns - 870ns)
*	Reading 1001110111011111 from address 0000 (from port 1) during cycle 173 (865ns - 870ns)
*	Reading 0101011011011100 from address 1110 (from port 1) during cycle 175 (875ns - 880ns)
*	Writing 0111011000011010  to  address 0000 (from port 0) during cycle 176 (880ns - 885ns)
*	Reading 0101011011011100 from address 1110 (from port 1) during cycle 176 (880ns - 885ns)
*	Writing 1011110001000000  to  address 1110 (from port 0) during cycle 178 (890ns - 895ns)
*	Writing 1011110110000110  to  address 0000 (from port 0) during cycle 179 (895ns - 900ns)
*	Writing 1110010001111001  to  address 0000 (from port 0) during cycle 180 (900ns - 905ns)
*	Writing 0111010100000001  to  address 0000 (from port 0) during cycle 181 (905ns - 910ns)
*	Reading 1011110001000000 from address 1110 (from port 1) during cycle 182 (910ns - 915ns)
*	Writing 0000011011100100  to  address 0000 (from port 0) during cycle 183 (915ns - 920ns)
*	Reading 1011110001000000 from address 1110 (from port 1) during cycle 183 (915ns - 920ns)
*	Reading 0000011011100100 from address 0000 (from port 1) during cycle 184 (920ns - 925ns)
*	Writing 0001100101110101  to  address 0000 (from port 0) during cycle 185 (925ns - 930ns)
*	Reading 0001100101110101 from address 0000 (from port 1) during cycle 186 (930ns - 935ns)
*	Reading 0001100101110101 from address 0000 (from port 1) during cycle 187 (935ns - 940ns)
*	Writing 1010010000111101  to  address 1110 (from port 0) during cycle 188 (940ns - 945ns)
*	Writing 0101001011111100  to  address 0000 (from port 0) during cycle 190 (950ns - 955ns)
*	Writing 0110100111001100  to  address 1110 (from port 0) during cycle 191 (955ns - 960ns)
*	Reading 0101001011111100 from address 0000 (from port 1) during cycle 193 (965ns - 970ns)
*	Reading 0101001011111100 from address 0000 (from port 1) during cycle 194 (970ns - 975ns)
*	Reading 0101001011111100 from address 0000 (from port 1) during cycle 195 (975ns - 980ns)
*	Reading 0101001011111100 from address 0000 (from port 1) during cycle 196 (980ns - 985ns)
*	Reading 0110100111001100 from address 1110 (from port 1) during cycle 197 (985ns - 990ns)
*	Writing 0111000101101101  to  address 0000 (from port 0) during cycle 198 (990ns - 995ns)
*	Reading 0110100111001100 from address 1110 (from port 1) during cycle 198 (990ns - 995ns)
*	Writing 1000010000101001  to  address 1110 (from port 0) during cycle 200 (1000ns - 1005ns)
*	Writing 0000010111001111  to  address 0000 (from port 0) during cycle 201 (1005ns - 1010ns)
*	Reading 1000010000101001 from address 1110 (from port 1) during cycle 201 (1005ns - 1010ns)
*	Writing 1000111101011000  to  address 0000 (from port 0) during cycle 202 (1010ns - 1015ns)
*	Reading 1000010000101001 from address 1110 (from port 1) during cycle 203 (1015ns - 1020ns)
*	Writing 0000101110000001  to  address 0000 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 0), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 1), (885, 1), (890, 0), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 1), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 0), (430, 0), (435, 1), (440, 0), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 0), (750, 0), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 0), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 0), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 1), (895, 0), (900, 1), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 1), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 0), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 0), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 1), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 1), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 0), (30, 0), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 0), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 1), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 0), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 0), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 0), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 0), (295, 0), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_11  din0_11  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 1), (575, 0), (580, 1), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_12  din0_12  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 1), (35, 0), (40, 1), (45, 0), (50, 0), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 0), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 0), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 1), (745, 0), (750, 0), (755, 0), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_13  din0_13  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 1), (40, 1), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 1), (745, 0), (750, 0), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_14  din0_14  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 0), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 0), (720, 1), (725, 1), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_15  din0_15  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 0), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 0), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 0), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 1), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 0), (175, 1), (180, 1), (185, 0), (190, 1), (195, 0), (200, 0), (205, 1), (210, 0), (215, 0), (220, 1), (225, 0), (230, 1), (235, 1), (240, 0), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 1), (325, 1), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 0), (420, 1), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 1), (505, 0), (510, 0), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 0), (605, 1), (610, 0), (615, 1), (620, 0), (625, 1), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 0), (690, 1), (695, 0), (700, 0), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 1), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 1), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 0), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 0), (920, 1), (925, 0), (930, 1), (935, 1), (940, 0), (945, 1), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 1), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 1), (90, 0), (95, 1), (100, 0), (105, 0), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 0), (160, 1), (165, 0), (170, 1), (175, 1), (180, 0), (185, 1), (190, 1), (195, 0), (200, 1), (205, 0), (210, 0), (215, 1), (220, 0), (225, 1), (230, 0), (235, 1), (240, 1), (245, 0), (250, 0), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 1), (285, 0), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 1), (440, 1), (445, 0), (450, 1), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 0), (610, 1), (615, 1), (620, 1), (625, 0), (630, 1), (635, 1), (640, 0), (645, 0), (650, 1), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 1), (705, 1), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 1), (780, 0), (785, 1), (790, 0), (795, 1), (800, 1), (805, 0), (810, 0), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 0), (850, 0), (855, 1), (860, 0), (865, 0), (870, 1), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 1), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 vdout1_0ck4 = 0 time = 25
* CHECK dout1_1 vdout1_1ck4 = 0 time = 25
* CHECK dout1_2 vdout1_2ck4 = 0 time = 25
* CHECK dout1_3 vdout1_3ck4 = 1.0 time = 25
* CHECK dout1_4 vdout1_4ck4 = 0 time = 25
* CHECK dout1_5 vdout1_5ck4 = 0 time = 25
* CHECK dout1_6 vdout1_6ck4 = 0 time = 25
* CHECK dout1_7 vdout1_7ck4 = 0 time = 25
* CHECK dout1_8 vdout1_8ck4 = 1.0 time = 25
* CHECK dout1_9 vdout1_9ck4 = 1.0 time = 25
* CHECK dout1_10 vdout1_10ck4 = 1.0 time = 25
* CHECK dout1_11 vdout1_11ck4 = 1.0 time = 25
* CHECK dout1_12 vdout1_12ck4 = 0 time = 25
* CHECK dout1_13 vdout1_13ck4 = 0 time = 25
* CHECK dout1_14 vdout1_14ck4 = 1.0 time = 25
* CHECK dout1_15 vdout1_15ck4 = 1.0 time = 25
* CHECK dout1_0 vdout1_0ck6 = 0 time = 35
* CHECK dout1_1 vdout1_1ck6 = 1.0 time = 35
* CHECK dout1_2 vdout1_2ck6 = 1.0 time = 35
* CHECK dout1_3 vdout1_3ck6 = 0 time = 35
* CHECK dout1_4 vdout1_4ck6 = 1.0 time = 35
* CHECK dout1_5 vdout1_5ck6 = 1.0 time = 35
* CHECK dout1_6 vdout1_6ck6 = 0 time = 35
* CHECK dout1_7 vdout1_7ck6 = 1.0 time = 35
* CHECK dout1_8 vdout1_8ck6 = 0 time = 35
* CHECK dout1_9 vdout1_9ck6 = 1.0 time = 35
* CHECK dout1_10 vdout1_10ck6 = 0 time = 35
* CHECK dout1_11 vdout1_11ck6 = 1.0 time = 35
* CHECK dout1_12 vdout1_12ck6 = 0 time = 35
* CHECK dout1_13 vdout1_13ck6 = 0 time = 35
* CHECK dout1_14 vdout1_14ck6 = 1.0 time = 35
* CHECK dout1_15 vdout1_15ck6 = 0 time = 35
* CHECK dout1_0 vdout1_0ck7 = 1.0 time = 40
* CHECK dout1_1 vdout1_1ck7 = 0 time = 40
* CHECK dout1_2 vdout1_2ck7 = 0 time = 40
* CHECK dout1_3 vdout1_3ck7 = 1.0 time = 40
* CHECK dout1_4 vdout1_4ck7 = 1.0 time = 40
* CHECK dout1_5 vdout1_5ck7 = 0 time = 40
* CHECK dout1_6 vdout1_6ck7 = 1.0 time = 40
* CHECK dout1_7 vdout1_7ck7 = 0 time = 40
* CHECK dout1_8 vdout1_8ck7 = 1.0 time = 40
* CHECK dout1_9 vdout1_9ck7 = 0 time = 40
* CHECK dout1_10 vdout1_10ck7 = 0 time = 40
* CHECK dout1_11 vdout1_11ck7 = 1.0 time = 40
* CHECK dout1_12 vdout1_12ck7 = 1.0 time = 40
* CHECK dout1_13 vdout1_13ck7 = 1.0 time = 40
* CHECK dout1_14 vdout1_14ck7 = 0 time = 40
* CHECK dout1_15 vdout1_15ck7 = 1.0 time = 40
* CHECK dout1_0 vdout1_0ck8 = 0 time = 45
* CHECK dout1_1 vdout1_1ck8 = 0 time = 45
* CHECK dout1_2 vdout1_2ck8 = 1.0 time = 45
* CHECK dout1_3 vdout1_3ck8 = 1.0 time = 45
* CHECK dout1_4 vdout1_4ck8 = 1.0 time = 45
* CHECK dout1_5 vdout1_5ck8 = 0 time = 45
* CHECK dout1_6 vdout1_6ck8 = 0 time = 45
* CHECK dout1_7 vdout1_7ck8 = 0 time = 45
* CHECK dout1_8 vdout1_8ck8 = 1.0 time = 45
* CHECK dout1_9 vdout1_9ck8 = 1.0 time = 45
* CHECK dout1_10 vdout1_10ck8 = 0 time = 45
* CHECK dout1_11 vdout1_11ck8 = 1.0 time = 45
* CHECK dout1_12 vdout1_12ck8 = 1.0 time = 45
* CHECK dout1_13 vdout1_13ck8 = 0 time = 45
* CHECK dout1_14 vdout1_14ck8 = 1.0 time = 45
* CHECK dout1_15 vdout1_15ck8 = 1.0 time = 45
* CHECK dout1_0 vdout1_0ck16 = 1.0 time = 85
* CHECK dout1_1 vdout1_1ck16 = 0 time = 85
* CHECK dout1_2 vdout1_2ck16 = 0 time = 85
* CHECK dout1_3 vdout1_3ck16 = 0 time = 85
* CHECK dout1_4 vdout1_4ck16 = 1.0 time = 85
* CHECK dout1_5 vdout1_5ck16 = 0 time = 85
* CHECK dout1_6 vdout1_6ck16 = 1.0 time = 85
* CHECK dout1_7 vdout1_7ck16 = 1.0 time = 85
* CHECK dout1_8 vdout1_8ck16 = 0 time = 85
* CHECK dout1_9 vdout1_9ck16 = 0 time = 85
* CHECK dout1_10 vdout1_10ck16 = 1.0 time = 85
* CHECK dout1_11 vdout1_11ck16 = 0 time = 85
* CHECK dout1_12 vdout1_12ck16 = 1.0 time = 85
* CHECK dout1_13 vdout1_13ck16 = 1.0 time = 85
* CHECK dout1_14 vdout1_14ck16 = 1.0 time = 85
* CHECK dout1_15 vdout1_15ck16 = 1.0 time = 85
* CHECK dout1_0 vdout1_0ck18 = 1.0 time = 95
* CHECK dout1_1 vdout1_1ck18 = 0 time = 95
* CHECK dout1_2 vdout1_2ck18 = 0 time = 95
* CHECK dout1_3 vdout1_3ck18 = 0 time = 95
* CHECK dout1_4 vdout1_4ck18 = 1.0 time = 95
* CHECK dout1_5 vdout1_5ck18 = 0 time = 95
* CHECK dout1_6 vdout1_6ck18 = 1.0 time = 95
* CHECK dout1_7 vdout1_7ck18 = 1.0 time = 95
* CHECK dout1_8 vdout1_8ck18 = 0 time = 95
* CHECK dout1_9 vdout1_9ck18 = 0 time = 95
* CHECK dout1_10 vdout1_10ck18 = 1.0 time = 95
* CHECK dout1_11 vdout1_11ck18 = 0 time = 95
* CHECK dout1_12 vdout1_12ck18 = 1.0 time = 95
* CHECK dout1_13 vdout1_13ck18 = 1.0 time = 95
* CHECK dout1_14 vdout1_14ck18 = 1.0 time = 95
* CHECK dout1_15 vdout1_15ck18 = 1.0 time = 95
* CHECK dout1_0 vdout1_0ck20 = 1.0 time = 105
* CHECK dout1_1 vdout1_1ck20 = 1.0 time = 105
* CHECK dout1_2 vdout1_2ck20 = 0 time = 105
* CHECK dout1_3 vdout1_3ck20 = 0 time = 105
* CHECK dout1_4 vdout1_4ck20 = 1.0 time = 105
* CHECK dout1_5 vdout1_5ck20 = 1.0 time = 105
* CHECK dout1_6 vdout1_6ck20 = 1.0 time = 105
* CHECK dout1_7 vdout1_7ck20 = 0 time = 105
* CHECK dout1_8 vdout1_8ck20 = 1.0 time = 105
* CHECK dout1_9 vdout1_9ck20 = 0 time = 105
* CHECK dout1_10 vdout1_10ck20 = 0 time = 105
* CHECK dout1_11 vdout1_11ck20 = 1.0 time = 105
* CHECK dout1_12 vdout1_12ck20 = 1.0 time = 105
* CHECK dout1_13 vdout1_13ck20 = 0 time = 105
* CHECK dout1_14 vdout1_14ck20 = 1.0 time = 105
* CHECK dout1_15 vdout1_15ck20 = 1.0 time = 105
* CHECK dout1_0 vdout1_0ck21 = 1.0 time = 110
* CHECK dout1_1 vdout1_1ck21 = 1.0 time = 110
* CHECK dout1_2 vdout1_2ck21 = 0 time = 110
* CHECK dout1_3 vdout1_3ck21 = 0 time = 110
* CHECK dout1_4 vdout1_4ck21 = 1.0 time = 110
* CHECK dout1_5 vdout1_5ck21 = 1.0 time = 110
* CHECK dout1_6 vdout1_6ck21 = 1.0 time = 110
* CHECK dout1_7 vdout1_7ck21 = 0 time = 110
* CHECK dout1_8 vdout1_8ck21 = 1.0 time = 110
* CHECK dout1_9 vdout1_9ck21 = 0 time = 110
* CHECK dout1_10 vdout1_10ck21 = 0 time = 110
* CHECK dout1_11 vdout1_11ck21 = 1.0 time = 110
* CHECK dout1_12 vdout1_12ck21 = 1.0 time = 110
* CHECK dout1_13 vdout1_13ck21 = 0 time = 110
* CHECK dout1_14 vdout1_14ck21 = 1.0 time = 110
* CHECK dout1_15 vdout1_15ck21 = 1.0 time = 110
* CHECK dout1_0 vdout1_0ck23 = 1.0 time = 120
* CHECK dout1_1 vdout1_1ck23 = 1.0 time = 120
* CHECK dout1_2 vdout1_2ck23 = 1.0 time = 120
* CHECK dout1_3 vdout1_3ck23 = 1.0 time = 120
* CHECK dout1_4 vdout1_4ck23 = 1.0 time = 120
* CHECK dout1_5 vdout1_5ck23 = 1.0 time = 120
* CHECK dout1_6 vdout1_6ck23 = 0 time = 120
* CHECK dout1_7 vdout1_7ck23 = 0 time = 120
* CHECK dout1_8 vdout1_8ck23 = 0 time = 120
* CHECK dout1_9 vdout1_9ck23 = 0 time = 120
* CHECK dout1_10 vdout1_10ck23 = 0 time = 120
* CHECK dout1_11 vdout1_11ck23 = 0 time = 120
* CHECK dout1_12 vdout1_12ck23 = 0 time = 120
* CHECK dout1_13 vdout1_13ck23 = 1.0 time = 120
* CHECK dout1_14 vdout1_14ck23 = 1.0 time = 120
* CHECK dout1_15 vdout1_15ck23 = 1.0 time = 120
* CHECK dout1_0 vdout1_0ck24 = 1.0 time = 125
* CHECK dout1_1 vdout1_1ck24 = 1.0 time = 125
* CHECK dout1_2 vdout1_2ck24 = 0 time = 125
* CHECK dout1_3 vdout1_3ck24 = 0 time = 125
* CHECK dout1_4 vdout1_4ck24 = 1.0 time = 125
* CHECK dout1_5 vdout1_5ck24 = 1.0 time = 125
* CHECK dout1_6 vdout1_6ck24 = 1.0 time = 125
* CHECK dout1_7 vdout1_7ck24 = 0 time = 125
* CHECK dout1_8 vdout1_8ck24 = 1.0 time = 125
* CHECK dout1_9 vdout1_9ck24 = 0 time = 125
* CHECK dout1_10 vdout1_10ck24 = 0 time = 125
* CHECK dout1_11 vdout1_11ck24 = 1.0 time = 125
* CHECK dout1_12 vdout1_12ck24 = 1.0 time = 125
* CHECK dout1_13 vdout1_13ck24 = 0 time = 125
* CHECK dout1_14 vdout1_14ck24 = 1.0 time = 125
* CHECK dout1_15 vdout1_15ck24 = 1.0 time = 125
* CHECK dout1_0 vdout1_0ck25 = 1.0 time = 130
* CHECK dout1_1 vdout1_1ck25 = 1.0 time = 130
* CHECK dout1_2 vdout1_2ck25 = 0 time = 130
* CHECK dout1_3 vdout1_3ck25 = 0 time = 130
* CHECK dout1_4 vdout1_4ck25 = 1.0 time = 130
* CHECK dout1_5 vdout1_5ck25 = 1.0 time = 130
* CHECK dout1_6 vdout1_6ck25 = 1.0 time = 130
* CHECK dout1_7 vdout1_7ck25 = 0 time = 130
* CHECK dout1_8 vdout1_8ck25 = 1.0 time = 130
* CHECK dout1_9 vdout1_9ck25 = 0 time = 130
* CHECK dout1_10 vdout1_10ck25 = 0 time = 130
* CHECK dout1_11 vdout1_11ck25 = 1.0 time = 130
* CHECK dout1_12 vdout1_12ck25 = 1.0 time = 130
* CHECK dout1_13 vdout1_13ck25 = 0 time = 130
* CHECK dout1_14 vdout1_14ck25 = 1.0 time = 130
* CHECK dout1_15 vdout1_15ck25 = 1.0 time = 130
* CHECK dout1_0 vdout1_0ck29 = 1.0 time = 150
* CHECK dout1_1 vdout1_1ck29 = 1.0 time = 150
* CHECK dout1_2 vdout1_2ck29 = 0 time = 150
* CHECK dout1_3 vdout1_3ck29 = 0 time = 150
* CHECK dout1_4 vdout1_4ck29 = 1.0 time = 150
* CHECK dout1_5 vdout1_5ck29 = 1.0 time = 150
* CHECK dout1_6 vdout1_6ck29 = 1.0 time = 150
* CHECK dout1_7 vdout1_7ck29 = 0 time = 150
* CHECK dout1_8 vdout1_8ck29 = 1.0 time = 150
* CHECK dout1_9 vdout1_9ck29 = 0 time = 150
* CHECK dout1_10 vdout1_10ck29 = 0 time = 150
* CHECK dout1_11 vdout1_11ck29 = 1.0 time = 150
* CHECK dout1_12 vdout1_12ck29 = 1.0 time = 150
* CHECK dout1_13 vdout1_13ck29 = 0 time = 150
* CHECK dout1_14 vdout1_14ck29 = 1.0 time = 150
* CHECK dout1_15 vdout1_15ck29 = 1.0 time = 150
* CHECK dout1_0 vdout1_0ck31 = 1.0 time = 160
* CHECK dout1_1 vdout1_1ck31 = 0 time = 160
* CHECK dout1_2 vdout1_2ck31 = 0 time = 160
* CHECK dout1_3 vdout1_3ck31 = 0 time = 160
* CHECK dout1_4 vdout1_4ck31 = 0 time = 160
* CHECK dout1_5 vdout1_5ck31 = 0 time = 160
* CHECK dout1_6 vdout1_6ck31 = 1.0 time = 160
* CHECK dout1_7 vdout1_7ck31 = 1.0 time = 160
* CHECK dout1_8 vdout1_8ck31 = 0 time = 160
* CHECK dout1_9 vdout1_9ck31 = 1.0 time = 160
* CHECK dout1_10 vdout1_10ck31 = 0 time = 160
* CHECK dout1_11 vdout1_11ck31 = 0 time = 160
* CHECK dout1_12 vdout1_12ck31 = 1.0 time = 160
* CHECK dout1_13 vdout1_13ck31 = 0 time = 160
* CHECK dout1_14 vdout1_14ck31 = 0 time = 160
* CHECK dout1_15 vdout1_15ck31 = 0 time = 160
* CHECK dout1_0 vdout1_0ck33 = 0 time = 170
* CHECK dout1_1 vdout1_1ck33 = 1.0 time = 170
* CHECK dout1_2 vdout1_2ck33 = 0 time = 170
* CHECK dout1_3 vdout1_3ck33 = 0 time = 170
* CHECK dout1_4 vdout1_4ck33 = 0 time = 170
* CHECK dout1_5 vdout1_5ck33 = 0 time = 170
* CHECK dout1_6 vdout1_6ck33 = 1.0 time = 170
* CHECK dout1_7 vdout1_7ck33 = 1.0 time = 170
* CHECK dout1_8 vdout1_8ck33 = 0 time = 170
* CHECK dout1_9 vdout1_9ck33 = 1.0 time = 170
* CHECK dout1_10 vdout1_10ck33 = 1.0 time = 170
* CHECK dout1_11 vdout1_11ck33 = 1.0 time = 170
* CHECK dout1_12 vdout1_12ck33 = 1.0 time = 170
* CHECK dout1_13 vdout1_13ck33 = 0 time = 170
* CHECK dout1_14 vdout1_14ck33 = 0 time = 170
* CHECK dout1_15 vdout1_15ck33 = 0 time = 170
* CHECK dout1_0 vdout1_0ck36 = 1.0 time = 185
* CHECK dout1_1 vdout1_1ck36 = 0 time = 185
* CHECK dout1_2 vdout1_2ck36 = 1.0 time = 185
* CHECK dout1_3 vdout1_3ck36 = 1.0 time = 185
* CHECK dout1_4 vdout1_4ck36 = 1.0 time = 185
* CHECK dout1_5 vdout1_5ck36 = 0 time = 185
* CHECK dout1_6 vdout1_6ck36 = 1.0 time = 185
* CHECK dout1_7 vdout1_7ck36 = 0 time = 185
* CHECK dout1_8 vdout1_8ck36 = 0 time = 185
* CHECK dout1_9 vdout1_9ck36 = 1.0 time = 185
* CHECK dout1_10 vdout1_10ck36 = 1.0 time = 185
* CHECK dout1_11 vdout1_11ck36 = 1.0 time = 185
* CHECK dout1_12 vdout1_12ck36 = 0 time = 185
* CHECK dout1_13 vdout1_13ck36 = 1.0 time = 185
* CHECK dout1_14 vdout1_14ck36 = 1.0 time = 185
* CHECK dout1_15 vdout1_15ck36 = 0 time = 185
* CHECK dout1_0 vdout1_0ck39 = 0 time = 200
* CHECK dout1_1 vdout1_1ck39 = 1.0 time = 200
* CHECK dout1_2 vdout1_2ck39 = 0 time = 200
* CHECK dout1_3 vdout1_3ck39 = 0 time = 200
* CHECK dout1_4 vdout1_4ck39 = 0 time = 200
* CHECK dout1_5 vdout1_5ck39 = 0 time = 200
* CHECK dout1_6 vdout1_6ck39 = 1.0 time = 200
* CHECK dout1_7 vdout1_7ck39 = 1.0 time = 200
* CHECK dout1_8 vdout1_8ck39 = 0 time = 200
* CHECK dout1_9 vdout1_9ck39 = 1.0 time = 200
* CHECK dout1_10 vdout1_10ck39 = 1.0 time = 200
* CHECK dout1_11 vdout1_11ck39 = 1.0 time = 200
* CHECK dout1_12 vdout1_12ck39 = 1.0 time = 200
* CHECK dout1_13 vdout1_13ck39 = 0 time = 200
* CHECK dout1_14 vdout1_14ck39 = 0 time = 200
* CHECK dout1_15 vdout1_15ck39 = 0 time = 200
* CHECK dout1_0 vdout1_0ck41 = 0 time = 210
* CHECK dout1_1 vdout1_1ck41 = 0 time = 210
* CHECK dout1_2 vdout1_2ck41 = 1.0 time = 210
* CHECK dout1_3 vdout1_3ck41 = 0 time = 210
* CHECK dout1_4 vdout1_4ck41 = 1.0 time = 210
* CHECK dout1_5 vdout1_5ck41 = 0 time = 210
* CHECK dout1_6 vdout1_6ck41 = 0 time = 210
* CHECK dout1_7 vdout1_7ck41 = 1.0 time = 210
* CHECK dout1_8 vdout1_8ck41 = 1.0 time = 210
* CHECK dout1_9 vdout1_9ck41 = 1.0 time = 210
* CHECK dout1_10 vdout1_10ck41 = 1.0 time = 210
* CHECK dout1_11 vdout1_11ck41 = 1.0 time = 210
* CHECK dout1_12 vdout1_12ck41 = 1.0 time = 210
* CHECK dout1_13 vdout1_13ck41 = 1.0 time = 210
* CHECK dout1_14 vdout1_14ck41 = 1.0 time = 210
* CHECK dout1_15 vdout1_15ck41 = 1.0 time = 210
* CHECK dout1_0 vdout1_0ck42 = 0 time = 215
* CHECK dout1_1 vdout1_1ck42 = 0 time = 215
* CHECK dout1_2 vdout1_2ck42 = 1.0 time = 215
* CHECK dout1_3 vdout1_3ck42 = 0 time = 215
* CHECK dout1_4 vdout1_4ck42 = 1.0 time = 215
* CHECK dout1_5 vdout1_5ck42 = 0 time = 215
* CHECK dout1_6 vdout1_6ck42 = 0 time = 215
* CHECK dout1_7 vdout1_7ck42 = 1.0 time = 215
* CHECK dout1_8 vdout1_8ck42 = 1.0 time = 215
* CHECK dout1_9 vdout1_9ck42 = 1.0 time = 215
* CHECK dout1_10 vdout1_10ck42 = 1.0 time = 215
* CHECK dout1_11 vdout1_11ck42 = 1.0 time = 215
* CHECK dout1_12 vdout1_12ck42 = 1.0 time = 215
* CHECK dout1_13 vdout1_13ck42 = 1.0 time = 215
* CHECK dout1_14 vdout1_14ck42 = 1.0 time = 215
* CHECK dout1_15 vdout1_15ck42 = 1.0 time = 215
* CHECK dout1_0 vdout1_0ck44 = 0 time = 225
* CHECK dout1_1 vdout1_1ck44 = 0 time = 225
* CHECK dout1_2 vdout1_2ck44 = 1.0 time = 225
* CHECK dout1_3 vdout1_3ck44 = 0 time = 225
* CHECK dout1_4 vdout1_4ck44 = 1.0 time = 225
* CHECK dout1_5 vdout1_5ck44 = 0 time = 225
* CHECK dout1_6 vdout1_6ck44 = 0 time = 225
* CHECK dout1_7 vdout1_7ck44 = 1.0 time = 225
* CHECK dout1_8 vdout1_8ck44 = 1.0 time = 225
* CHECK dout1_9 vdout1_9ck44 = 1.0 time = 225
* CHECK dout1_10 vdout1_10ck44 = 1.0 time = 225
* CHECK dout1_11 vdout1_11ck44 = 1.0 time = 225
* CHECK dout1_12 vdout1_12ck44 = 1.0 time = 225
* CHECK dout1_13 vdout1_13ck44 = 1.0 time = 225
* CHECK dout1_14 vdout1_14ck44 = 1.0 time = 225
* CHECK dout1_15 vdout1_15ck44 = 1.0 time = 225
* CHECK dout1_0 vdout1_0ck46 = 0 time = 235
* CHECK dout1_1 vdout1_1ck46 = 0 time = 235
* CHECK dout1_2 vdout1_2ck46 = 1.0 time = 235
* CHECK dout1_3 vdout1_3ck46 = 0 time = 235
* CHECK dout1_4 vdout1_4ck46 = 1.0 time = 235
* CHECK dout1_5 vdout1_5ck46 = 0 time = 235
* CHECK dout1_6 vdout1_6ck46 = 0 time = 235
* CHECK dout1_7 vdout1_7ck46 = 1.0 time = 235
* CHECK dout1_8 vdout1_8ck46 = 1.0 time = 235
* CHECK dout1_9 vdout1_9ck46 = 1.0 time = 235
* CHECK dout1_10 vdout1_10ck46 = 1.0 time = 235
* CHECK dout1_11 vdout1_11ck46 = 1.0 time = 235
* CHECK dout1_12 vdout1_12ck46 = 1.0 time = 235
* CHECK dout1_13 vdout1_13ck46 = 1.0 time = 235
* CHECK dout1_14 vdout1_14ck46 = 1.0 time = 235
* CHECK dout1_15 vdout1_15ck46 = 1.0 time = 235
* CHECK dout1_0 vdout1_0ck49 = 0 time = 250
* CHECK dout1_1 vdout1_1ck49 = 0 time = 250
* CHECK dout1_2 vdout1_2ck49 = 1.0 time = 250
* CHECK dout1_3 vdout1_3ck49 = 0 time = 250
* CHECK dout1_4 vdout1_4ck49 = 1.0 time = 250
* CHECK dout1_5 vdout1_5ck49 = 0 time = 250
* CHECK dout1_6 vdout1_6ck49 = 0 time = 250
* CHECK dout1_7 vdout1_7ck49 = 1.0 time = 250
* CHECK dout1_8 vdout1_8ck49 = 1.0 time = 250
* CHECK dout1_9 vdout1_9ck49 = 1.0 time = 250
* CHECK dout1_10 vdout1_10ck49 = 1.0 time = 250
* CHECK dout1_11 vdout1_11ck49 = 1.0 time = 250
* CHECK dout1_12 vdout1_12ck49 = 1.0 time = 250
* CHECK dout1_13 vdout1_13ck49 = 1.0 time = 250
* CHECK dout1_14 vdout1_14ck49 = 1.0 time = 250
* CHECK dout1_15 vdout1_15ck49 = 1.0 time = 250
* CHECK dout1_0 vdout1_0ck50 = 0 time = 255
* CHECK dout1_1 vdout1_1ck50 = 0 time = 255
* CHECK dout1_2 vdout1_2ck50 = 1.0 time = 255
* CHECK dout1_3 vdout1_3ck50 = 1.0 time = 255
* CHECK dout1_4 vdout1_4ck50 = 1.0 time = 255
* CHECK dout1_5 vdout1_5ck50 = 0 time = 255
* CHECK dout1_6 vdout1_6ck50 = 0 time = 255
* CHECK dout1_7 vdout1_7ck50 = 0 time = 255
* CHECK dout1_8 vdout1_8ck50 = 1.0 time = 255
* CHECK dout1_9 vdout1_9ck50 = 0 time = 255
* CHECK dout1_10 vdout1_10ck50 = 1.0 time = 255
* CHECK dout1_11 vdout1_11ck50 = 1.0 time = 255
* CHECK dout1_12 vdout1_12ck50 = 0 time = 255
* CHECK dout1_13 vdout1_13ck50 = 1.0 time = 255
* CHECK dout1_14 vdout1_14ck50 = 0 time = 255
* CHECK dout1_15 vdout1_15ck50 = 0 time = 255
* CHECK dout1_0 vdout1_0ck52 = 1.0 time = 265
* CHECK dout1_1 vdout1_1ck52 = 0 time = 265
* CHECK dout1_2 vdout1_2ck52 = 1.0 time = 265
* CHECK dout1_3 vdout1_3ck52 = 1.0 time = 265
* CHECK dout1_4 vdout1_4ck52 = 0 time = 265
* CHECK dout1_5 vdout1_5ck52 = 1.0 time = 265
* CHECK dout1_6 vdout1_6ck52 = 0 time = 265
* CHECK dout1_7 vdout1_7ck52 = 0 time = 265
* CHECK dout1_8 vdout1_8ck52 = 1.0 time = 265
* CHECK dout1_9 vdout1_9ck52 = 0 time = 265
* CHECK dout1_10 vdout1_10ck52 = 1.0 time = 265
* CHECK dout1_11 vdout1_11ck52 = 0 time = 265
* CHECK dout1_12 vdout1_12ck52 = 0 time = 265
* CHECK dout1_13 vdout1_13ck52 = 1.0 time = 265
* CHECK dout1_14 vdout1_14ck52 = 1.0 time = 265
* CHECK dout1_15 vdout1_15ck52 = 1.0 time = 265
* CHECK dout1_0 vdout1_0ck53 = 1.0 time = 270
* CHECK dout1_1 vdout1_1ck53 = 0 time = 270
* CHECK dout1_2 vdout1_2ck53 = 1.0 time = 270
* CHECK dout1_3 vdout1_3ck53 = 1.0 time = 270
* CHECK dout1_4 vdout1_4ck53 = 0 time = 270
* CHECK dout1_5 vdout1_5ck53 = 1.0 time = 270
* CHECK dout1_6 vdout1_6ck53 = 0 time = 270
* CHECK dout1_7 vdout1_7ck53 = 0 time = 270
* CHECK dout1_8 vdout1_8ck53 = 1.0 time = 270
* CHECK dout1_9 vdout1_9ck53 = 0 time = 270
* CHECK dout1_10 vdout1_10ck53 = 1.0 time = 270
* CHECK dout1_11 vdout1_11ck53 = 0 time = 270
* CHECK dout1_12 vdout1_12ck53 = 0 time = 270
* CHECK dout1_13 vdout1_13ck53 = 1.0 time = 270
* CHECK dout1_14 vdout1_14ck53 = 1.0 time = 270
* CHECK dout1_15 vdout1_15ck53 = 1.0 time = 270
* CHECK dout1_0 vdout1_0ck54 = 1.0 time = 275
* CHECK dout1_1 vdout1_1ck54 = 0 time = 275
* CHECK dout1_2 vdout1_2ck54 = 1.0 time = 275
* CHECK dout1_3 vdout1_3ck54 = 1.0 time = 275
* CHECK dout1_4 vdout1_4ck54 = 0 time = 275
* CHECK dout1_5 vdout1_5ck54 = 1.0 time = 275
* CHECK dout1_6 vdout1_6ck54 = 0 time = 275
* CHECK dout1_7 vdout1_7ck54 = 0 time = 275
* CHECK dout1_8 vdout1_8ck54 = 1.0 time = 275
* CHECK dout1_9 vdout1_9ck54 = 0 time = 275
* CHECK dout1_10 vdout1_10ck54 = 1.0 time = 275
* CHECK dout1_11 vdout1_11ck54 = 0 time = 275
* CHECK dout1_12 vdout1_12ck54 = 0 time = 275
* CHECK dout1_13 vdout1_13ck54 = 1.0 time = 275
* CHECK dout1_14 vdout1_14ck54 = 1.0 time = 275
* CHECK dout1_15 vdout1_15ck54 = 1.0 time = 275
* CHECK dout1_0 vdout1_0ck55 = 0 time = 280
* CHECK dout1_1 vdout1_1ck55 = 0 time = 280
* CHECK dout1_2 vdout1_2ck55 = 0 time = 280
* CHECK dout1_3 vdout1_3ck55 = 0 time = 280
* CHECK dout1_4 vdout1_4ck55 = 1.0 time = 280
* CHECK dout1_5 vdout1_5ck55 = 1.0 time = 280
* CHECK dout1_6 vdout1_6ck55 = 0 time = 280
* CHECK dout1_7 vdout1_7ck55 = 1.0 time = 280
* CHECK dout1_8 vdout1_8ck55 = 0 time = 280
* CHECK dout1_9 vdout1_9ck55 = 1.0 time = 280
* CHECK dout1_10 vdout1_10ck55 = 1.0 time = 280
* CHECK dout1_11 vdout1_11ck55 = 0 time = 280
* CHECK dout1_12 vdout1_12ck55 = 1.0 time = 280
* CHECK dout1_13 vdout1_13ck55 = 0 time = 280
* CHECK dout1_14 vdout1_14ck55 = 1.0 time = 280
* CHECK dout1_15 vdout1_15ck55 = 1.0 time = 280
* CHECK dout1_0 vdout1_0ck57 = 0 time = 290
* CHECK dout1_1 vdout1_1ck57 = 1.0 time = 290
* CHECK dout1_2 vdout1_2ck57 = 0 time = 290
* CHECK dout1_3 vdout1_3ck57 = 0 time = 290
* CHECK dout1_4 vdout1_4ck57 = 1.0 time = 290
* CHECK dout1_5 vdout1_5ck57 = 1.0 time = 290
* CHECK dout1_6 vdout1_6ck57 = 0 time = 290
* CHECK dout1_7 vdout1_7ck57 = 1.0 time = 290
* CHECK dout1_8 vdout1_8ck57 = 0 time = 290
* CHECK dout1_9 vdout1_9ck57 = 1.0 time = 290
* CHECK dout1_10 vdout1_10ck57 = 1.0 time = 290
* CHECK dout1_11 vdout1_11ck57 = 1.0 time = 290
* CHECK dout1_12 vdout1_12ck57 = 0 time = 290
* CHECK dout1_13 vdout1_13ck57 = 0 time = 290
* CHECK dout1_14 vdout1_14ck57 = 1.0 time = 290
* CHECK dout1_15 vdout1_15ck57 = 0 time = 290
* CHECK dout1_0 vdout1_0ck59 = 0 time = 300
* CHECK dout1_1 vdout1_1ck59 = 1.0 time = 300
* CHECK dout1_2 vdout1_2ck59 = 0 time = 300
* CHECK dout1_3 vdout1_3ck59 = 1.0 time = 300
* CHECK dout1_4 vdout1_4ck59 = 1.0 time = 300
* CHECK dout1_5 vdout1_5ck59 = 1.0 time = 300
* CHECK dout1_6 vdout1_6ck59 = 0 time = 300
* CHECK dout1_7 vdout1_7ck59 = 0 time = 300
* CHECK dout1_8 vdout1_8ck59 = 1.0 time = 300
* CHECK dout1_9 vdout1_9ck59 = 1.0 time = 300
* CHECK dout1_10 vdout1_10ck59 = 0 time = 300
* CHECK dout1_11 vdout1_11ck59 = 0 time = 300
* CHECK dout1_12 vdout1_12ck59 = 0 time = 300
* CHECK dout1_13 vdout1_13ck59 = 0 time = 300
* CHECK dout1_14 vdout1_14ck59 = 1.0 time = 300
* CHECK dout1_15 vdout1_15ck59 = 0 time = 300
* CHECK dout1_0 vdout1_0ck64 = 1.0 time = 325
* CHECK dout1_1 vdout1_1ck64 = 0 time = 325
* CHECK dout1_2 vdout1_2ck64 = 0 time = 325
* CHECK dout1_3 vdout1_3ck64 = 1.0 time = 325
* CHECK dout1_4 vdout1_4ck64 = 0 time = 325
* CHECK dout1_5 vdout1_5ck64 = 0 time = 325
* CHECK dout1_6 vdout1_6ck64 = 1.0 time = 325
* CHECK dout1_7 vdout1_7ck64 = 0 time = 325
* CHECK dout1_8 vdout1_8ck64 = 1.0 time = 325
* CHECK dout1_9 vdout1_9ck64 = 1.0 time = 325
* CHECK dout1_10 vdout1_10ck64 = 0 time = 325
* CHECK dout1_11 vdout1_11ck64 = 0 time = 325
* CHECK dout1_12 vdout1_12ck64 = 1.0 time = 325
* CHECK dout1_13 vdout1_13ck64 = 1.0 time = 325
* CHECK dout1_14 vdout1_14ck64 = 1.0 time = 325
* CHECK dout1_15 vdout1_15ck64 = 0 time = 325
* CHECK dout1_0 vdout1_0ck65 = 1.0 time = 330
* CHECK dout1_1 vdout1_1ck65 = 0 time = 330
* CHECK dout1_2 vdout1_2ck65 = 0 time = 330
* CHECK dout1_3 vdout1_3ck65 = 1.0 time = 330
* CHECK dout1_4 vdout1_4ck65 = 0 time = 330
* CHECK dout1_5 vdout1_5ck65 = 0 time = 330
* CHECK dout1_6 vdout1_6ck65 = 1.0 time = 330
* CHECK dout1_7 vdout1_7ck65 = 0 time = 330
* CHECK dout1_8 vdout1_8ck65 = 1.0 time = 330
* CHECK dout1_9 vdout1_9ck65 = 1.0 time = 330
* CHECK dout1_10 vdout1_10ck65 = 0 time = 330
* CHECK dout1_11 vdout1_11ck65 = 0 time = 330
* CHECK dout1_12 vdout1_12ck65 = 1.0 time = 330
* CHECK dout1_13 vdout1_13ck65 = 1.0 time = 330
* CHECK dout1_14 vdout1_14ck65 = 1.0 time = 330
* CHECK dout1_15 vdout1_15ck65 = 0 time = 330
* CHECK dout1_0 vdout1_0ck66 = 1.0 time = 335
* CHECK dout1_1 vdout1_1ck66 = 0 time = 335
* CHECK dout1_2 vdout1_2ck66 = 0 time = 335
* CHECK dout1_3 vdout1_3ck66 = 1.0 time = 335
* CHECK dout1_4 vdout1_4ck66 = 0 time = 335
* CHECK dout1_5 vdout1_5ck66 = 0 time = 335
* CHECK dout1_6 vdout1_6ck66 = 1.0 time = 335
* CHECK dout1_7 vdout1_7ck66 = 0 time = 335
* CHECK dout1_8 vdout1_8ck66 = 1.0 time = 335
* CHECK dout1_9 vdout1_9ck66 = 1.0 time = 335
* CHECK dout1_10 vdout1_10ck66 = 0 time = 335
* CHECK dout1_11 vdout1_11ck66 = 0 time = 335
* CHECK dout1_12 vdout1_12ck66 = 1.0 time = 335
* CHECK dout1_13 vdout1_13ck66 = 1.0 time = 335
* CHECK dout1_14 vdout1_14ck66 = 1.0 time = 335
* CHECK dout1_15 vdout1_15ck66 = 0 time = 335
* CHECK dout1_0 vdout1_0ck72 = 0 time = 365
* CHECK dout1_1 vdout1_1ck72 = 1.0 time = 365
* CHECK dout1_2 vdout1_2ck72 = 0 time = 365
* CHECK dout1_3 vdout1_3ck72 = 1.0 time = 365
* CHECK dout1_4 vdout1_4ck72 = 1.0 time = 365
* CHECK dout1_5 vdout1_5ck72 = 1.0 time = 365
* CHECK dout1_6 vdout1_6ck72 = 1.0 time = 365
* CHECK dout1_7 vdout1_7ck72 = 1.0 time = 365
* CHECK dout1_8 vdout1_8ck72 = 1.0 time = 365
* CHECK dout1_9 vdout1_9ck72 = 1.0 time = 365
* CHECK dout1_10 vdout1_10ck72 = 0 time = 365
* CHECK dout1_11 vdout1_11ck72 = 0 time = 365
* CHECK dout1_12 vdout1_12ck72 = 1.0 time = 365
* CHECK dout1_13 vdout1_13ck72 = 0 time = 365
* CHECK dout1_14 vdout1_14ck72 = 1.0 time = 365
* CHECK dout1_15 vdout1_15ck72 = 1.0 time = 365
* CHECK dout1_0 vdout1_0ck74 = 0 time = 375
* CHECK dout1_1 vdout1_1ck74 = 1.0 time = 375
* CHECK dout1_2 vdout1_2ck74 = 0 time = 375
* CHECK dout1_3 vdout1_3ck74 = 1.0 time = 375
* CHECK dout1_4 vdout1_4ck74 = 1.0 time = 375
* CHECK dout1_5 vdout1_5ck74 = 1.0 time = 375
* CHECK dout1_6 vdout1_6ck74 = 1.0 time = 375
* CHECK dout1_7 vdout1_7ck74 = 1.0 time = 375
* CHECK dout1_8 vdout1_8ck74 = 1.0 time = 375
* CHECK dout1_9 vdout1_9ck74 = 1.0 time = 375
* CHECK dout1_10 vdout1_10ck74 = 0 time = 375
* CHECK dout1_11 vdout1_11ck74 = 0 time = 375
* CHECK dout1_12 vdout1_12ck74 = 1.0 time = 375
* CHECK dout1_13 vdout1_13ck74 = 0 time = 375
* CHECK dout1_14 vdout1_14ck74 = 1.0 time = 375
* CHECK dout1_15 vdout1_15ck74 = 1.0 time = 375
* CHECK dout1_0 vdout1_0ck82 = 0 time = 415
* CHECK dout1_1 vdout1_1ck82 = 0 time = 415
* CHECK dout1_2 vdout1_2ck82 = 0 time = 415
* CHECK dout1_3 vdout1_3ck82 = 1.0 time = 415
* CHECK dout1_4 vdout1_4ck82 = 1.0 time = 415
* CHECK dout1_5 vdout1_5ck82 = 0 time = 415
* CHECK dout1_6 vdout1_6ck82 = 1.0 time = 415
* CHECK dout1_7 vdout1_7ck82 = 1.0 time = 415
* CHECK dout1_8 vdout1_8ck82 = 1.0 time = 415
* CHECK dout1_9 vdout1_9ck82 = 1.0 time = 415
* CHECK dout1_10 vdout1_10ck82 = 0 time = 415
* CHECK dout1_11 vdout1_11ck82 = 0 time = 415
* CHECK dout1_12 vdout1_12ck82 = 0 time = 415
* CHECK dout1_13 vdout1_13ck82 = 1.0 time = 415
* CHECK dout1_14 vdout1_14ck82 = 0 time = 415
* CHECK dout1_15 vdout1_15ck82 = 0 time = 415
* CHECK dout1_0 vdout1_0ck86 = 1.0 time = 435
* CHECK dout1_1 vdout1_1ck86 = 0 time = 435
* CHECK dout1_2 vdout1_2ck86 = 1.0 time = 435
* CHECK dout1_3 vdout1_3ck86 = 1.0 time = 435
* CHECK dout1_4 vdout1_4ck86 = 1.0 time = 435
* CHECK dout1_5 vdout1_5ck86 = 0 time = 435
* CHECK dout1_6 vdout1_6ck86 = 1.0 time = 435
* CHECK dout1_7 vdout1_7ck86 = 0 time = 435
* CHECK dout1_8 vdout1_8ck86 = 1.0 time = 435
* CHECK dout1_9 vdout1_9ck86 = 1.0 time = 435
* CHECK dout1_10 vdout1_10ck86 = 0 time = 435
* CHECK dout1_11 vdout1_11ck86 = 0 time = 435
* CHECK dout1_12 vdout1_12ck86 = 1.0 time = 435
* CHECK dout1_13 vdout1_13ck86 = 1.0 time = 435
* CHECK dout1_14 vdout1_14ck86 = 1.0 time = 435
* CHECK dout1_15 vdout1_15ck86 = 1.0 time = 435
* CHECK dout1_0 vdout1_0ck89 = 0 time = 450
* CHECK dout1_1 vdout1_1ck89 = 0 time = 450
* CHECK dout1_2 vdout1_2ck89 = 0 time = 450
* CHECK dout1_3 vdout1_3ck89 = 1.0 time = 450
* CHECK dout1_4 vdout1_4ck89 = 1.0 time = 450
* CHECK dout1_5 vdout1_5ck89 = 0 time = 450
* CHECK dout1_6 vdout1_6ck89 = 0 time = 450
* CHECK dout1_7 vdout1_7ck89 = 1.0 time = 450
* CHECK dout1_8 vdout1_8ck89 = 1.0 time = 450
* CHECK dout1_9 vdout1_9ck89 = 1.0 time = 450
* CHECK dout1_10 vdout1_10ck89 = 1.0 time = 450
* CHECK dout1_11 vdout1_11ck89 = 0 time = 450
* CHECK dout1_12 vdout1_12ck89 = 1.0 time = 450
* CHECK dout1_13 vdout1_13ck89 = 1.0 time = 450
* CHECK dout1_14 vdout1_14ck89 = 0 time = 450
* CHECK dout1_15 vdout1_15ck89 = 0 time = 450
* CHECK dout1_0 vdout1_0ck91 = 0 time = 460
* CHECK dout1_1 vdout1_1ck91 = 0 time = 460
* CHECK dout1_2 vdout1_2ck91 = 0 time = 460
* CHECK dout1_3 vdout1_3ck91 = 1.0 time = 460
* CHECK dout1_4 vdout1_4ck91 = 1.0 time = 460
* CHECK dout1_5 vdout1_5ck91 = 1.0 time = 460
* CHECK dout1_6 vdout1_6ck91 = 0 time = 460
* CHECK dout1_7 vdout1_7ck91 = 0 time = 460
* CHECK dout1_8 vdout1_8ck91 = 0 time = 460
* CHECK dout1_9 vdout1_9ck91 = 0 time = 460
* CHECK dout1_10 vdout1_10ck91 = 1.0 time = 460
* CHECK dout1_11 vdout1_11ck91 = 1.0 time = 460
* CHECK dout1_12 vdout1_12ck91 = 1.0 time = 460
* CHECK dout1_13 vdout1_13ck91 = 1.0 time = 460
* CHECK dout1_14 vdout1_14ck91 = 1.0 time = 460
* CHECK dout1_15 vdout1_15ck91 = 1.0 time = 460
* CHECK dout1_0 vdout1_0ck92 = 0 time = 465
* CHECK dout1_1 vdout1_1ck92 = 0 time = 465
* CHECK dout1_2 vdout1_2ck92 = 0 time = 465
* CHECK dout1_3 vdout1_3ck92 = 1.0 time = 465
* CHECK dout1_4 vdout1_4ck92 = 1.0 time = 465
* CHECK dout1_5 vdout1_5ck92 = 1.0 time = 465
* CHECK dout1_6 vdout1_6ck92 = 0 time = 465
* CHECK dout1_7 vdout1_7ck92 = 0 time = 465
* CHECK dout1_8 vdout1_8ck92 = 0 time = 465
* CHECK dout1_9 vdout1_9ck92 = 0 time = 465
* CHECK dout1_10 vdout1_10ck92 = 1.0 time = 465
* CHECK dout1_11 vdout1_11ck92 = 1.0 time = 465
* CHECK dout1_12 vdout1_12ck92 = 1.0 time = 465
* CHECK dout1_13 vdout1_13ck92 = 1.0 time = 465
* CHECK dout1_14 vdout1_14ck92 = 1.0 time = 465
* CHECK dout1_15 vdout1_15ck92 = 1.0 time = 465
* CHECK dout1_0 vdout1_0ck96 = 0 time = 485
* CHECK dout1_1 vdout1_1ck96 = 1.0 time = 485
* CHECK dout1_2 vdout1_2ck96 = 1.0 time = 485
* CHECK dout1_3 vdout1_3ck96 = 1.0 time = 485
* CHECK dout1_4 vdout1_4ck96 = 0 time = 485
* CHECK dout1_5 vdout1_5ck96 = 1.0 time = 485
* CHECK dout1_6 vdout1_6ck96 = 1.0 time = 485
* CHECK dout1_7 vdout1_7ck96 = 0 time = 485
* CHECK dout1_8 vdout1_8ck96 = 1.0 time = 485
* CHECK dout1_9 vdout1_9ck96 = 1.0 time = 485
* CHECK dout1_10 vdout1_10ck96 = 1.0 time = 485
* CHECK dout1_11 vdout1_11ck96 = 1.0 time = 485
* CHECK dout1_12 vdout1_12ck96 = 0 time = 485
* CHECK dout1_13 vdout1_13ck96 = 0 time = 485
* CHECK dout1_14 vdout1_14ck96 = 1.0 time = 485
* CHECK dout1_15 vdout1_15ck96 = 0 time = 485
* CHECK dout1_0 vdout1_0ck97 = 0 time = 490
* CHECK dout1_1 vdout1_1ck97 = 1.0 time = 490
* CHECK dout1_2 vdout1_2ck97 = 1.0 time = 490
* CHECK dout1_3 vdout1_3ck97 = 1.0 time = 490
* CHECK dout1_4 vdout1_4ck97 = 0 time = 490
* CHECK dout1_5 vdout1_5ck97 = 1.0 time = 490
* CHECK dout1_6 vdout1_6ck97 = 1.0 time = 490
* CHECK dout1_7 vdout1_7ck97 = 0 time = 490
* CHECK dout1_8 vdout1_8ck97 = 1.0 time = 490
* CHECK dout1_9 vdout1_9ck97 = 1.0 time = 490
* CHECK dout1_10 vdout1_10ck97 = 1.0 time = 490
* CHECK dout1_11 vdout1_11ck97 = 1.0 time = 490
* CHECK dout1_12 vdout1_12ck97 = 0 time = 490
* CHECK dout1_13 vdout1_13ck97 = 0 time = 490
* CHECK dout1_14 vdout1_14ck97 = 1.0 time = 490
* CHECK dout1_15 vdout1_15ck97 = 0 time = 490
* CHECK dout1_0 vdout1_0ck98 = 0 time = 495
* CHECK dout1_1 vdout1_1ck98 = 1.0 time = 495
* CHECK dout1_2 vdout1_2ck98 = 1.0 time = 495
* CHECK dout1_3 vdout1_3ck98 = 1.0 time = 495
* CHECK dout1_4 vdout1_4ck98 = 0 time = 495
* CHECK dout1_5 vdout1_5ck98 = 1.0 time = 495
* CHECK dout1_6 vdout1_6ck98 = 1.0 time = 495
* CHECK dout1_7 vdout1_7ck98 = 0 time = 495
* CHECK dout1_8 vdout1_8ck98 = 1.0 time = 495
* CHECK dout1_9 vdout1_9ck98 = 1.0 time = 495
* CHECK dout1_10 vdout1_10ck98 = 1.0 time = 495
* CHECK dout1_11 vdout1_11ck98 = 1.0 time = 495
* CHECK dout1_12 vdout1_12ck98 = 0 time = 495
* CHECK dout1_13 vdout1_13ck98 = 0 time = 495
* CHECK dout1_14 vdout1_14ck98 = 1.0 time = 495
* CHECK dout1_15 vdout1_15ck98 = 0 time = 495
* CHECK dout1_0 vdout1_0ck103 = 0 time = 520
* CHECK dout1_1 vdout1_1ck103 = 0 time = 520
* CHECK dout1_2 vdout1_2ck103 = 1.0 time = 520
* CHECK dout1_3 vdout1_3ck103 = 0 time = 520
* CHECK dout1_4 vdout1_4ck103 = 0 time = 520
* CHECK dout1_5 vdout1_5ck103 = 1.0 time = 520
* CHECK dout1_6 vdout1_6ck103 = 0 time = 520
* CHECK dout1_7 vdout1_7ck103 = 1.0 time = 520
* CHECK dout1_8 vdout1_8ck103 = 1.0 time = 520
* CHECK dout1_9 vdout1_9ck103 = 1.0 time = 520
* CHECK dout1_10 vdout1_10ck103 = 0 time = 520
* CHECK dout1_11 vdout1_11ck103 = 0 time = 520
* CHECK dout1_12 vdout1_12ck103 = 1.0 time = 520
* CHECK dout1_13 vdout1_13ck103 = 1.0 time = 520
* CHECK dout1_14 vdout1_14ck103 = 0 time = 520
* CHECK dout1_15 vdout1_15ck103 = 1.0 time = 520
* CHECK dout1_0 vdout1_0ck106 = 0 time = 535
* CHECK dout1_1 vdout1_1ck106 = 0 time = 535
* CHECK dout1_2 vdout1_2ck106 = 1.0 time = 535
* CHECK dout1_3 vdout1_3ck106 = 0 time = 535
* CHECK dout1_4 vdout1_4ck106 = 0 time = 535
* CHECK dout1_5 vdout1_5ck106 = 1.0 time = 535
* CHECK dout1_6 vdout1_6ck106 = 0 time = 535
* CHECK dout1_7 vdout1_7ck106 = 0 time = 535
* CHECK dout1_8 vdout1_8ck106 = 1.0 time = 535
* CHECK dout1_9 vdout1_9ck106 = 0 time = 535
* CHECK dout1_10 vdout1_10ck106 = 0 time = 535
* CHECK dout1_11 vdout1_11ck106 = 1.0 time = 535
* CHECK dout1_12 vdout1_12ck106 = 1.0 time = 535
* CHECK dout1_13 vdout1_13ck106 = 1.0 time = 535
* CHECK dout1_14 vdout1_14ck106 = 0 time = 535
* CHECK dout1_15 vdout1_15ck106 = 0 time = 535
* CHECK dout1_0 vdout1_0ck109 = 1.0 time = 550
* CHECK dout1_1 vdout1_1ck109 = 0 time = 550
* CHECK dout1_2 vdout1_2ck109 = 0 time = 550
* CHECK dout1_3 vdout1_3ck109 = 0 time = 550
* CHECK dout1_4 vdout1_4ck109 = 1.0 time = 550
* CHECK dout1_5 vdout1_5ck109 = 0 time = 550
* CHECK dout1_6 vdout1_6ck109 = 0 time = 550
* CHECK dout1_7 vdout1_7ck109 = 0 time = 550
* CHECK dout1_8 vdout1_8ck109 = 1.0 time = 550
* CHECK dout1_9 vdout1_9ck109 = 0 time = 550
* CHECK dout1_10 vdout1_10ck109 = 1.0 time = 550
* CHECK dout1_11 vdout1_11ck109 = 0 time = 550
* CHECK dout1_12 vdout1_12ck109 = 1.0 time = 550
* CHECK dout1_13 vdout1_13ck109 = 1.0 time = 550
* CHECK dout1_14 vdout1_14ck109 = 0 time = 550
* CHECK dout1_15 vdout1_15ck109 = 1.0 time = 550
* CHECK dout1_0 vdout1_0ck110 = 1.0 time = 555
* CHECK dout1_1 vdout1_1ck110 = 0 time = 555
* CHECK dout1_2 vdout1_2ck110 = 0 time = 555
* CHECK dout1_3 vdout1_3ck110 = 0 time = 555
* CHECK dout1_4 vdout1_4ck110 = 1.0 time = 555
* CHECK dout1_5 vdout1_5ck110 = 0 time = 555
* CHECK dout1_6 vdout1_6ck110 = 0 time = 555
* CHECK dout1_7 vdout1_7ck110 = 0 time = 555
* CHECK dout1_8 vdout1_8ck110 = 1.0 time = 555
* CHECK dout1_9 vdout1_9ck110 = 0 time = 555
* CHECK dout1_10 vdout1_10ck110 = 1.0 time = 555
* CHECK dout1_11 vdout1_11ck110 = 0 time = 555
* CHECK dout1_12 vdout1_12ck110 = 1.0 time = 555
* CHECK dout1_13 vdout1_13ck110 = 1.0 time = 555
* CHECK dout1_14 vdout1_14ck110 = 0 time = 555
* CHECK dout1_15 vdout1_15ck110 = 1.0 time = 555
* CHECK dout1_0 vdout1_0ck112 = 0 time = 565
* CHECK dout1_1 vdout1_1ck112 = 0 time = 565
* CHECK dout1_2 vdout1_2ck112 = 0 time = 565
* CHECK dout1_3 vdout1_3ck112 = 0 time = 565
* CHECK dout1_4 vdout1_4ck112 = 1.0 time = 565
* CHECK dout1_5 vdout1_5ck112 = 0 time = 565
* CHECK dout1_6 vdout1_6ck112 = 0 time = 565
* CHECK dout1_7 vdout1_7ck112 = 1.0 time = 565
* CHECK dout1_8 vdout1_8ck112 = 1.0 time = 565
* CHECK dout1_9 vdout1_9ck112 = 0 time = 565
* CHECK dout1_10 vdout1_10ck112 = 1.0 time = 565
* CHECK dout1_11 vdout1_11ck112 = 1.0 time = 565
* CHECK dout1_12 vdout1_12ck112 = 1.0 time = 565
* CHECK dout1_13 vdout1_13ck112 = 1.0 time = 565
* CHECK dout1_14 vdout1_14ck112 = 1.0 time = 565
* CHECK dout1_15 vdout1_15ck112 = 0 time = 565
* CHECK dout1_0 vdout1_0ck114 = 0 time = 575
* CHECK dout1_1 vdout1_1ck114 = 1.0 time = 575
* CHECK dout1_2 vdout1_2ck114 = 0 time = 575
* CHECK dout1_3 vdout1_3ck114 = 0 time = 575
* CHECK dout1_4 vdout1_4ck114 = 0 time = 575
* CHECK dout1_5 vdout1_5ck114 = 0 time = 575
* CHECK dout1_6 vdout1_6ck114 = 0 time = 575
* CHECK dout1_7 vdout1_7ck114 = 1.0 time = 575
* CHECK dout1_8 vdout1_8ck114 = 0 time = 575
* CHECK dout1_9 vdout1_9ck114 = 0 time = 575
* CHECK dout1_10 vdout1_10ck114 = 0 time = 575
* CHECK dout1_11 vdout1_11ck114 = 1.0 time = 575
* CHECK dout1_12 vdout1_12ck114 = 0 time = 575
* CHECK dout1_13 vdout1_13ck114 = 0 time = 575
* CHECK dout1_14 vdout1_14ck114 = 0 time = 575
* CHECK dout1_15 vdout1_15ck114 = 1.0 time = 575
* CHECK dout1_0 vdout1_0ck117 = 0 time = 590
* CHECK dout1_1 vdout1_1ck117 = 1.0 time = 590
* CHECK dout1_2 vdout1_2ck117 = 0 time = 590
* CHECK dout1_3 vdout1_3ck117 = 0 time = 590
* CHECK dout1_4 vdout1_4ck117 = 0 time = 590
* CHECK dout1_5 vdout1_5ck117 = 0 time = 590
* CHECK dout1_6 vdout1_6ck117 = 0 time = 590
* CHECK dout1_7 vdout1_7ck117 = 1.0 time = 590
* CHECK dout1_8 vdout1_8ck117 = 0 time = 590
* CHECK dout1_9 vdout1_9ck117 = 0 time = 590
* CHECK dout1_10 vdout1_10ck117 = 0 time = 590
* CHECK dout1_11 vdout1_11ck117 = 1.0 time = 590
* CHECK dout1_12 vdout1_12ck117 = 0 time = 590
* CHECK dout1_13 vdout1_13ck117 = 0 time = 590
* CHECK dout1_14 vdout1_14ck117 = 0 time = 590
* CHECK dout1_15 vdout1_15ck117 = 1.0 time = 590
* CHECK dout1_0 vdout1_0ck118 = 0 time = 595
* CHECK dout1_1 vdout1_1ck118 = 1.0 time = 595
* CHECK dout1_2 vdout1_2ck118 = 0 time = 595
* CHECK dout1_3 vdout1_3ck118 = 0 time = 595
* CHECK dout1_4 vdout1_4ck118 = 0 time = 595
* CHECK dout1_5 vdout1_5ck118 = 0 time = 595
* CHECK dout1_6 vdout1_6ck118 = 0 time = 595
* CHECK dout1_7 vdout1_7ck118 = 1.0 time = 595
* CHECK dout1_8 vdout1_8ck118 = 0 time = 595
* CHECK dout1_9 vdout1_9ck118 = 0 time = 595
* CHECK dout1_10 vdout1_10ck118 = 0 time = 595
* CHECK dout1_11 vdout1_11ck118 = 1.0 time = 595
* CHECK dout1_12 vdout1_12ck118 = 0 time = 595
* CHECK dout1_13 vdout1_13ck118 = 0 time = 595
* CHECK dout1_14 vdout1_14ck118 = 0 time = 595
* CHECK dout1_15 vdout1_15ck118 = 1.0 time = 595
* CHECK dout1_0 vdout1_0ck119 = 0 time = 600
* CHECK dout1_1 vdout1_1ck119 = 0 time = 600
* CHECK dout1_2 vdout1_2ck119 = 1.0 time = 600
* CHECK dout1_3 vdout1_3ck119 = 1.0 time = 600
* CHECK dout1_4 vdout1_4ck119 = 0 time = 600
* CHECK dout1_5 vdout1_5ck119 = 0 time = 600
* CHECK dout1_6 vdout1_6ck119 = 0 time = 600
* CHECK dout1_7 vdout1_7ck119 = 1.0 time = 600
* CHECK dout1_8 vdout1_8ck119 = 1.0 time = 600
* CHECK dout1_9 vdout1_9ck119 = 1.0 time = 600
* CHECK dout1_10 vdout1_10ck119 = 0 time = 600
* CHECK dout1_11 vdout1_11ck119 = 1.0 time = 600
* CHECK dout1_12 vdout1_12ck119 = 1.0 time = 600
* CHECK dout1_13 vdout1_13ck119 = 1.0 time = 600
* CHECK dout1_14 vdout1_14ck119 = 0 time = 600
* CHECK dout1_15 vdout1_15ck119 = 0 time = 600
* CHECK dout1_0 vdout1_0ck121 = 0 time = 610
* CHECK dout1_1 vdout1_1ck121 = 1.0 time = 610
* CHECK dout1_2 vdout1_2ck121 = 0 time = 610
* CHECK dout1_3 vdout1_3ck121 = 1.0 time = 610
* CHECK dout1_4 vdout1_4ck121 = 0 time = 610
* CHECK dout1_5 vdout1_5ck121 = 0 time = 610
* CHECK dout1_6 vdout1_6ck121 = 1.0 time = 610
* CHECK dout1_7 vdout1_7ck121 = 0 time = 610
* CHECK dout1_8 vdout1_8ck121 = 0 time = 610
* CHECK dout1_9 vdout1_9ck121 = 0 time = 610
* CHECK dout1_10 vdout1_10ck121 = 0 time = 610
* CHECK dout1_11 vdout1_11ck121 = 0 time = 610
* CHECK dout1_12 vdout1_12ck121 = 0 time = 610
* CHECK dout1_13 vdout1_13ck121 = 0 time = 610
* CHECK dout1_14 vdout1_14ck121 = 0 time = 610
* CHECK dout1_15 vdout1_15ck121 = 1.0 time = 610
* CHECK dout1_0 vdout1_0ck125 = 0 time = 630
* CHECK dout1_1 vdout1_1ck125 = 0 time = 630
* CHECK dout1_2 vdout1_2ck125 = 0 time = 630
* CHECK dout1_3 vdout1_3ck125 = 0 time = 630
* CHECK dout1_4 vdout1_4ck125 = 1.0 time = 630
* CHECK dout1_5 vdout1_5ck125 = 1.0 time = 630
* CHECK dout1_6 vdout1_6ck125 = 1.0 time = 630
* CHECK dout1_7 vdout1_7ck125 = 1.0 time = 630
* CHECK dout1_8 vdout1_8ck125 = 0 time = 630
* CHECK dout1_9 vdout1_9ck125 = 0 time = 630
* CHECK dout1_10 vdout1_10ck125 = 0 time = 630
* CHECK dout1_11 vdout1_11ck125 = 1.0 time = 630
* CHECK dout1_12 vdout1_12ck125 = 1.0 time = 630
* CHECK dout1_13 vdout1_13ck125 = 1.0 time = 630
* CHECK dout1_14 vdout1_14ck125 = 1.0 time = 630
* CHECK dout1_15 vdout1_15ck125 = 1.0 time = 630
* CHECK dout1_0 vdout1_0ck128 = 0 time = 645
* CHECK dout1_1 vdout1_1ck128 = 0 time = 645
* CHECK dout1_2 vdout1_2ck128 = 1.0 time = 645
* CHECK dout1_3 vdout1_3ck128 = 0 time = 645
* CHECK dout1_4 vdout1_4ck128 = 1.0 time = 645
* CHECK dout1_5 vdout1_5ck128 = 1.0 time = 645
* CHECK dout1_6 vdout1_6ck128 = 1.0 time = 645
* CHECK dout1_7 vdout1_7ck128 = 1.0 time = 645
* CHECK dout1_8 vdout1_8ck128 = 1.0 time = 645
* CHECK dout1_9 vdout1_9ck128 = 1.0 time = 645
* CHECK dout1_10 vdout1_10ck128 = 0 time = 645
* CHECK dout1_11 vdout1_11ck128 = 1.0 time = 645
* CHECK dout1_12 vdout1_12ck128 = 0 time = 645
* CHECK dout1_13 vdout1_13ck128 = 0 time = 645
* CHECK dout1_14 vdout1_14ck128 = 0 time = 645
* CHECK dout1_15 vdout1_15ck128 = 0 time = 645
* CHECK dout1_0 vdout1_0ck129 = 0 time = 650
* CHECK dout1_1 vdout1_1ck129 = 0 time = 650
* CHECK dout1_2 vdout1_2ck129 = 1.0 time = 650
* CHECK dout1_3 vdout1_3ck129 = 0 time = 650
* CHECK dout1_4 vdout1_4ck129 = 1.0 time = 650
* CHECK dout1_5 vdout1_5ck129 = 1.0 time = 650
* CHECK dout1_6 vdout1_6ck129 = 1.0 time = 650
* CHECK dout1_7 vdout1_7ck129 = 1.0 time = 650
* CHECK dout1_8 vdout1_8ck129 = 1.0 time = 650
* CHECK dout1_9 vdout1_9ck129 = 1.0 time = 650
* CHECK dout1_10 vdout1_10ck129 = 0 time = 650
* CHECK dout1_11 vdout1_11ck129 = 1.0 time = 650
* CHECK dout1_12 vdout1_12ck129 = 0 time = 650
* CHECK dout1_13 vdout1_13ck129 = 0 time = 650
* CHECK dout1_14 vdout1_14ck129 = 0 time = 650
* CHECK dout1_15 vdout1_15ck129 = 0 time = 650
* CHECK dout1_0 vdout1_0ck131 = 0 time = 660
* CHECK dout1_1 vdout1_1ck131 = 0 time = 660
* CHECK dout1_2 vdout1_2ck131 = 0 time = 660
* CHECK dout1_3 vdout1_3ck131 = 0 time = 660
* CHECK dout1_4 vdout1_4ck131 = 1.0 time = 660
* CHECK dout1_5 vdout1_5ck131 = 1.0 time = 660
* CHECK dout1_6 vdout1_6ck131 = 1.0 time = 660
* CHECK dout1_7 vdout1_7ck131 = 1.0 time = 660
* CHECK dout1_8 vdout1_8ck131 = 0 time = 660
* CHECK dout1_9 vdout1_9ck131 = 0 time = 660
* CHECK dout1_10 vdout1_10ck131 = 0 time = 660
* CHECK dout1_11 vdout1_11ck131 = 1.0 time = 660
* CHECK dout1_12 vdout1_12ck131 = 1.0 time = 660
* CHECK dout1_13 vdout1_13ck131 = 1.0 time = 660
* CHECK dout1_14 vdout1_14ck131 = 1.0 time = 660
* CHECK dout1_15 vdout1_15ck131 = 1.0 time = 660
* CHECK dout1_0 vdout1_0ck133 = 0 time = 670
* CHECK dout1_1 vdout1_1ck133 = 0 time = 670
* CHECK dout1_2 vdout1_2ck133 = 0 time = 670
* CHECK dout1_3 vdout1_3ck133 = 0 time = 670
* CHECK dout1_4 vdout1_4ck133 = 1.0 time = 670
* CHECK dout1_5 vdout1_5ck133 = 1.0 time = 670
* CHECK dout1_6 vdout1_6ck133 = 1.0 time = 670
* CHECK dout1_7 vdout1_7ck133 = 1.0 time = 670
* CHECK dout1_8 vdout1_8ck133 = 0 time = 670
* CHECK dout1_9 vdout1_9ck133 = 0 time = 670
* CHECK dout1_10 vdout1_10ck133 = 0 time = 670
* CHECK dout1_11 vdout1_11ck133 = 1.0 time = 670
* CHECK dout1_12 vdout1_12ck133 = 1.0 time = 670
* CHECK dout1_13 vdout1_13ck133 = 1.0 time = 670
* CHECK dout1_14 vdout1_14ck133 = 1.0 time = 670
* CHECK dout1_15 vdout1_15ck133 = 1.0 time = 670
* CHECK dout1_0 vdout1_0ck134 = 0 time = 675
* CHECK dout1_1 vdout1_1ck134 = 0 time = 675
* CHECK dout1_2 vdout1_2ck134 = 0 time = 675
* CHECK dout1_3 vdout1_3ck134 = 0 time = 675
* CHECK dout1_4 vdout1_4ck134 = 1.0 time = 675
* CHECK dout1_5 vdout1_5ck134 = 1.0 time = 675
* CHECK dout1_6 vdout1_6ck134 = 1.0 time = 675
* CHECK dout1_7 vdout1_7ck134 = 1.0 time = 675
* CHECK dout1_8 vdout1_8ck134 = 0 time = 675
* CHECK dout1_9 vdout1_9ck134 = 0 time = 675
* CHECK dout1_10 vdout1_10ck134 = 0 time = 675
* CHECK dout1_11 vdout1_11ck134 = 1.0 time = 675
* CHECK dout1_12 vdout1_12ck134 = 1.0 time = 675
* CHECK dout1_13 vdout1_13ck134 = 1.0 time = 675
* CHECK dout1_14 vdout1_14ck134 = 1.0 time = 675
* CHECK dout1_15 vdout1_15ck134 = 1.0 time = 675
* CHECK dout1_0 vdout1_0ck135 = 1.0 time = 680
* CHECK dout1_1 vdout1_1ck135 = 1.0 time = 680
* CHECK dout1_2 vdout1_2ck135 = 1.0 time = 680
* CHECK dout1_3 vdout1_3ck135 = 1.0 time = 680
* CHECK dout1_4 vdout1_4ck135 = 1.0 time = 680
* CHECK dout1_5 vdout1_5ck135 = 0 time = 680
* CHECK dout1_6 vdout1_6ck135 = 1.0 time = 680
* CHECK dout1_7 vdout1_7ck135 = 1.0 time = 680
* CHECK dout1_8 vdout1_8ck135 = 1.0 time = 680
* CHECK dout1_9 vdout1_9ck135 = 1.0 time = 680
* CHECK dout1_10 vdout1_10ck135 = 1.0 time = 680
* CHECK dout1_11 vdout1_11ck135 = 0 time = 680
* CHECK dout1_12 vdout1_12ck135 = 1.0 time = 680
* CHECK dout1_13 vdout1_13ck135 = 0 time = 680
* CHECK dout1_14 vdout1_14ck135 = 1.0 time = 680
* CHECK dout1_15 vdout1_15ck135 = 1.0 time = 680
* CHECK dout1_0 vdout1_0ck136 = 0 time = 685
* CHECK dout1_1 vdout1_1ck136 = 0 time = 685
* CHECK dout1_2 vdout1_2ck136 = 0 time = 685
* CHECK dout1_3 vdout1_3ck136 = 0 time = 685
* CHECK dout1_4 vdout1_4ck136 = 1.0 time = 685
* CHECK dout1_5 vdout1_5ck136 = 1.0 time = 685
* CHECK dout1_6 vdout1_6ck136 = 1.0 time = 685
* CHECK dout1_7 vdout1_7ck136 = 1.0 time = 685
* CHECK dout1_8 vdout1_8ck136 = 0 time = 685
* CHECK dout1_9 vdout1_9ck136 = 0 time = 685
* CHECK dout1_10 vdout1_10ck136 = 0 time = 685
* CHECK dout1_11 vdout1_11ck136 = 1.0 time = 685
* CHECK dout1_12 vdout1_12ck136 = 1.0 time = 685
* CHECK dout1_13 vdout1_13ck136 = 1.0 time = 685
* CHECK dout1_14 vdout1_14ck136 = 1.0 time = 685
* CHECK dout1_15 vdout1_15ck136 = 1.0 time = 685
* CHECK dout1_0 vdout1_0ck137 = 1.0 time = 690
* CHECK dout1_1 vdout1_1ck137 = 1.0 time = 690
* CHECK dout1_2 vdout1_2ck137 = 1.0 time = 690
* CHECK dout1_3 vdout1_3ck137 = 1.0 time = 690
* CHECK dout1_4 vdout1_4ck137 = 1.0 time = 690
* CHECK dout1_5 vdout1_5ck137 = 0 time = 690
* CHECK dout1_6 vdout1_6ck137 = 1.0 time = 690
* CHECK dout1_7 vdout1_7ck137 = 1.0 time = 690
* CHECK dout1_8 vdout1_8ck137 = 1.0 time = 690
* CHECK dout1_9 vdout1_9ck137 = 1.0 time = 690
* CHECK dout1_10 vdout1_10ck137 = 1.0 time = 690
* CHECK dout1_11 vdout1_11ck137 = 0 time = 690
* CHECK dout1_12 vdout1_12ck137 = 1.0 time = 690
* CHECK dout1_13 vdout1_13ck137 = 0 time = 690
* CHECK dout1_14 vdout1_14ck137 = 1.0 time = 690
* CHECK dout1_15 vdout1_15ck137 = 1.0 time = 690
* CHECK dout1_0 vdout1_0ck139 = 0 time = 700
* CHECK dout1_1 vdout1_1ck139 = 1.0 time = 700
* CHECK dout1_2 vdout1_2ck139 = 1.0 time = 700
* CHECK dout1_3 vdout1_3ck139 = 1.0 time = 700
* CHECK dout1_4 vdout1_4ck139 = 0 time = 700
* CHECK dout1_5 vdout1_5ck139 = 1.0 time = 700
* CHECK dout1_6 vdout1_6ck139 = 0 time = 700
* CHECK dout1_7 vdout1_7ck139 = 0 time = 700
* CHECK dout1_8 vdout1_8ck139 = 0 time = 700
* CHECK dout1_9 vdout1_9ck139 = 0 time = 700
* CHECK dout1_10 vdout1_10ck139 = 1.0 time = 700
* CHECK dout1_11 vdout1_11ck139 = 0 time = 700
* CHECK dout1_12 vdout1_12ck139 = 0 time = 700
* CHECK dout1_13 vdout1_13ck139 = 0 time = 700
* CHECK dout1_14 vdout1_14ck139 = 1.0 time = 700
* CHECK dout1_15 vdout1_15ck139 = 1.0 time = 700
* CHECK dout1_0 vdout1_0ck142 = 0 time = 715
* CHECK dout1_1 vdout1_1ck142 = 1.0 time = 715
* CHECK dout1_2 vdout1_2ck142 = 1.0 time = 715
* CHECK dout1_3 vdout1_3ck142 = 1.0 time = 715
* CHECK dout1_4 vdout1_4ck142 = 0 time = 715
* CHECK dout1_5 vdout1_5ck142 = 0 time = 715
* CHECK dout1_6 vdout1_6ck142 = 1.0 time = 715
* CHECK dout1_7 vdout1_7ck142 = 1.0 time = 715
* CHECK dout1_8 vdout1_8ck142 = 0 time = 715
* CHECK dout1_9 vdout1_9ck142 = 0 time = 715
* CHECK dout1_10 vdout1_10ck142 = 0 time = 715
* CHECK dout1_11 vdout1_11ck142 = 0 time = 715
* CHECK dout1_12 vdout1_12ck142 = 1.0 time = 715
* CHECK dout1_13 vdout1_13ck142 = 1.0 time = 715
* CHECK dout1_14 vdout1_14ck142 = 1.0 time = 715
* CHECK dout1_15 vdout1_15ck142 = 0 time = 715
* CHECK dout1_0 vdout1_0ck148 = 1.0 time = 745
* CHECK dout1_1 vdout1_1ck148 = 0 time = 745
* CHECK dout1_2 vdout1_2ck148 = 0 time = 745
* CHECK dout1_3 vdout1_3ck148 = 1.0 time = 745
* CHECK dout1_4 vdout1_4ck148 = 0 time = 745
* CHECK dout1_5 vdout1_5ck148 = 1.0 time = 745
* CHECK dout1_6 vdout1_6ck148 = 0 time = 745
* CHECK dout1_7 vdout1_7ck148 = 0 time = 745
* CHECK dout1_8 vdout1_8ck148 = 1.0 time = 745
* CHECK dout1_9 vdout1_9ck148 = 0 time = 745
* CHECK dout1_10 vdout1_10ck148 = 0 time = 745
* CHECK dout1_11 vdout1_11ck148 = 1.0 time = 745
* CHECK dout1_12 vdout1_12ck148 = 0 time = 745
* CHECK dout1_13 vdout1_13ck148 = 0 time = 745
* CHECK dout1_14 vdout1_14ck148 = 0 time = 745
* CHECK dout1_15 vdout1_15ck148 = 0 time = 745
* CHECK dout1_0 vdout1_0ck150 = 1.0 time = 755
* CHECK dout1_1 vdout1_1ck150 = 0 time = 755
* CHECK dout1_2 vdout1_2ck150 = 1.0 time = 755
* CHECK dout1_3 vdout1_3ck150 = 0 time = 755
* CHECK dout1_4 vdout1_4ck150 = 0 time = 755
* CHECK dout1_5 vdout1_5ck150 = 1.0 time = 755
* CHECK dout1_6 vdout1_6ck150 = 1.0 time = 755
* CHECK dout1_7 vdout1_7ck150 = 0 time = 755
* CHECK dout1_8 vdout1_8ck150 = 1.0 time = 755
* CHECK dout1_9 vdout1_9ck150 = 0 time = 755
* CHECK dout1_10 vdout1_10ck150 = 0 time = 755
* CHECK dout1_11 vdout1_11ck150 = 1.0 time = 755
* CHECK dout1_12 vdout1_12ck150 = 1.0 time = 755
* CHECK dout1_13 vdout1_13ck150 = 1.0 time = 755
* CHECK dout1_14 vdout1_14ck150 = 1.0 time = 755
* CHECK dout1_15 vdout1_15ck150 = 1.0 time = 755
* CHECK dout1_0 vdout1_0ck152 = 1.0 time = 765
* CHECK dout1_1 vdout1_1ck152 = 0 time = 765
* CHECK dout1_2 vdout1_2ck152 = 1.0 time = 765
* CHECK dout1_3 vdout1_3ck152 = 0 time = 765
* CHECK dout1_4 vdout1_4ck152 = 0 time = 765
* CHECK dout1_5 vdout1_5ck152 = 1.0 time = 765
* CHECK dout1_6 vdout1_6ck152 = 1.0 time = 765
* CHECK dout1_7 vdout1_7ck152 = 0 time = 765
* CHECK dout1_8 vdout1_8ck152 = 1.0 time = 765
* CHECK dout1_9 vdout1_9ck152 = 0 time = 765
* CHECK dout1_10 vdout1_10ck152 = 0 time = 765
* CHECK dout1_11 vdout1_11ck152 = 1.0 time = 765
* CHECK dout1_12 vdout1_12ck152 = 1.0 time = 765
* CHECK dout1_13 vdout1_13ck152 = 1.0 time = 765
* CHECK dout1_14 vdout1_14ck152 = 1.0 time = 765
* CHECK dout1_15 vdout1_15ck152 = 1.0 time = 765
* CHECK dout1_0 vdout1_0ck154 = 0 time = 775
* CHECK dout1_1 vdout1_1ck154 = 0 time = 775
* CHECK dout1_2 vdout1_2ck154 = 0 time = 775
* CHECK dout1_3 vdout1_3ck154 = 1.0 time = 775
* CHECK dout1_4 vdout1_4ck154 = 0 time = 775
* CHECK dout1_5 vdout1_5ck154 = 1.0 time = 775
* CHECK dout1_6 vdout1_6ck154 = 0 time = 775
* CHECK dout1_7 vdout1_7ck154 = 1.0 time = 775
* CHECK dout1_8 vdout1_8ck154 = 0 time = 775
* CHECK dout1_9 vdout1_9ck154 = 1.0 time = 775
* CHECK dout1_10 vdout1_10ck154 = 1.0 time = 775
* CHECK dout1_11 vdout1_11ck154 = 0 time = 775
* CHECK dout1_12 vdout1_12ck154 = 0 time = 775
* CHECK dout1_13 vdout1_13ck154 = 0 time = 775
* CHECK dout1_14 vdout1_14ck154 = 0 time = 775
* CHECK dout1_15 vdout1_15ck154 = 1.0 time = 775
* CHECK dout1_0 vdout1_0ck156 = 0 time = 785
* CHECK dout1_1 vdout1_1ck156 = 0 time = 785
* CHECK dout1_2 vdout1_2ck156 = 0 time = 785
* CHECK dout1_3 vdout1_3ck156 = 1.0 time = 785
* CHECK dout1_4 vdout1_4ck156 = 0 time = 785
* CHECK dout1_5 vdout1_5ck156 = 1.0 time = 785
* CHECK dout1_6 vdout1_6ck156 = 0 time = 785
* CHECK dout1_7 vdout1_7ck156 = 1.0 time = 785
* CHECK dout1_8 vdout1_8ck156 = 0 time = 785
* CHECK dout1_9 vdout1_9ck156 = 1.0 time = 785
* CHECK dout1_10 vdout1_10ck156 = 1.0 time = 785
* CHECK dout1_11 vdout1_11ck156 = 0 time = 785
* CHECK dout1_12 vdout1_12ck156 = 0 time = 785
* CHECK dout1_13 vdout1_13ck156 = 0 time = 785
* CHECK dout1_14 vdout1_14ck156 = 0 time = 785
* CHECK dout1_15 vdout1_15ck156 = 1.0 time = 785
* CHECK dout1_0 vdout1_0ck158 = 1.0 time = 795
* CHECK dout1_1 vdout1_1ck158 = 1.0 time = 795
* CHECK dout1_2 vdout1_2ck158 = 1.0 time = 795
* CHECK dout1_3 vdout1_3ck158 = 0 time = 795
* CHECK dout1_4 vdout1_4ck158 = 1.0 time = 795
* CHECK dout1_5 vdout1_5ck158 = 0 time = 795
* CHECK dout1_6 vdout1_6ck158 = 0 time = 795
* CHECK dout1_7 vdout1_7ck158 = 0 time = 795
* CHECK dout1_8 vdout1_8ck158 = 1.0 time = 795
* CHECK dout1_9 vdout1_9ck158 = 0 time = 795
* CHECK dout1_10 vdout1_10ck158 = 0 time = 795
* CHECK dout1_11 vdout1_11ck158 = 0 time = 795
* CHECK dout1_12 vdout1_12ck158 = 1.0 time = 795
* CHECK dout1_13 vdout1_13ck158 = 0 time = 795
* CHECK dout1_14 vdout1_14ck158 = 1.0 time = 795
* CHECK dout1_15 vdout1_15ck158 = 1.0 time = 795
* CHECK dout1_0 vdout1_0ck161 = 1.0 time = 810
* CHECK dout1_1 vdout1_1ck161 = 1.0 time = 810
* CHECK dout1_2 vdout1_2ck161 = 1.0 time = 810
* CHECK dout1_3 vdout1_3ck161 = 1.0 time = 810
* CHECK dout1_4 vdout1_4ck161 = 1.0 time = 810
* CHECK dout1_5 vdout1_5ck161 = 0 time = 810
* CHECK dout1_6 vdout1_6ck161 = 1.0 time = 810
* CHECK dout1_7 vdout1_7ck161 = 1.0 time = 810
* CHECK dout1_8 vdout1_8ck161 = 1.0 time = 810
* CHECK dout1_9 vdout1_9ck161 = 0 time = 810
* CHECK dout1_10 vdout1_10ck161 = 1.0 time = 810
* CHECK dout1_11 vdout1_11ck161 = 1.0 time = 810
* CHECK dout1_12 vdout1_12ck161 = 1.0 time = 810
* CHECK dout1_13 vdout1_13ck161 = 0 time = 810
* CHECK dout1_14 vdout1_14ck161 = 0 time = 810
* CHECK dout1_15 vdout1_15ck161 = 1.0 time = 810
* CHECK dout1_0 vdout1_0ck162 = 0 time = 815
* CHECK dout1_1 vdout1_1ck162 = 0 time = 815
* CHECK dout1_2 vdout1_2ck162 = 0 time = 815
* CHECK dout1_3 vdout1_3ck162 = 0 time = 815
* CHECK dout1_4 vdout1_4ck162 = 0 time = 815
* CHECK dout1_5 vdout1_5ck162 = 0 time = 815
* CHECK dout1_6 vdout1_6ck162 = 1.0 time = 815
* CHECK dout1_7 vdout1_7ck162 = 0 time = 815
* CHECK dout1_8 vdout1_8ck162 = 1.0 time = 815
* CHECK dout1_9 vdout1_9ck162 = 1.0 time = 815
* CHECK dout1_10 vdout1_10ck162 = 1.0 time = 815
* CHECK dout1_11 vdout1_11ck162 = 1.0 time = 815
* CHECK dout1_12 vdout1_12ck162 = 0 time = 815
* CHECK dout1_13 vdout1_13ck162 = 1.0 time = 815
* CHECK dout1_14 vdout1_14ck162 = 0 time = 815
* CHECK dout1_15 vdout1_15ck162 = 0 time = 815
* CHECK dout1_0 vdout1_0ck164 = 1.0 time = 825
* CHECK dout1_1 vdout1_1ck164 = 1.0 time = 825
* CHECK dout1_2 vdout1_2ck164 = 1.0 time = 825
* CHECK dout1_3 vdout1_3ck164 = 1.0 time = 825
* CHECK dout1_4 vdout1_4ck164 = 1.0 time = 825
* CHECK dout1_5 vdout1_5ck164 = 0 time = 825
* CHECK dout1_6 vdout1_6ck164 = 1.0 time = 825
* CHECK dout1_7 vdout1_7ck164 = 1.0 time = 825
* CHECK dout1_8 vdout1_8ck164 = 1.0 time = 825
* CHECK dout1_9 vdout1_9ck164 = 0 time = 825
* CHECK dout1_10 vdout1_10ck164 = 1.0 time = 825
* CHECK dout1_11 vdout1_11ck164 = 1.0 time = 825
* CHECK dout1_12 vdout1_12ck164 = 1.0 time = 825
* CHECK dout1_13 vdout1_13ck164 = 0 time = 825
* CHECK dout1_14 vdout1_14ck164 = 0 time = 825
* CHECK dout1_15 vdout1_15ck164 = 1.0 time = 825
* CHECK dout1_0 vdout1_0ck165 = 1.0 time = 830
* CHECK dout1_1 vdout1_1ck165 = 1.0 time = 830
* CHECK dout1_2 vdout1_2ck165 = 1.0 time = 830
* CHECK dout1_3 vdout1_3ck165 = 1.0 time = 830
* CHECK dout1_4 vdout1_4ck165 = 1.0 time = 830
* CHECK dout1_5 vdout1_5ck165 = 0 time = 830
* CHECK dout1_6 vdout1_6ck165 = 1.0 time = 830
* CHECK dout1_7 vdout1_7ck165 = 1.0 time = 830
* CHECK dout1_8 vdout1_8ck165 = 1.0 time = 830
* CHECK dout1_9 vdout1_9ck165 = 0 time = 830
* CHECK dout1_10 vdout1_10ck165 = 1.0 time = 830
* CHECK dout1_11 vdout1_11ck165 = 1.0 time = 830
* CHECK dout1_12 vdout1_12ck165 = 1.0 time = 830
* CHECK dout1_13 vdout1_13ck165 = 0 time = 830
* CHECK dout1_14 vdout1_14ck165 = 0 time = 830
* CHECK dout1_15 vdout1_15ck165 = 1.0 time = 830
* CHECK dout1_0 vdout1_0ck166 = 1.0 time = 835
* CHECK dout1_1 vdout1_1ck166 = 1.0 time = 835
* CHECK dout1_2 vdout1_2ck166 = 1.0 time = 835
* CHECK dout1_3 vdout1_3ck166 = 1.0 time = 835
* CHECK dout1_4 vdout1_4ck166 = 1.0 time = 835
* CHECK dout1_5 vdout1_5ck166 = 0 time = 835
* CHECK dout1_6 vdout1_6ck166 = 1.0 time = 835
* CHECK dout1_7 vdout1_7ck166 = 1.0 time = 835
* CHECK dout1_8 vdout1_8ck166 = 1.0 time = 835
* CHECK dout1_9 vdout1_9ck166 = 0 time = 835
* CHECK dout1_10 vdout1_10ck166 = 1.0 time = 835
* CHECK dout1_11 vdout1_11ck166 = 1.0 time = 835
* CHECK dout1_12 vdout1_12ck166 = 1.0 time = 835
* CHECK dout1_13 vdout1_13ck166 = 0 time = 835
* CHECK dout1_14 vdout1_14ck166 = 0 time = 835
* CHECK dout1_15 vdout1_15ck166 = 1.0 time = 835
* CHECK dout1_0 vdout1_0ck167 = 0 time = 840
* CHECK dout1_1 vdout1_1ck167 = 0 time = 840
* CHECK dout1_2 vdout1_2ck167 = 0 time = 840
* CHECK dout1_3 vdout1_3ck167 = 0 time = 840
* CHECK dout1_4 vdout1_4ck167 = 0 time = 840
* CHECK dout1_5 vdout1_5ck167 = 0 time = 840
* CHECK dout1_6 vdout1_6ck167 = 1.0 time = 840
* CHECK dout1_7 vdout1_7ck167 = 0 time = 840
* CHECK dout1_8 vdout1_8ck167 = 1.0 time = 840
* CHECK dout1_9 vdout1_9ck167 = 1.0 time = 840
* CHECK dout1_10 vdout1_10ck167 = 1.0 time = 840
* CHECK dout1_11 vdout1_11ck167 = 1.0 time = 840
* CHECK dout1_12 vdout1_12ck167 = 0 time = 840
* CHECK dout1_13 vdout1_13ck167 = 1.0 time = 840
* CHECK dout1_14 vdout1_14ck167 = 0 time = 840
* CHECK dout1_15 vdout1_15ck167 = 0 time = 840
* CHECK dout1_0 vdout1_0ck169 = 0 time = 850
* CHECK dout1_1 vdout1_1ck169 = 1.0 time = 850
* CHECK dout1_2 vdout1_2ck169 = 1.0 time = 850
* CHECK dout1_3 vdout1_3ck169 = 0 time = 850
* CHECK dout1_4 vdout1_4ck169 = 1.0 time = 850
* CHECK dout1_5 vdout1_5ck169 = 1.0 time = 850
* CHECK dout1_6 vdout1_6ck169 = 0 time = 850
* CHECK dout1_7 vdout1_7ck169 = 0 time = 850
* CHECK dout1_8 vdout1_8ck169 = 1.0 time = 850
* CHECK dout1_9 vdout1_9ck169 = 0 time = 850
* CHECK dout1_10 vdout1_10ck169 = 1.0 time = 850
* CHECK dout1_11 vdout1_11ck169 = 1.0 time = 850
* CHECK dout1_12 vdout1_12ck169 = 1.0 time = 850
* CHECK dout1_13 vdout1_13ck169 = 1.0 time = 850
* CHECK dout1_14 vdout1_14ck169 = 0 time = 850
* CHECK dout1_15 vdout1_15ck169 = 0 time = 850
* CHECK dout1_0 vdout1_0ck170 = 1.0 time = 855
* CHECK dout1_1 vdout1_1ck170 = 1.0 time = 855
* CHECK dout1_2 vdout1_2ck170 = 1.0 time = 855
* CHECK dout1_3 vdout1_3ck170 = 1.0 time = 855
* CHECK dout1_4 vdout1_4ck170 = 1.0 time = 855
* CHECK dout1_5 vdout1_5ck170 = 0 time = 855
* CHECK dout1_6 vdout1_6ck170 = 1.0 time = 855
* CHECK dout1_7 vdout1_7ck170 = 1.0 time = 855
* CHECK dout1_8 vdout1_8ck170 = 1.0 time = 855
* CHECK dout1_9 vdout1_9ck170 = 0 time = 855
* CHECK dout1_10 vdout1_10ck170 = 1.0 time = 855
* CHECK dout1_11 vdout1_11ck170 = 1.0 time = 855
* CHECK dout1_12 vdout1_12ck170 = 1.0 time = 855
* CHECK dout1_13 vdout1_13ck170 = 0 time = 855
* CHECK dout1_14 vdout1_14ck170 = 0 time = 855
* CHECK dout1_15 vdout1_15ck170 = 1.0 time = 855
* CHECK dout1_0 vdout1_0ck172 = 1.0 time = 865
* CHECK dout1_1 vdout1_1ck172 = 1.0 time = 865
* CHECK dout1_2 vdout1_2ck172 = 0 time = 865
* CHECK dout1_3 vdout1_3ck172 = 0 time = 865
* CHECK dout1_4 vdout1_4ck172 = 0 time = 865
* CHECK dout1_5 vdout1_5ck172 = 0 time = 865
* CHECK dout1_6 vdout1_6ck172 = 0 time = 865
* CHECK dout1_7 vdout1_7ck172 = 1.0 time = 865
* CHECK dout1_8 vdout1_8ck172 = 0 time = 865
* CHECK dout1_9 vdout1_9ck172 = 0 time = 865
* CHECK dout1_10 vdout1_10ck172 = 0 time = 865
* CHECK dout1_11 vdout1_11ck172 = 1.0 time = 865
* CHECK dout1_12 vdout1_12ck172 = 1.0 time = 865
* CHECK dout1_13 vdout1_13ck172 = 1.0 time = 865
* CHECK dout1_14 vdout1_14ck172 = 0 time = 865
* CHECK dout1_15 vdout1_15ck172 = 0 time = 865
* CHECK dout1_0 vdout1_0ck173 = 1.0 time = 870
* CHECK dout1_1 vdout1_1ck173 = 1.0 time = 870
* CHECK dout1_2 vdout1_2ck173 = 1.0 time = 870
* CHECK dout1_3 vdout1_3ck173 = 1.0 time = 870
* CHECK dout1_4 vdout1_4ck173 = 1.0 time = 870
* CHECK dout1_5 vdout1_5ck173 = 0 time = 870
* CHECK dout1_6 vdout1_6ck173 = 1.0 time = 870
* CHECK dout1_7 vdout1_7ck173 = 1.0 time = 870
* CHECK dout1_8 vdout1_8ck173 = 1.0 time = 870
* CHECK dout1_9 vdout1_9ck173 = 0 time = 870
* CHECK dout1_10 vdout1_10ck173 = 1.0 time = 870
* CHECK dout1_11 vdout1_11ck173 = 1.0 time = 870
* CHECK dout1_12 vdout1_12ck173 = 1.0 time = 870
* CHECK dout1_13 vdout1_13ck173 = 0 time = 870
* CHECK dout1_14 vdout1_14ck173 = 0 time = 870
* CHECK dout1_15 vdout1_15ck173 = 1.0 time = 870
* CHECK dout1_0 vdout1_0ck175 = 0 time = 880
* CHECK dout1_1 vdout1_1ck175 = 0 time = 880
* CHECK dout1_2 vdout1_2ck175 = 1.0 time = 880
* CHECK dout1_3 vdout1_3ck175 = 1.0 time = 880
* CHECK dout1_4 vdout1_4ck175 = 1.0 time = 880
* CHECK dout1_5 vdout1_5ck175 = 0 time = 880
* CHECK dout1_6 vdout1_6ck175 = 1.0 time = 880
* CHECK dout1_7 vdout1_7ck175 = 1.0 time = 880
* CHECK dout1_8 vdout1_8ck175 = 0 time = 880
* CHECK dout1_9 vdout1_9ck175 = 1.0 time = 880
* CHECK dout1_10 vdout1_10ck175 = 1.0 time = 880
* CHECK dout1_11 vdout1_11ck175 = 0 time = 880
* CHECK dout1_12 vdout1_12ck175 = 1.0 time = 880
* CHECK dout1_13 vdout1_13ck175 = 0 time = 880
* CHECK dout1_14 vdout1_14ck175 = 1.0 time = 880
* CHECK dout1_15 vdout1_15ck175 = 0 time = 880
* CHECK dout1_0 vdout1_0ck176 = 0 time = 885
* CHECK dout1_1 vdout1_1ck176 = 0 time = 885
* CHECK dout1_2 vdout1_2ck176 = 1.0 time = 885
* CHECK dout1_3 vdout1_3ck176 = 1.0 time = 885
* CHECK dout1_4 vdout1_4ck176 = 1.0 time = 885
* CHECK dout1_5 vdout1_5ck176 = 0 time = 885
* CHECK dout1_6 vdout1_6ck176 = 1.0 time = 885
* CHECK dout1_7 vdout1_7ck176 = 1.0 time = 885
* CHECK dout1_8 vdout1_8ck176 = 0 time = 885
* CHECK dout1_9 vdout1_9ck176 = 1.0 time = 885
* CHECK dout1_10 vdout1_10ck176 = 1.0 time = 885
* CHECK dout1_11 vdout1_11ck176 = 0 time = 885
* CHECK dout1_12 vdout1_12ck176 = 1.0 time = 885
* CHECK dout1_13 vdout1_13ck176 = 0 time = 885
* CHECK dout1_14 vdout1_14ck176 = 1.0 time = 885
* CHECK dout1_15 vdout1_15ck176 = 0 time = 885
* CHECK dout1_0 vdout1_0ck182 = 0 time = 915
* CHECK dout1_1 vdout1_1ck182 = 0 time = 915
* CHECK dout1_2 vdout1_2ck182 = 0 time = 915
* CHECK dout1_3 vdout1_3ck182 = 0 time = 915
* CHECK dout1_4 vdout1_4ck182 = 0 time = 915
* CHECK dout1_5 vdout1_5ck182 = 0 time = 915
* CHECK dout1_6 vdout1_6ck182 = 1.0 time = 915
* CHECK dout1_7 vdout1_7ck182 = 0 time = 915
* CHECK dout1_8 vdout1_8ck182 = 0 time = 915
* CHECK dout1_9 vdout1_9ck182 = 0 time = 915
* CHECK dout1_10 vdout1_10ck182 = 1.0 time = 915
* CHECK dout1_11 vdout1_11ck182 = 1.0 time = 915
* CHECK dout1_12 vdout1_12ck182 = 1.0 time = 915
* CHECK dout1_13 vdout1_13ck182 = 1.0 time = 915
* CHECK dout1_14 vdout1_14ck182 = 0 time = 915
* CHECK dout1_15 vdout1_15ck182 = 1.0 time = 915
* CHECK dout1_0 vdout1_0ck183 = 0 time = 920
* CHECK dout1_1 vdout1_1ck183 = 0 time = 920
* CHECK dout1_2 vdout1_2ck183 = 0 time = 920
* CHECK dout1_3 vdout1_3ck183 = 0 time = 920
* CHECK dout1_4 vdout1_4ck183 = 0 time = 920
* CHECK dout1_5 vdout1_5ck183 = 0 time = 920
* CHECK dout1_6 vdout1_6ck183 = 1.0 time = 920
* CHECK dout1_7 vdout1_7ck183 = 0 time = 920
* CHECK dout1_8 vdout1_8ck183 = 0 time = 920
* CHECK dout1_9 vdout1_9ck183 = 0 time = 920
* CHECK dout1_10 vdout1_10ck183 = 1.0 time = 920
* CHECK dout1_11 vdout1_11ck183 = 1.0 time = 920
* CHECK dout1_12 vdout1_12ck183 = 1.0 time = 920
* CHECK dout1_13 vdout1_13ck183 = 1.0 time = 920
* CHECK dout1_14 vdout1_14ck183 = 0 time = 920
* CHECK dout1_15 vdout1_15ck183 = 1.0 time = 920
* CHECK dout1_0 vdout1_0ck184 = 0 time = 925
* CHECK dout1_1 vdout1_1ck184 = 0 time = 925
* CHECK dout1_2 vdout1_2ck184 = 1.0 time = 925
* CHECK dout1_3 vdout1_3ck184 = 0 time = 925
* CHECK dout1_4 vdout1_4ck184 = 0 time = 925
* CHECK dout1_5 vdout1_5ck184 = 1.0 time = 925
* CHECK dout1_6 vdout1_6ck184 = 1.0 time = 925
* CHECK dout1_7 vdout1_7ck184 = 1.0 time = 925
* CHECK dout1_8 vdout1_8ck184 = 0 time = 925
* CHECK dout1_9 vdout1_9ck184 = 1.0 time = 925
* CHECK dout1_10 vdout1_10ck184 = 1.0 time = 925
* CHECK dout1_11 vdout1_11ck184 = 0 time = 925
* CHECK dout1_12 vdout1_12ck184 = 0 time = 925
* CHECK dout1_13 vdout1_13ck184 = 0 time = 925
* CHECK dout1_14 vdout1_14ck184 = 0 time = 925
* CHECK dout1_15 vdout1_15ck184 = 0 time = 925
* CHECK dout1_0 vdout1_0ck186 = 1.0 time = 935
* CHECK dout1_1 vdout1_1ck186 = 0 time = 935
* CHECK dout1_2 vdout1_2ck186 = 1.0 time = 935
* CHECK dout1_3 vdout1_3ck186 = 0 time = 935
* CHECK dout1_4 vdout1_4ck186 = 1.0 time = 935
* CHECK dout1_5 vdout1_5ck186 = 1.0 time = 935
* CHECK dout1_6 vdout1_6ck186 = 1.0 time = 935
* CHECK dout1_7 vdout1_7ck186 = 0 time = 935
* CHECK dout1_8 vdout1_8ck186 = 1.0 time = 935
* CHECK dout1_9 vdout1_9ck186 = 0 time = 935
* CHECK dout1_10 vdout1_10ck186 = 0 time = 935
* CHECK dout1_11 vdout1_11ck186 = 1.0 time = 935
* CHECK dout1_12 vdout1_12ck186 = 1.0 time = 935
* CHECK dout1_13 vdout1_13ck186 = 0 time = 935
* CHECK dout1_14 vdout1_14ck186 = 0 time = 935
* CHECK dout1_15 vdout1_15ck186 = 0 time = 935
* CHECK dout1_0 vdout1_0ck187 = 1.0 time = 940
* CHECK dout1_1 vdout1_1ck187 = 0 time = 940
* CHECK dout1_2 vdout1_2ck187 = 1.0 time = 940
* CHECK dout1_3 vdout1_3ck187 = 0 time = 940
* CHECK dout1_4 vdout1_4ck187 = 1.0 time = 940
* CHECK dout1_5 vdout1_5ck187 = 1.0 time = 940
* CHECK dout1_6 vdout1_6ck187 = 1.0 time = 940
* CHECK dout1_7 vdout1_7ck187 = 0 time = 940
* CHECK dout1_8 vdout1_8ck187 = 1.0 time = 940
* CHECK dout1_9 vdout1_9ck187 = 0 time = 940
* CHECK dout1_10 vdout1_10ck187 = 0 time = 940
* CHECK dout1_11 vdout1_11ck187 = 1.0 time = 940
* CHECK dout1_12 vdout1_12ck187 = 1.0 time = 940
* CHECK dout1_13 vdout1_13ck187 = 0 time = 940
* CHECK dout1_14 vdout1_14ck187 = 0 time = 940
* CHECK dout1_15 vdout1_15ck187 = 0 time = 940
* CHECK dout1_0 vdout1_0ck193 = 0 time = 970
* CHECK dout1_1 vdout1_1ck193 = 0 time = 970
* CHECK dout1_2 vdout1_2ck193 = 1.0 time = 970
* CHECK dout1_3 vdout1_3ck193 = 1.0 time = 970
* CHECK dout1_4 vdout1_4ck193 = 1.0 time = 970
* CHECK dout1_5 vdout1_5ck193 = 1.0 time = 970
* CHECK dout1_6 vdout1_6ck193 = 1.0 time = 970
* CHECK dout1_7 vdout1_7ck193 = 1.0 time = 970
* CHECK dout1_8 vdout1_8ck193 = 0 time = 970
* CHECK dout1_9 vdout1_9ck193 = 1.0 time = 970
* CHECK dout1_10 vdout1_10ck193 = 0 time = 970
* CHECK dout1_11 vdout1_11ck193 = 0 time = 970
* CHECK dout1_12 vdout1_12ck193 = 1.0 time = 970
* CHECK dout1_13 vdout1_13ck193 = 0 time = 970
* CHECK dout1_14 vdout1_14ck193 = 1.0 time = 970
* CHECK dout1_15 vdout1_15ck193 = 0 time = 970
* CHECK dout1_0 vdout1_0ck194 = 0 time = 975
* CHECK dout1_1 vdout1_1ck194 = 0 time = 975
* CHECK dout1_2 vdout1_2ck194 = 1.0 time = 975
* CHECK dout1_3 vdout1_3ck194 = 1.0 time = 975
* CHECK dout1_4 vdout1_4ck194 = 1.0 time = 975
* CHECK dout1_5 vdout1_5ck194 = 1.0 time = 975
* CHECK dout1_6 vdout1_6ck194 = 1.0 time = 975
* CHECK dout1_7 vdout1_7ck194 = 1.0 time = 975
* CHECK dout1_8 vdout1_8ck194 = 0 time = 975
* CHECK dout1_9 vdout1_9ck194 = 1.0 time = 975
* CHECK dout1_10 vdout1_10ck194 = 0 time = 975
* CHECK dout1_11 vdout1_11ck194 = 0 time = 975
* CHECK dout1_12 vdout1_12ck194 = 1.0 time = 975
* CHECK dout1_13 vdout1_13ck194 = 0 time = 975
* CHECK dout1_14 vdout1_14ck194 = 1.0 time = 975
* CHECK dout1_15 vdout1_15ck194 = 0 time = 975
* CHECK dout1_0 vdout1_0ck195 = 0 time = 980
* CHECK dout1_1 vdout1_1ck195 = 0 time = 980
* CHECK dout1_2 vdout1_2ck195 = 1.0 time = 980
* CHECK dout1_3 vdout1_3ck195 = 1.0 time = 980
* CHECK dout1_4 vdout1_4ck195 = 1.0 time = 980
* CHECK dout1_5 vdout1_5ck195 = 1.0 time = 980
* CHECK dout1_6 vdout1_6ck195 = 1.0 time = 980
* CHECK dout1_7 vdout1_7ck195 = 1.0 time = 980
* CHECK dout1_8 vdout1_8ck195 = 0 time = 980
* CHECK dout1_9 vdout1_9ck195 = 1.0 time = 980
* CHECK dout1_10 vdout1_10ck195 = 0 time = 980
* CHECK dout1_11 vdout1_11ck195 = 0 time = 980
* CHECK dout1_12 vdout1_12ck195 = 1.0 time = 980
* CHECK dout1_13 vdout1_13ck195 = 0 time = 980
* CHECK dout1_14 vdout1_14ck195 = 1.0 time = 980
* CHECK dout1_15 vdout1_15ck195 = 0 time = 980
* CHECK dout1_0 vdout1_0ck196 = 0 time = 985
* CHECK dout1_1 vdout1_1ck196 = 0 time = 985
* CHECK dout1_2 vdout1_2ck196 = 1.0 time = 985
* CHECK dout1_3 vdout1_3ck196 = 1.0 time = 985
* CHECK dout1_4 vdout1_4ck196 = 1.0 time = 985
* CHECK dout1_5 vdout1_5ck196 = 1.0 time = 985
* CHECK dout1_6 vdout1_6ck196 = 1.0 time = 985
* CHECK dout1_7 vdout1_7ck196 = 1.0 time = 985
* CHECK dout1_8 vdout1_8ck196 = 0 time = 985
* CHECK dout1_9 vdout1_9ck196 = 1.0 time = 985
* CHECK dout1_10 vdout1_10ck196 = 0 time = 985
* CHECK dout1_11 vdout1_11ck196 = 0 time = 985
* CHECK dout1_12 vdout1_12ck196 = 1.0 time = 985
* CHECK dout1_13 vdout1_13ck196 = 0 time = 985
* CHECK dout1_14 vdout1_14ck196 = 1.0 time = 985
* CHECK dout1_15 vdout1_15ck196 = 0 time = 985
* CHECK dout1_0 vdout1_0ck197 = 0 time = 990
* CHECK dout1_1 vdout1_1ck197 = 0 time = 990
* CHECK dout1_2 vdout1_2ck197 = 1.0 time = 990
* CHECK dout1_3 vdout1_3ck197 = 1.0 time = 990
* CHECK dout1_4 vdout1_4ck197 = 0 time = 990
* CHECK dout1_5 vdout1_5ck197 = 0 time = 990
* CHECK dout1_6 vdout1_6ck197 = 1.0 time = 990
* CHECK dout1_7 vdout1_7ck197 = 1.0 time = 990
* CHECK dout1_8 vdout1_8ck197 = 1.0 time = 990
* CHECK dout1_9 vdout1_9ck197 = 0 time = 990
* CHECK dout1_10 vdout1_10ck197 = 0 time = 990
* CHECK dout1_11 vdout1_11ck197 = 1.0 time = 990
* CHECK dout1_12 vdout1_12ck197 = 0 time = 990
* CHECK dout1_13 vdout1_13ck197 = 1.0 time = 990
* CHECK dout1_14 vdout1_14ck197 = 1.0 time = 990
* CHECK dout1_15 vdout1_15ck197 = 0 time = 990
* CHECK dout1_0 vdout1_0ck198 = 0 time = 995
* CHECK dout1_1 vdout1_1ck198 = 0 time = 995
* CHECK dout1_2 vdout1_2ck198 = 1.0 time = 995
* CHECK dout1_3 vdout1_3ck198 = 1.0 time = 995
* CHECK dout1_4 vdout1_4ck198 = 0 time = 995
* CHECK dout1_5 vdout1_5ck198 = 0 time = 995
* CHECK dout1_6 vdout1_6ck198 = 1.0 time = 995
* CHECK dout1_7 vdout1_7ck198 = 1.0 time = 995
* CHECK dout1_8 vdout1_8ck198 = 1.0 time = 995
* CHECK dout1_9 vdout1_9ck198 = 0 time = 995
* CHECK dout1_10 vdout1_10ck198 = 0 time = 995
* CHECK dout1_11 vdout1_11ck198 = 1.0 time = 995
* CHECK dout1_12 vdout1_12ck198 = 0 time = 995
* CHECK dout1_13 vdout1_13ck198 = 1.0 time = 995
* CHECK dout1_14 vdout1_14ck198 = 1.0 time = 995
* CHECK dout1_15 vdout1_15ck198 = 0 time = 995
* CHECK dout1_0 vdout1_0ck201 = 1.0 time = 1010
* CHECK dout1_1 vdout1_1ck201 = 0 time = 1010
* CHECK dout1_2 vdout1_2ck201 = 0 time = 1010
* CHECK dout1_3 vdout1_3ck201 = 1.0 time = 1010
* CHECK dout1_4 vdout1_4ck201 = 0 time = 1010
* CHECK dout1_5 vdout1_5ck201 = 1.0 time = 1010
* CHECK dout1_6 vdout1_6ck201 = 0 time = 1010
* CHECK dout1_7 vdout1_7ck201 = 0 time = 1010
* CHECK dout1_8 vdout1_8ck201 = 0 time = 1010
* CHECK dout1_9 vdout1_9ck201 = 0 time = 1010
* CHECK dout1_10 vdout1_10ck201 = 1.0 time = 1010
* CHECK dout1_11 vdout1_11ck201 = 0 time = 1010
* CHECK dout1_12 vdout1_12ck201 = 0 time = 1010
* CHECK dout1_13 vdout1_13ck201 = 0 time = 1010
* CHECK dout1_14 vdout1_14ck201 = 0 time = 1010
* CHECK dout1_15 vdout1_15ck201 = 1.0 time = 1010
* CHECK dout1_0 vdout1_0ck203 = 1.0 time = 1020
* CHECK dout1_1 vdout1_1ck203 = 0 time = 1020
* CHECK dout1_2 vdout1_2ck203 = 0 time = 1020
* CHECK dout1_3 vdout1_3ck203 = 1.0 time = 1020
* CHECK dout1_4 vdout1_4ck203 = 0 time = 1020
* CHECK dout1_5 vdout1_5ck203 = 1.0 time = 1020
* CHECK dout1_6 vdout1_6ck203 = 0 time = 1020
* CHECK dout1_7 vdout1_7ck203 = 0 time = 1020
* CHECK dout1_8 vdout1_8ck203 = 0 time = 1020
* CHECK dout1_9 vdout1_9ck203 = 0 time = 1020
* CHECK dout1_10 vdout1_10ck203 = 1.0 time = 1020
* CHECK dout1_11 vdout1_11ck203 = 0 time = 1020
* CHECK dout1_12 vdout1_12ck203 = 0 time = 1020
* CHECK dout1_13 vdout1_13ck203 = 0 time = 1020
* CHECK dout1_14 vdout1_14ck203 = 0 time = 1020
* CHECK dout1_15 vdout1_15ck203 = 1.0 time = 1020
.include /home/s4sivali/ece627-f23/labs/s4sivali-lab5/sram_macros/sram_mm2s/functional_meas.sp
* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

