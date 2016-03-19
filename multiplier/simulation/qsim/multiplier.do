onerror {quit -f}
vlib work
vlog -work work multiplier.vo
vlog -work work multiplier.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.registeredmultiplier_vlg_vec_tst
vcd file -direction multiplier.msim.vcd
vcd add -internal registeredmultiplier_vlg_vec_tst/*
vcd add -internal registeredmultiplier_vlg_vec_tst/i1/*
add wave /*
run -all
