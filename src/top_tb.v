`timescale 100ns / 10ns

module top_tb ;

    // 信号を定義
    reg     r_clk           ;
    wire    w_timer_1sec    ;

    // 1MHzクロック信号を生成
    initial
        r_clk = 0 ;
    always #(5)
        r_clk <= ~r_clk ;

    // topモジュールを読み出す
    top top_inst (
         .i_clk         (r_clk          )  
        ,.o_timer_1sec  (w_timer_1sec   )
    ) ;

endmodule