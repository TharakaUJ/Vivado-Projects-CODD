vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../Lab_3_RCA_4.srcs/sources_1/ip/FA_0/Lab_3_notFinished.srcs/sources_1/new/HA.vhd" \
"../../../../Lab_3_RCA_4.srcs/sources_1/ip/FA_0/Lab_3_notFinished.srcs/sources_1/new/FA.vhd" \
"../../../../Lab_3_RCA_4.srcs/sources_1/ip/FA_0/sim/FA_0.vhd" \


