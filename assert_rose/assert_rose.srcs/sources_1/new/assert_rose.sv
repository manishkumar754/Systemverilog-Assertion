`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Manish Kumar
// Create Date: 30.07.2024 09:18:46
// Design Name: 
// Module Name: assert_rose
// Project Name:  
//////////////////////////////////////////////////////////////////////////////////
module assert_rose();
  bit a;
  bit clk;
  always #5 clk=~clk;
  initial begin 
    clk =0; a=0; 
    repeat(10)begin
      a=$random;  
      #10;
    end
  end
  
  assert property(@(posedge clk) $rose (a))
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");    
endmodule
