v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -190 140 -90 {
lab=A}
N 180 -160 180 -120 {
lab=Q}
N 180 -260 180 -220 {
lab=VDD}
N 180 -60 180 -20 {
lab=GND}
N 100 -140 140 -140 {
lab=A}
N 180 -140 220 -140 {
lab=Q}
N 20 -260 20 -180 {
lab=VDD}
N 20 -120 20 -20 {
lab=GND}
N 180 -190 200 -190 {
lab=VDD}
N 200 -220 200 -190 {
lab=VDD}
N 180 -220 200 -220 {
lab=VDD}
N 180 -90 200 -90 {
lab=GND}
N 200 -90 200 -60 {
lab=GND}
N 180 -60 200 -60 {
lab=GND}
C {symbols/pfet_03v3.sym} 160 -190 0 0 {name=M1
L=0.28u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 160 -90 0 0 {name=M2
L=0.28u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/vdd.sym} 180 -260 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 180 -20 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 220 -140 0 0 {name=p2 lab=Q}
C {devices/code_shown.sym} 20 -450 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 20 -150 0 0 {name=V1 value=3.3}
C {devices/simulator_commands_shown.sym} 480 -450 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="VA A 0 pulse (0 3.3 0 40p 40p 0.5n 1n) dc 0
.include ~/TOP_pex_extracted.spice
.control
save all
tran 1p 2n
plot v(a) v(q)
wrdata ~/inv_tran.txt v(a) v(q)
write inv_tran.raw
.endc
"}
C {devices/ipin.sym} 100 -140 0 0 {name=p1 lab=A}
C {devices/gnd.sym} 20 -20 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 20 -260 0 0 {name=l6 lab=VDD}
