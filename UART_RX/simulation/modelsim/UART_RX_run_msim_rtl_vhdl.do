transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/UART_RX/UART_RX.vhd}

vcom -93 -work work {/home/simon/Documentos/FACULTAD/Sistemas Digitales Avanzados/Laboratorios/RS232-FPGA/UART_RX/UART_RX_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  UART_RX_TB

add wave *
view structure
view signals
run -all
