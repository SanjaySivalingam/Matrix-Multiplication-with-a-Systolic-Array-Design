* Delay stimulus for period of 0n load=0fF slew=0ns

* TT process corner
.include "/opt/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/opt/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "/tmp/openram_s4sivali_8624_temp/trimmed.sp"

* Global Power Supplies
Vvdd vdd 0 5

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xsram_mm2s din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 a0_0 a0_1 a0_2 a0_3 a1_0 a1_1 a1_2 a1_3 CSB0 CSB1 clk0 clk1 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 dout1_11 dout1_12 dout1_13 dout1_14 dout1_15 vdd gnd sram_mm2s

* SRAM output loads
CD10 dout1_0 0 0f
CD11 dout1_1 0 0f
CD12 dout1_2 0 0f
CD13 dout1_3 0 0f
CD14 dout1_4 0 0f
CD15 dout1_5 0 0f
CD16 dout1_6 0 0f
CD17 dout1_7 0 0f
CD18 dout1_8 0 0f
CD19 dout1_9 0 0f
CD110 dout1_10 0 0f
CD111 dout1_11 0 0f
CD112 dout1_12 0 0f
CD113 dout1_13 0 0f
CD114 dout1_14 0 0f
CD115 dout1_15 0 0f

* Generation of data and address signals
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_0  din0_0  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_1  din0_1  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_2  din0_2  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_3  din0_3  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_4  din0_4  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_5  din0_5  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_6  din0_6  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_7  din0_7  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_8  din0_8  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_9  din0_9  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_10  din0_10  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_11  din0_11  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_12  din0_12  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_13  din0_13  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_14  din0_14  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Vdin0_15  din0_15  0 PWL (0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Va0_0 a0_0 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Va0_1 a0_1 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Va0_2 a0_2 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]
Va0_3 a0_3 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v )
* (time, data): [(0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 1), (0, 1)]
Va1_0 a1_0 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v )
* (time, data): [(0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 1), (0, 1)]
Va1_1 a1_1 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v )
* (time, data): [(0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 1), (0, 1)]
Va1_2 a1_2 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v )
* (time, data): [(0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 1), (0, 1)]
Va1_3 a1_3 0 PWL (0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v )

* Generation of control signals
* (time, data): [(0, 1), (0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 1), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1)]
VCSB0 CSB0 0 PWL (0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v )
* (time, data): [(0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 0), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 1), (0, 0), (0, 0), (0, 1)]
VCSB1 CSB1 0 PWL (0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 5v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 0v 0.0n 5v )

* Generation of Port clock signal
* PULSE: period=0
VCLK0 CLK0 0 PULSE (0 5 0n 0n 0n 0.0n 0n)
* PULSE: period=0
VCLK1 CLK1 0 PULSE (0 5 0n 0n 0n 0.0n 0n)
.include /home/s4sivali/ece627-f23/labs/s4sivali-lab5/sram_macros/sram_mm2s/delay_meas.sp
* Measure statements for delay and power

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

