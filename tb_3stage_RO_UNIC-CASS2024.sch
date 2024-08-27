v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1310 -430 1370 -430 {
lab=V_2}
N 1450 -430 1520 -430 {
lab=V_3}
N 1600 -510 1600 -430 {
lab=V_1}
N 1230 -510 1600 -510 {
lab=V_1}
N 1230 -510 1230 -430 {
lab=V_1}
C {sky130_stdcells/inv_2.sym} 1270 -430 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/code_shown.sym} 1390 -780 0 0 {name=s1 only_toplevel=false value="vvcc vcc 0 dc 1.8
vvss vss 0 0
.option temp = 200
.ic v(V_1) = 0
.ic v(V_2) = 1.8

.control
   tran 10p 10n
   *wrdata [your_path]/TT_3stage_RO_v1p1.txt v(V_1)
   plot v(V_1) v(V_2) v(V_3)
.endc
"}
C {devices/lab_pin.sym} 1230 -480 0 0 {name=p1 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} 1340 -430 1 0 {name=p2 sig_type=std_logic lab=V_2}
C {sky130_stdcells/inv_2.sym} 1410 -430 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 1560 -430 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/code.sym} 1210 -720 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/lab_pin.sym} 1490 -430 1 0 {name=p3 sig_type=std_logic lab=V_3}
