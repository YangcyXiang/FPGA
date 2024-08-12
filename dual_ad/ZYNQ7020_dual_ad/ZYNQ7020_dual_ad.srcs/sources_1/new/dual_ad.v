`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/07 20:48:09
// Design Name: 
// Module Name: dual_ad
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dual_ad(
    input          sys_clk    ,  //系统时钟
    input          sys_rst_n  ,  //系统复位
    //第一路ADC
    input   [9:0]  ad_data_1  ,  //第一路ADC数据
    input          ad_otr_1   ,  //第一路ADC输入电压超过量程标志
    output         ad_clk_1   ,  //第一路ADC驱动时钟
    output         ad_oe_1    ,  //第一路ADC输出使能
    //第二路ADC
    input   [9:0]  ad_data_2  ,  //第二路ADC数据
    input          ad_otr_2   ,  //第二路ADC输入电压超过量程标志
    output         ad_clk_2   ,  //第二路ADC驱动时钟
    output         ad_oe_2       //第二路ADC输出使能
    );

    //wire define 
    wire             clk_50m          ;  //50MHz时钟
    wire             clk_50m_deg180   ;  //相位偏移180的50MHz时钟
    //*****************************************************
    //**                    main code
    //*****************************************************

    assign  ad_oe_1 =  1'b0;
    assign  ad_oe_2 =  1'b0;
    assign  ad_clk_1 = clk_50m;
    assign  ad_clk_2 = clk_50m;

    //pll
    clk_wiz u_clk_wiz(
        .clk_out1    (clk_50m       ),     
        .clk_out2    (clk_50m_deg180), 
        .clk_in1     (sys_clk       ),
        .resetn      (sys_rst_n         )
        );      

    ila u_ila (
        .clk     (clk_50m_deg180 ),  // input wire clk
        .probe0  (ad_otr_1       ),  // input wire [0:0]  probe0  
        .probe1  (ad_data_1      ),  // input wire [9:0]  probe1
        .probe2  (ad_otr_2       ),  // input wire [0:0]  probe2  
        .probe3  (ad_data_2      )   // input wire [9:0]  probe3
    );

endmodule
