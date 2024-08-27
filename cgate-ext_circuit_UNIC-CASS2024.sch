v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1850 -1450 1910 -1450 {
lab=VIN}
N 1970 -1450 2030 -1450 {
lab=VOUT}
N 2030 -1390 2030 -1370 {
lab=GND}
N 1740 -1390 1740 -1370 {
lab=GND}
N 1740 -1450 1850 -1450 {
lab=VIN}
N 2000 -1410 2000 -1390 {
lab=GND}
N 2000 -1390 2060 -1390 {
lab=GND}
N 2060 -1410 2060 -1390 {
lab=GND}
N 2030 -1410 2030 -1390 {
lab=GND}
C {devices/res.sym} 1940 -1450 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1740 -1420 0 0 {name=V1 value="PULSE (0 1 0 1p 1p 10n 20n)" savecurrent=false}
C {devices/gnd.sym} 1740 -1370 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 2030 -1370 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 1880 -1450 1 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 2000 -1450 1 0 {name=p4 sig_type=std_logic lab=VOUT
}
C {devices/code_shown.sym} 2130 -1440 0 0 {name=s1 only_toplevel=false 
value="
.tran 100p 20n
.save all
.ic v(vout) = 0
.control
run
meas tran teval WHEN v(vout) = 0.63
let res_val = 1000
let cap_val = teval/res_val
print cap_val
.endc
"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 2030 -1430 1 0 {name=M1
L=10
W=5
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code.sym} 1780 -1280 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
