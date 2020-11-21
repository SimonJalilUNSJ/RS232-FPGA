transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/LCD/cont_bin_lcd.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/LCD/FSM_LCD.vhd}
vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/LCD/LCD.vhd}

vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/LCD/tb_LCD.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_LCD

add wave *
view structure
view signals
run -all
