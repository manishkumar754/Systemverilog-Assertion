`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 20:38:39
// Design Name: Manish Kumar
// Module Name: or_gate
// Project Name: SVA_OR GATE 
//////////////////////////////////////////////////////////////////////////////////

module or_gate();
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
 
  assert property(@(posedge  clk) a||b)
    $info($time ,"---Assertion passed");
	else
      $error($time,"---Assertion Failed");    
endmodule
