module flow_led(
    input   wire            clk,
    input   wire            rst_n,
    output  reg     [3:0]   led
);
    reg  [31:0] cnt;

//*****************************************************
//**                    main code
//*****************************************************

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt <= 32'd0;
        else if(cnt < (32'd5000_0000 - 32'd1))
    //    else if(cnt < (32'd25 - 25'd1)) // change to 25 for sim
            cnt <= cnt + 32'd1;
        else
            cnt <= 32'd0;
    end

    always @(posedge clk or negedge rst_n) begin
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
