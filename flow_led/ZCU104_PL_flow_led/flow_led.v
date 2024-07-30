module flow_led(
    input   wire            clk_p,
    input   wire            clk_n,
    input   wire            rst,
    output  reg     [3:0]   led
);
    reg  [31:0] cnt;
    wire        inner_clk;
    wire        rst_n;

    assign rst_n = ~rst;

// clock gen using Block design IP
      IP_clk_wiz IP_clk_inst
           (.clk_in1_n(clk_n),
            .clk_in1_p(clk_p),
            .clk_out1(inner_clk),
            .reset(rst));

//*****************************************************
//**                    main code
//*****************************************************

    always @(posedge inner_clk or negedge rst_n) begin
        if(!rst_n)
            cnt <= 32'd0;
        else if(cnt < (32'd5000_0000 - 32'd1))
    //    else if(cnt < (32'd25 - 25'd1)) // change to 25 for sim
            cnt <= cnt + 32'd1;
        else
            cnt <= 32'd0;
    end

    always @(posedge inner_clk or negedge rst_n) begin
        if(!rst_n)
            led <= 4'b1000;
        else if(cnt == (32'd5000_0000 - 25'd1))
    //    else if(cnt == (32'd25 - 25'd1))// change to 25 for sim
            if(led == 4'b1000) begin
                led <= 4'b0001;
            end else begin
                led <= (led << 1);
            end
        else
            led <= led;
    end
   
endmodule
