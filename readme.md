# Vivado Projects Collection

This repository is a collection of Vivado projects.

## Loading Bitstream to FPGA Board using openFPGAloader

To load a bitstream to your FPGA board using openFPGAloader, follow these steps:

1. Install openFPGAloader by following the instructions on the [openFPGAloader GitHub page](https://github.com/trabucayre/openFPGALoader).
2. Connect your FPGA board to your computer.
3. Open a terminal and navigate to the directory containing your bitstream file (`.bit` file).
4. Use the following command to load the bitstream to your FPGA board:

    ```sh
    openFPGALoader -b <board_name> <bitstream_file.bit>
    ```

    Replace `<board_name>` with the name of your FPGA board and `<bitstream_file.bit>` with the name of your bitstream file.

Example:

```sh
openFPGALoader -b basys3 Lab_1.bit
```

You can use the following command to list boards.
```sh
openFPGALoader --list-boards
```

## Viewing Simulations with GTKWave

To view simulations, you need to save the simulation data as a `.vcd` file. Then, open the `.vcd` file in GTKWave. For more information, refer to the [AMD support article](https://adaptivesupport.amd.com/s/article/53351?language=en_US).

Below are the steps to generate a `.vcd` file:

1. Run the simulation.

2. When the XSIM simulation window appears, enter these commands in the TCL console:

    ```tcl
    open_vcd
    log_vcd [get_object /<toplevel_testbench/uut/*>]
    run *ns
    close_vcd
    ```

Replace `<toplevel_testbench/uut/*>` with the appropriate path to your testbench and unit under test (UUT).

Once the `.vcd` file is generated, you can open it in GTKWave to view the simulation results.