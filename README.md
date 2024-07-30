- inlcuding ZCU106 and zdyz ZYNQ 7020 FPGA board
- using Vivado Vitis and PYNQ etc.
- chip test projects stores here also

## how to Modification .tcl for relative path

using .tcl instead of raw file to store projects
drawback: the project can be generated only by the same version Vivado software

- `needs to maintain .v .xdc file location`
- `needs to maintain folder file location for board_part_repo_paths`

## how to restore file

using 'ZCU104_PL_flow_led' as example
1. open vivado

2. change dir to floder ZCU104_PL_flow_led in Vivado

`cd flow_led/ZCU104_PL_flow_led`

3. source tcl file

`source ZCU104_PL_flow_led.tcl`

4. Generate Bitstream in Vivado

5. Export Hardware (including bitstream) in Vivado

    File - Export - Export Hardware - (including bitstream) - .xsa file

6. (if using Vitis)

    import from .zip file

## File Structrue
File Structrue naming by function
(oldest first)

- [flow_led](https://github.com/YangcyXiang/FPGA/tree/master/flow_led)
    simple demo to let LED light flash
     