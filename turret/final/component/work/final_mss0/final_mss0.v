`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module final_mss0(
       PADDR,
       PSEL,
       PENABLE,
       PWRITE,
       PRDATA,
       PWDATA,
       PREADY,
       PSLVERR,
       PADDRS0,
       PSELS0,
       PENABLES,
       PWRITES,
       PRDATAS0,
       PWDATAS,
       PREADYS0,
       PSLVERRS0,
       PADDRS,
       PSELS1,
       PRDATAS1,
       PREADYS1,
       PSLVERRS1,
       PSELS2,
       PRDATAS2,
       PREADYS2,
       PSLVERRS2,
       PSELS3,
       PRDATAS3,
       PREADYS3,
       PSLVERRS3,
       PSELS4,
       PRDATAS4,
       PREADYS4,
       PSLVERRS4,
       PSELS5,
       PRDATAS5,
       PREADYS5,
       PSLVERRS5,
       PSELS6,
       PRDATAS6,
       PREADYS6,
       PSLVERRS6,
       PSELS7,
       PRDATAS7,
       PREADYS7,
       PSLVERRS7,
       PSELS8,
       PRDATAS8,
       PREADYS8,
       PSLVERRS8,
       PSELS9,
       PRDATAS9,
       PREADYS9,
       PSLVERRS9,
       PSELS10,
       PRDATAS10,
       PREADYS10,
       PSLVERRS10,
       PSELS11,
       PRDATAS11,
       PREADYS11,
       PSLVERRS11,
       PSELS12,
       PRDATAS12,
       PREADYS12,
       PSLVERRS12,
       PSELS13,
       PRDATAS13,
       PREADYS13,
       PSLVERRS13,
       PSELS14,
       PRDATAS14,
       PREADYS14,
       PSLVERRS14,
       PSELS15,
       PRDATAS15,
       PREADYS15,
       PSLVERRS15
    );
input  [23:0] PADDR;
input  PSEL;
input  PENABLE;
input  PWRITE;
output [31:0] PRDATA;
input  [31:0] PWDATA;
output PREADY;
output PSLVERR;
output [23:0] PADDRS0;
output PSELS0;
output PENABLES;
output PWRITES;
input  [31:0] PRDATAS0;
output [31:0] PWDATAS;
input  PREADYS0;
input  PSLVERRS0;
output [23:0] PADDRS;
output PSELS1;
input  [31:0] PRDATAS1;
input  PREADYS1;
input  PSLVERRS1;
output PSELS2;
input  [31:0] PRDATAS2;
input  PREADYS2;
input  PSLVERRS2;
output PSELS3;
input  [31:0] PRDATAS3;
input  PREADYS3;
input  PSLVERRS3;
output PSELS4;
input  [31:0] PRDATAS4;
input  PREADYS4;
input  PSLVERRS4;
output PSELS5;
input  [31:0] PRDATAS5;
input  PREADYS5;
input  PSLVERRS5;
output PSELS6;
input  [31:0] PRDATAS6;
input  PREADYS6;
input  PSLVERRS6;
output PSELS7;
input  [31:0] PRDATAS7;
input  PREADYS7;
input  PSLVERRS7;
output PSELS8;
input  [31:0] PRDATAS8;
input  PREADYS8;
input  PSLVERRS8;
output PSELS9;
input  [31:0] PRDATAS9;
input  PREADYS9;
input  PSLVERRS9;
output PSELS10;
input  [31:0] PRDATAS10;
input  PREADYS10;
input  PSLVERRS10;
output PSELS11;
input  [31:0] PRDATAS11;
input  PREADYS11;
input  PSLVERRS11;
output PSELS12;
input  [31:0] PRDATAS12;
input  PREADYS12;
input  PSLVERRS12;
output PSELS13;
input  [31:0] PRDATAS13;
input  PREADYS13;
input  PSLVERRS13;
output PSELS14;
input  [31:0] PRDATAS14;
input  PREADYS14;
input  PSLVERRS14;
output PSELS15;
input  [31:0] PRDATAS15;
input  PREADYS15;
input  PSLVERRS15;

    wire GND_net, VCC_net;
    
    CoreAPB3 #( .APBSLOT0ENABLE(1), .APBSLOT10ENABLE(1), .APBSLOT11ENABLE(1)
        , .APBSLOT12ENABLE(1), .APBSLOT13ENABLE(1), .APBSLOT14ENABLE(1)
        , .APBSLOT15ENABLE(1), .APBSLOT1ENABLE(1), .APBSLOT2ENABLE(1)
        , .APBSLOT3ENABLE(1), .APBSLOT4ENABLE(1), .APBSLOT5ENABLE(1), .APBSLOT6ENABLE(1)
        , .APBSLOT7ENABLE(1), .APBSLOT8ENABLE(1), .APBSLOT9ENABLE(1), .APB_DWIDTH(32)
        , .IADDR_ENABLE(0), .RANGESIZE(256) )  final_mss0_0 (.PRESETN(
        GND_net), .PCLK(GND_net), .PADDR({PADDR[23], PADDR[22], 
        PADDR[21], PADDR[20], PADDR[19], PADDR[18], PADDR[17], 
        PADDR[16], PADDR[15], PADDR[14], PADDR[13], PADDR[12], 
        PADDR[11], PADDR[10], PADDR[9], PADDR[8], PADDR[7], PADDR[6], 
        PADDR[5], PADDR[4], PADDR[3], PADDR[2], PADDR[1], PADDR[0]}), 
        .PWRITE(PWRITE), .PENABLE(PENABLE), .PWDATA({PWDATA[31], 
        PWDATA[30], PWDATA[29], PWDATA[28], PWDATA[27], PWDATA[26], 
        PWDATA[25], PWDATA[24], PWDATA[23], PWDATA[22], PWDATA[21], 
        PWDATA[20], PWDATA[19], PWDATA[18], PWDATA[17], PWDATA[16], 
        PWDATA[15], PWDATA[14], PWDATA[13], PWDATA[12], PWDATA[11], 
        PWDATA[10], PWDATA[9], PWDATA[8], PWDATA[7], PWDATA[6], 
        PWDATA[5], PWDATA[4], PWDATA[3], PWDATA[2], PWDATA[1], 
        PWDATA[0]}), .PRDATA({PRDATA[31], PRDATA[30], PRDATA[29], 
        PRDATA[28], PRDATA[27], PRDATA[26], PRDATA[25], PRDATA[24], 
        PRDATA[23], PRDATA[22], PRDATA[21], PRDATA[20], PRDATA[19], 
        PRDATA[18], PRDATA[17], PRDATA[16], PRDATA[15], PRDATA[14], 
        PRDATA[13], PRDATA[12], PRDATA[11], PRDATA[10], PRDATA[9], 
        PRDATA[8], PRDATA[7], PRDATA[6], PRDATA[5], PRDATA[4], 
        PRDATA[3], PRDATA[2], PRDATA[1], PRDATA[0]}), .PSEL(PSEL), 
        .PREADY(PREADY), .PSLVERR(PSLVERR), .PADDRS({PADDRS[23], 
        PADDRS[22], PADDRS[21], PADDRS[20], PADDRS[19], PADDRS[18], 
        PADDRS[17], PADDRS[16], PADDRS[15], PADDRS[14], PADDRS[13], 
        PADDRS[12], PADDRS[11], PADDRS[10], PADDRS[9], PADDRS[8], 
        PADDRS[7], PADDRS[6], PADDRS[5], PADDRS[4], PADDRS[3], 
        PADDRS[2], PADDRS[1], PADDRS[0]}), .PADDRS0({PADDRS0[23], 
        PADDRS0[22], PADDRS0[21], PADDRS0[20], PADDRS0[19], 
        PADDRS0[18], PADDRS0[17], PADDRS0[16], PADDRS0[15], 
        PADDRS0[14], PADDRS0[13], PADDRS0[12], PADDRS0[11], 
        PADDRS0[10], PADDRS0[9], PADDRS0[8], PADDRS0[7], PADDRS0[6], 
        PADDRS0[5], PADDRS0[4], PADDRS0[3], PADDRS0[2], PADDRS0[1], 
        PADDRS0[0]}), .PWRITES(PWRITES), .PENABLES(PENABLES), .PWDATAS({
        PWDATAS[31], PWDATAS[30], PWDATAS[29], PWDATAS[28], 
        PWDATAS[27], PWDATAS[26], PWDATAS[25], PWDATAS[24], 
        PWDATAS[23], PWDATAS[22], PWDATAS[21], PWDATAS[20], 
        PWDATAS[19], PWDATAS[18], PWDATAS[17], PWDATAS[16], 
        PWDATAS[15], PWDATAS[14], PWDATAS[13], PWDATAS[12], 
        PWDATAS[11], PWDATAS[10], PWDATAS[9], PWDATAS[8], PWDATAS[7], 
        PWDATAS[6], PWDATAS[5], PWDATAS[4], PWDATAS[3], PWDATAS[2], 
        PWDATAS[1], PWDATAS[0]}), .PSELS0(PSELS0), .PRDATAS0({
        PRDATAS0[31], PRDATAS0[30], PRDATAS0[29], PRDATAS0[28], 
        PRDATAS0[27], PRDATAS0[26], PRDATAS0[25], PRDATAS0[24], 
        PRDATAS0[23], PRDATAS0[22], PRDATAS0[21], PRDATAS0[20], 
        PRDATAS0[19], PRDATAS0[18], PRDATAS0[17], PRDATAS0[16], 
        PRDATAS0[15], PRDATAS0[14], PRDATAS0[13], PRDATAS0[12], 
        PRDATAS0[11], PRDATAS0[10], PRDATAS0[9], PRDATAS0[8], 
        PRDATAS0[7], PRDATAS0[6], PRDATAS0[5], PRDATAS0[4], 
        PRDATAS0[3], PRDATAS0[2], PRDATAS0[1], PRDATAS0[0]}), 
        .PREADYS0(PREADYS0), .PSLVERRS0(PSLVERRS0), .PSELS1(PSELS1), 
        .PRDATAS1({PRDATAS1[31], PRDATAS1[30], PRDATAS1[29], 
        PRDATAS1[28], PRDATAS1[27], PRDATAS1[26], PRDATAS1[25], 
        PRDATAS1[24], PRDATAS1[23], PRDATAS1[22], PRDATAS1[21], 
        PRDATAS1[20], PRDATAS1[19], PRDATAS1[18], PRDATAS1[17], 
        PRDATAS1[16], PRDATAS1[15], PRDATAS1[14], PRDATAS1[13], 
        PRDATAS1[12], PRDATAS1[11], PRDATAS1[10], PRDATAS1[9], 
        PRDATAS1[8], PRDATAS1[7], PRDATAS1[6], PRDATAS1[5], 
        PRDATAS1[4], PRDATAS1[3], PRDATAS1[2], PRDATAS1[1], 
        PRDATAS1[0]}), .PREADYS1(PREADYS1), .PSLVERRS1(PSLVERRS1), 
        .PSELS2(PSELS2), .PRDATAS2({PRDATAS2[31], PRDATAS2[30], 
        PRDATAS2[29], PRDATAS2[28], PRDATAS2[27], PRDATAS2[26], 
        PRDATAS2[25], PRDATAS2[24], PRDATAS2[23], PRDATAS2[22], 
        PRDATAS2[21], PRDATAS2[20], PRDATAS2[19], PRDATAS2[18], 
        PRDATAS2[17], PRDATAS2[16], PRDATAS2[15], PRDATAS2[14], 
        PRDATAS2[13], PRDATAS2[12], PRDATAS2[11], PRDATAS2[10], 
        PRDATAS2[9], PRDATAS2[8], PRDATAS2[7], PRDATAS2[6], 
        PRDATAS2[5], PRDATAS2[4], PRDATAS2[3], PRDATAS2[2], 
        PRDATAS2[1], PRDATAS2[0]}), .PREADYS2(PREADYS2), .PSLVERRS2(
        PSLVERRS2), .PSELS3(PSELS3), .PRDATAS3({PRDATAS3[31], 
        PRDATAS3[30], PRDATAS3[29], PRDATAS3[28], PRDATAS3[27], 
        PRDATAS3[26], PRDATAS3[25], PRDATAS3[24], PRDATAS3[23], 
        PRDATAS3[22], PRDATAS3[21], PRDATAS3[20], PRDATAS3[19], 
        PRDATAS3[18], PRDATAS3[17], PRDATAS3[16], PRDATAS3[15], 
        PRDATAS3[14], PRDATAS3[13], PRDATAS3[12], PRDATAS3[11], 
        PRDATAS3[10], PRDATAS3[9], PRDATAS3[8], PRDATAS3[7], 
        PRDATAS3[6], PRDATAS3[5], PRDATAS3[4], PRDATAS3[3], 
        PRDATAS3[2], PRDATAS3[1], PRDATAS3[0]}), .PREADYS3(PREADYS3), 
        .PSLVERRS3(PSLVERRS3), .PSELS4(PSELS4), .PRDATAS4({
        PRDATAS4[31], PRDATAS4[30], PRDATAS4[29], PRDATAS4[28], 
        PRDATAS4[27], PRDATAS4[26], PRDATAS4[25], PRDATAS4[24], 
        PRDATAS4[23], PRDATAS4[22], PRDATAS4[21], PRDATAS4[20], 
        PRDATAS4[19], PRDATAS4[18], PRDATAS4[17], PRDATAS4[16], 
        PRDATAS4[15], PRDATAS4[14], PRDATAS4[13], PRDATAS4[12], 
        PRDATAS4[11], PRDATAS4[10], PRDATAS4[9], PRDATAS4[8], 
        PRDATAS4[7], PRDATAS4[6], PRDATAS4[5], PRDATAS4[4], 
        PRDATAS4[3], PRDATAS4[2], PRDATAS4[1], PRDATAS4[0]}), 
        .PREADYS4(PREADYS4), .PSLVERRS4(PSLVERRS4), .PSELS5(PSELS5), 
        .PRDATAS5({PRDATAS5[31], PRDATAS5[30], PRDATAS5[29], 
        PRDATAS5[28], PRDATAS5[27], PRDATAS5[26], PRDATAS5[25], 
        PRDATAS5[24], PRDATAS5[23], PRDATAS5[22], PRDATAS5[21], 
        PRDATAS5[20], PRDATAS5[19], PRDATAS5[18], PRDATAS5[17], 
        PRDATAS5[16], PRDATAS5[15], PRDATAS5[14], PRDATAS5[13], 
        PRDATAS5[12], PRDATAS5[11], PRDATAS5[10], PRDATAS5[9], 
        PRDATAS5[8], PRDATAS5[7], PRDATAS5[6], PRDATAS5[5], 
        PRDATAS5[4], PRDATAS5[3], PRDATAS5[2], PRDATAS5[1], 
        PRDATAS5[0]}), .PREADYS5(PREADYS5), .PSLVERRS5(PSLVERRS5), 
        .PSELS6(PSELS6), .PRDATAS6({PRDATAS6[31], PRDATAS6[30], 
        PRDATAS6[29], PRDATAS6[28], PRDATAS6[27], PRDATAS6[26], 
        PRDATAS6[25], PRDATAS6[24], PRDATAS6[23], PRDATAS6[22], 
        PRDATAS6[21], PRDATAS6[20], PRDATAS6[19], PRDATAS6[18], 
        PRDATAS6[17], PRDATAS6[16], PRDATAS6[15], PRDATAS6[14], 
        PRDATAS6[13], PRDATAS6[12], PRDATAS6[11], PRDATAS6[10], 
        PRDATAS6[9], PRDATAS6[8], PRDATAS6[7], PRDATAS6[6], 
        PRDATAS6[5], PRDATAS6[4], PRDATAS6[3], PRDATAS6[2], 
        PRDATAS6[1], PRDATAS6[0]}), .PREADYS6(PREADYS6), .PSLVERRS6(
        PSLVERRS6), .PSELS7(PSELS7), .PRDATAS7({PRDATAS7[31], 
        PRDATAS7[30], PRDATAS7[29], PRDATAS7[28], PRDATAS7[27], 
        PRDATAS7[26], PRDATAS7[25], PRDATAS7[24], PRDATAS7[23], 
        PRDATAS7[22], PRDATAS7[21], PRDATAS7[20], PRDATAS7[19], 
        PRDATAS7[18], PRDATAS7[17], PRDATAS7[16], PRDATAS7[15], 
        PRDATAS7[14], PRDATAS7[13], PRDATAS7[12], PRDATAS7[11], 
        PRDATAS7[10], PRDATAS7[9], PRDATAS7[8], PRDATAS7[7], 
        PRDATAS7[6], PRDATAS7[5], PRDATAS7[4], PRDATAS7[3], 
        PRDATAS7[2], PRDATAS7[1], PRDATAS7[0]}), .PREADYS7(PREADYS7), 
        .PSLVERRS7(PSLVERRS7), .PSELS8(PSELS8), .PRDATAS8({
        PRDATAS8[31], PRDATAS8[30], PRDATAS8[29], PRDATAS8[28], 
        PRDATAS8[27], PRDATAS8[26], PRDATAS8[25], PRDATAS8[24], 
        PRDATAS8[23], PRDATAS8[22], PRDATAS8[21], PRDATAS8[20], 
        PRDATAS8[19], PRDATAS8[18], PRDATAS8[17], PRDATAS8[16], 
        PRDATAS8[15], PRDATAS8[14], PRDATAS8[13], PRDATAS8[12], 
        PRDATAS8[11], PRDATAS8[10], PRDATAS8[9], PRDATAS8[8], 
        PRDATAS8[7], PRDATAS8[6], PRDATAS8[5], PRDATAS8[4], 
        PRDATAS8[3], PRDATAS8[2], PRDATAS8[1], PRDATAS8[0]}), 
        .PREADYS8(PREADYS8), .PSLVERRS8(PSLVERRS8), .PSELS9(PSELS9), 
        .PRDATAS9({PRDATAS9[31], PRDATAS9[30], PRDATAS9[29], 
        PRDATAS9[28], PRDATAS9[27], PRDATAS9[26], PRDATAS9[25], 
        PRDATAS9[24], PRDATAS9[23], PRDATAS9[22], PRDATAS9[21], 
        PRDATAS9[20], PRDATAS9[19], PRDATAS9[18], PRDATAS9[17], 
        PRDATAS9[16], PRDATAS9[15], PRDATAS9[14], PRDATAS9[13], 
        PRDATAS9[12], PRDATAS9[11], PRDATAS9[10], PRDATAS9[9], 
        PRDATAS9[8], PRDATAS9[7], PRDATAS9[6], PRDATAS9[5], 
        PRDATAS9[4], PRDATAS9[3], PRDATAS9[2], PRDATAS9[1], 
        PRDATAS9[0]}), .PREADYS9(PREADYS9), .PSLVERRS9(PSLVERRS9), 
        .PSELS10(PSELS10), .PRDATAS10({PRDATAS10[31], PRDATAS10[30], 
        PRDATAS10[29], PRDATAS10[28], PRDATAS10[27], PRDATAS10[26], 
        PRDATAS10[25], PRDATAS10[24], PRDATAS10[23], PRDATAS10[22], 
        PRDATAS10[21], PRDATAS10[20], PRDATAS10[19], PRDATAS10[18], 
        PRDATAS10[17], PRDATAS10[16], PRDATAS10[15], PRDATAS10[14], 
        PRDATAS10[13], PRDATAS10[12], PRDATAS10[11], PRDATAS10[10], 
        PRDATAS10[9], PRDATAS10[8], PRDATAS10[7], PRDATAS10[6], 
        PRDATAS10[5], PRDATAS10[4], PRDATAS10[3], PRDATAS10[2], 
        PRDATAS10[1], PRDATAS10[0]}), .PREADYS10(PREADYS10), 
        .PSLVERRS10(PSLVERRS10), .PSELS11(PSELS11), .PRDATAS11({
        PRDATAS11[31], PRDATAS11[30], PRDATAS11[29], PRDATAS11[28], 
        PRDATAS11[27], PRDATAS11[26], PRDATAS11[25], PRDATAS11[24], 
        PRDATAS11[23], PRDATAS11[22], PRDATAS11[21], PRDATAS11[20], 
        PRDATAS11[19], PRDATAS11[18], PRDATAS11[17], PRDATAS11[16], 
        PRDATAS11[15], PRDATAS11[14], PRDATAS11[13], PRDATAS11[12], 
        PRDATAS11[11], PRDATAS11[10], PRDATAS11[9], PRDATAS11[8], 
        PRDATAS11[7], PRDATAS11[6], PRDATAS11[5], PRDATAS11[4], 
        PRDATAS11[3], PRDATAS11[2], PRDATAS11[1], PRDATAS11[0]}), 
        .PREADYS11(PREADYS11), .PSLVERRS11(PSLVERRS11), .PSELS12(
        PSELS12), .PRDATAS12({PRDATAS12[31], PRDATAS12[30], 
        PRDATAS12[29], PRDATAS12[28], PRDATAS12[27], PRDATAS12[26], 
        PRDATAS12[25], PRDATAS12[24], PRDATAS12[23], PRDATAS12[22], 
        PRDATAS12[21], PRDATAS12[20], PRDATAS12[19], PRDATAS12[18], 
        PRDATAS12[17], PRDATAS12[16], PRDATAS12[15], PRDATAS12[14], 
        PRDATAS12[13], PRDATAS12[12], PRDATAS12[11], PRDATAS12[10], 
        PRDATAS12[9], PRDATAS12[8], PRDATAS12[7], PRDATAS12[6], 
        PRDATAS12[5], PRDATAS12[4], PRDATAS12[3], PRDATAS12[2], 
        PRDATAS12[1], PRDATAS12[0]}), .PREADYS12(PREADYS12), 
        .PSLVERRS12(PSLVERRS12), .PSELS13(PSELS13), .PRDATAS13({
        PRDATAS13[31], PRDATAS13[30], PRDATAS13[29], PRDATAS13[28], 
        PRDATAS13[27], PRDATAS13[26], PRDATAS13[25], PRDATAS13[24], 
        PRDATAS13[23], PRDATAS13[22], PRDATAS13[21], PRDATAS13[20], 
        PRDATAS13[19], PRDATAS13[18], PRDATAS13[17], PRDATAS13[16], 
        PRDATAS13[15], PRDATAS13[14], PRDATAS13[13], PRDATAS13[12], 
        PRDATAS13[11], PRDATAS13[10], PRDATAS13[9], PRDATAS13[8], 
        PRDATAS13[7], PRDATAS13[6], PRDATAS13[5], PRDATAS13[4], 
        PRDATAS13[3], PRDATAS13[2], PRDATAS13[1], PRDATAS13[0]}), 
        .PREADYS13(PREADYS13), .PSLVERRS13(PSLVERRS13), .PSELS14(
        PSELS14), .PRDATAS14({PRDATAS14[31], PRDATAS14[30], 
        PRDATAS14[29], PRDATAS14[28], PRDATAS14[27], PRDATAS14[26], 
        PRDATAS14[25], PRDATAS14[24], PRDATAS14[23], PRDATAS14[22], 
        PRDATAS14[21], PRDATAS14[20], PRDATAS14[19], PRDATAS14[18], 
        PRDATAS14[17], PRDATAS14[16], PRDATAS14[15], PRDATAS14[14], 
        PRDATAS14[13], PRDATAS14[12], PRDATAS14[11], PRDATAS14[10], 
        PRDATAS14[9], PRDATAS14[8], PRDATAS14[7], PRDATAS14[6], 
        PRDATAS14[5], PRDATAS14[4], PRDATAS14[3], PRDATAS14[2], 
        PRDATAS14[1], PRDATAS14[0]}), .PREADYS14(PREADYS14), 
        .PSLVERRS14(PSLVERRS14), .PSELS15(PSELS15), .PRDATAS15({
        PRDATAS15[31], PRDATAS15[30], PRDATAS15[29], PRDATAS15[28], 
        PRDATAS15[27], PRDATAS15[26], PRDATAS15[25], PRDATAS15[24], 
        PRDATAS15[23], PRDATAS15[22], PRDATAS15[21], PRDATAS15[20], 
        PRDATAS15[19], PRDATAS15[18], PRDATAS15[17], PRDATAS15[16], 
        PRDATAS15[15], PRDATAS15[14], PRDATAS15[13], PRDATAS15[12], 
        PRDATAS15[11], PRDATAS15[10], PRDATAS15[9], PRDATAS15[8], 
        PRDATAS15[7], PRDATAS15[6], PRDATAS15[5], PRDATAS15[4], 
        PRDATAS15[3], PRDATAS15[2], PRDATAS15[1], PRDATAS15[0]}), 
        .PREADYS15(PREADYS15), .PSLVERRS15(PSLVERRS15));
    VCC VCC (.Y(VCC_net));
    GND GND (.Y(GND_net));
    
endmodule