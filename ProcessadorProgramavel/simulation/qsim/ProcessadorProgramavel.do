onerror {quit -f}
vlib work
vlog -work work ProcessadorProgramavel.vo
vlog -work work ProcessadorProgramavel.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.cpu_vlg_vec_tst
vcd file -direction ProcessadorProgramavel.msim.vcd
vcd add -internal cpu_vlg_vec_tst/*
vcd add -internal cpu_vlg_vec_tst/i1/*
add wave /*
run -all
