`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Manish Kumar
// 
// Create Date: 04.08.2024 20:28:24
// Design Name: 
// Module Name: assert_test13
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////
module assert_test13();
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
  property p;
  @(posedge clk) a or b;
  endproperty
  assert property(p)
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");
endmodule
