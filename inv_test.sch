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
C {devices/opin.sym} 220 -140 0 0 {name=p2 lab=Q}
C {devices/ipin.sym} 100 -140 0 0 {name=p1 lab=A}
C {devices/iopin.sym} 180 -260 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 180 -20 0 0 {name=p4 lab=GND}
