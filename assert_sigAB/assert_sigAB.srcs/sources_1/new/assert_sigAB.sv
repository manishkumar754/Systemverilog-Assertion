`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Manish Kumar
// 
// Create Date: 04.08.2024 19:15:58
// Design Name: 
// Module Name: assert_sigAB
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////
module assert_sigAB();
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
  
  always_comb begin
  if(!a) begin
  assert (b)
  $info($time,"---Assertion Passed");
  else
  $error($time,"---Assertion Failed");
  end
  end
endmodule

