// Actel Corporation Proprietary and Confidential
//  Copyright 2008 Actel Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//  Revision Information:
// Jun09    Revision 4.1
// Aug10    Revision 4.2
// SVN Revision Information:
// SVN $Revision: 8508 $
// SVN $Date: 2009-06-15 16:49:49 -0700 (Mon, 15 Jun 2009) $
`timescale 1ns/100ps
module
final_top_CoreUARTapb_0_fifo_256x8
(
CUARTI11
,
CUARTl11
,
CUARTOOOI
,
CUARTIOOI
,
WRB
,
RDB
,
RESET
,
FULL
,
EMPTY
)
;
output
[
7
:
0
]
CUARTI11
;
input
CUARTl11
;
input
CUARTOOOI
;
input
[
7
:
0
]
CUARTIOOI
;
input
WRB
;
input
RDB
;
input
RESET
;
output
FULL
;
output
EMPTY
;
parameter
[
7
:
0
]
CUARTIOlI
=
64
;
wire
[
7
:
0
]
CUARTI11
;
wire
FULL
,
EMPTY
;
final_top_CoreUARTapb_0_fifo_ctrl_256
CUARTlOlI
(
.CUARTOOII
(
CUARTIOOI
)
,
.CUARTIOII
(
CUARTI11
)
,
.CUARTOIlI
(
WRB
)
,
.CUARTIIlI
(
RDB
)
,
.CUARTlIlI
(
CUARTOOOI
)
,
.CUARTOllI
(
FULL
)
,
.CUARTIllI
(
EMPTY
)
,
.CUARTlllI
(
GEQTH
)
,
.CUARTlI
(
RESET
)
,
.CUARTIOlI
(
CUARTIOlI
)
)
;
endmodule
module
final_top_CoreUARTapb_0_fifo_ctrl_256
(
CUARTlIlI
,
CUARTlI
,
CUARTOOII
,
CUARTIIlI
,
CUARTOIlI
,
CUARTIOlI
,
CUARTIOII
,
CUARTOllI
,
CUARTIllI
,
CUARTlllI
)
;
parameter
CUARTO0lI
=
16
;
parameter
CUARTI0lI
=
4
;
parameter
CUARTl0lI
=
8
;
input
CUARTlIlI
;
input
CUARTlI
;
input
[
CUARTl0lI
-
1
:
0
]
CUARTOOII
;
input
CUARTIIlI
;
input
CUARTOIlI
;
input
[
7
:
0
]
CUARTIOlI
;
output
[
CUARTl0lI
-
1
:
0
]
CUARTIOII
;
output
CUARTOllI
;
output
CUARTIllI
;
output
CUARTlllI
;
wire
CUARTlIlI
;
wire
CUARTlI
;
wire
[
CUARTl0lI
-
1
:
0
]
CUARTOOII
;
wire
CUARTIIlI
;
wire
CUARTOIlI
;
reg
[
CUARTl0lI
-
1
:
0
]
CUARTIOII
;
wire
CUARTOllI
;
wire
CUARTIllI
;
wire
CUARTlllI
;
wire
[
CUARTl0lI
-
1
:
0
]
CUARTO1lI
;
reg
CUARTI1lI
;
reg
[
CUARTI0lI
-
1
:
0
]
CUARTl1lI
;
reg
[
CUARTI0lI
-
1
:
0
]
CUARTOO0I
;
reg
[
CUARTI0lI
-
1
:
0
]
CUARTIO0I
;
assign
CUARTOllI
=
(
CUARTl1lI
==
CUARTO0lI
-
1
)
?
1
'b
1
:
1
'b
0
;
assign
CUARTIllI
=
(
CUARTl1lI
==
0
)
?
1
'b
1
:
1
'b
0
;
assign
CUARTlllI
=
(
CUARTl1lI
>=
CUARTIOlI
)
?
1
'b
1
:
1
'b
0
;
always
@
(
posedge
CUARTlIlI
or
negedge
CUARTlI
)
begin
if
(
~
CUARTlI
)
begin
CUARTOO0I
<=
{
CUARTI0lI
{
1
'b
0
}
}
;
CUARTIO0I
<=
{
CUARTI0lI
{
1
'b
0
}
}
;
CUARTl1lI
<=
{
CUARTI0lI
{
1
'b
0
}
}
;
end
else
begin
if
(
~
CUARTIIlI
)
begin
if
(
CUARTOIlI
)
begin
CUARTl1lI
<=
CUARTl1lI
-
1
;
end
if
(
CUARTOO0I
==
CUARTO0lI
-
1
)
CUARTOO0I
<=
{
CUARTI0lI
{
1
'b
0
}
}
;
else
CUARTOO0I
<=
CUARTOO0I
+
1
;
end
if
(
~
CUARTOIlI
)
begin
if
(
CUARTl1lI
>=
CUARTO0lI
)
begin
$display
(
"\nERROR at time %0t:"
,
$time
)
;
$display
(
"FIFO Overflow\n"
)
;
$stop
;
end
if
(
CUARTIIlI
)
begin
CUARTl1lI
<=
CUARTl1lI
+
1
;
end
if
(
CUARTIO0I
==
CUARTO0lI
-
1
)
CUARTIO0I
<=
{
CUARTI0lI
{
1
'b
0
}
}
;
else
CUARTIO0I
<=
CUARTIO0I
+
1
;
end
end
end
always
@
(
posedge
CUARTlIlI
or
negedge
CUARTlI
)
begin
if
(
~
CUARTlI
)
begin
CUARTI1lI
<=
1
'b
0
;
end
else
begin
CUARTI1lI
<=
CUARTIIlI
;
if
(
CUARTI1lI
==
1
'b
0
)
begin
CUARTIOII
<=
CUARTO1lI
;
end
else
begin
CUARTIOII
<=
CUARTIOII
;
end
end
end
final_top_CoreUARTapb_0_ram16x8
CUARTlO0I
(
.CUARTII
(
CUARTlIlI
)
,
.CUARTOOII
(
CUARTOOII
)
,
.CUARTIOII
(
CUARTO1lI
)
,
.CUARTOI0I
(
CUARTIO0I
)
,
.CUARTII0I
(
CUARTOO0I
)
,
.CUARTOIlI
(
CUARTOIlI
)
,
.CUARTIIlI
(
CUARTIIlI
)
)
;
endmodule
module
final_top_CoreUARTapb_0_ram16x8
(
CUARTII
,
CUARTOOII
,
CUARTII0I
,
CUARTOI0I
,
CUARTOIlI
,
CUARTIIlI
,
CUARTIOII
)
;
parameter
CUARTlI0I
=
8
;
parameter
CUARTOl0I
=
16
;
parameter
CUARTIl0I
=
4
;
input
CUARTII
;
input
[
CUARTIl0I
-
1
:
0
]
CUARTII0I
;
input
[
CUARTIl0I
-
1
:
0
]
CUARTOI0I
;
input
CUARTOIlI
;
input
CUARTIIlI
;
input
[
CUARTlI0I
-
1
:
0
]
CUARTOOII
;
output
[
CUARTlI0I
-
1
:
0
]
CUARTIOII
;
wire
[
CUARTIl0I
-
1
:
0
]
CUARTII0I
;
wire
[
CUARTIl0I
-
1
:
0
]
CUARTOI0I
;
wire
CUARTOIlI
;
wire
CUARTIIlI
;
reg
[
CUARTlI0I
-
1
:
0
]
CUARTIOII
;
reg
[
CUARTlI0I
-
1
:
0
]
CUARTll0I
[
CUARTOl0I
-
1
:
0
]
;
always
@
(
posedge
CUARTII
)
begin
if
(
CUARTOIlI
==
1
'b
0
)
begin
CUARTll0I
[
CUARTOI0I
]
=
CUARTOOII
;
end
end
always
@
(
posedge
CUARTII
)
begin
if
(
CUARTIIlI
==
1
'b
0
)
begin
CUARTIOII
=
CUARTll0I
[
CUARTII0I
]
;
end
end
endmodule
