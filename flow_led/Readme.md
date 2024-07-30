## flow_led

### ZCU106

when Pushing SW17 Pushbutton (active high), system reset and 'GPIO_LED_0' light.
when letting go, 'GPIO_LED_0' to 'GPIO_LED_7' light up sequentially and repeat.

- [ZCU106_PL_flow_led](https://github.com/YangcyXiang/FPGA/tree/master/flow_led/ZCU106_PL_flow_led)
    using flow_led.v as design top

- [ZCU106_PL_flow_led_V2](https://github.com/YangcyXiang/FPGA/tree/master/flow_led/ZCU106_PL_flow_led_V2)
    using 'Block Design' as design top, need 'Generate Output Products' and 'Create HDL Wrapper'

- [ZCU106_PS_flow_led](https://github.com/YangcyXiang/FPGA/tree/master/flow_led/ZCU106_PS_flow_led)
    using 'Block Design' to instantiate ZYNQ IP hardware, export .xsa hardware file and write c code on Vitis

### ZCU104

when Pushing SW18 Pushbutton (active high), system reset and 'GPIO_LED_0' light.
when letting go, 'GPIO_LED_0' to 'GPIO_LED_3' light up sequentially and repeat.

- [ZCU104_PL_flow_led](https://github.com/YangcyXiang/FPGA/tree/master/flow_led/ZCU104_PL_flow_led)
    using flow_led.v as design top, no need to `Create HDL Wrapper`

- [ZCU104_PL_flow_led_V2](https://github.com/YangcyXiang/FPGA/tree/master/flow_led/ZCU104_PL_flow_led_V2)
    using 'Block Design' as design top, need 'Generate Output Products' and 'Create HDL Wrapper'

ZCU104 don't have PS side LED