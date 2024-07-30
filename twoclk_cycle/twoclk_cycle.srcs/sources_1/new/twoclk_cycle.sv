`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Question: Write an assertion to detect if "B" is high, then 2 cycles before that, A was
//high.

// Engineer: 
// 
// Create Date: 30.07.2024 11:41:49
// Design Name: 
// Module Name: twoclk_cycle
//////////////////////////////////////////////////////////////////////////////////


module twoclk_cycle();
  bit a,b;
  bit clk;
  always #5 clk=~clk;
  initial begin 
    clk =0; a=0; b=0;
    repeat(10)begin
      a=$random; 
      b=$random; 
      #10;
    end
  end
  
  assert property(@(posedge clk) a ##2 b)
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");
endmodule
