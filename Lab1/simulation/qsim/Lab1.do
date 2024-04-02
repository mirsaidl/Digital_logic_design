onerror {exit -code 1}
vlib work
vlog -work work Lab1.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab1_vlg_vec_tst -voptargs="+acc"
vcd file -direction Lab1.msim.vcd
vcd add -internal Lab1_vlg_vec_tst/*
vcd add -internal Lab1_vlg_vec_tst/i1/*
run -all
quit -f
