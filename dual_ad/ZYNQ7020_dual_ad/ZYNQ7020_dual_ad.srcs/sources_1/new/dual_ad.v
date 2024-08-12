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
    input          sys_clk    ,  //ϵͳʱ��
    input          sys_rst_n  ,  //ϵͳ��λ
    //��һ·ADC
    input   [9:0]  ad_data_1  ,  //��һ·ADC����
    input          ad_otr_1   ,  //��һ·ADC�����ѹ�������̱�־
    output         ad_clk_1   ,  //��һ·ADC����ʱ��
    output         ad_oe_1    ,  //��һ·ADC���ʹ��
    //�ڶ�·ADC
    input   [9:0]  ad_data_2  ,  //�ڶ�·ADC����
    input          ad_otr_2   ,  //�ڶ�·ADC�����ѹ�������̱�־
    output         ad_clk_2   ,  //�ڶ�·ADC����ʱ��
    output         ad_oe_2       //�ڶ�·ADC���ʹ��
    );

    //wire define 
    wire             clk_50m          ;  //50MHzʱ��
    wire             clk_50m_deg180   ;  //��λƫ��180��50MHzʱ��
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
