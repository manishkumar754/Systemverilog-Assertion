`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Manish Kumar
// Create Date: 30.07.2024 14:27:10
// Design Name: 
// Module Name: ass_lab10
// Project Name: Non-Consecutive repetition operator
//////////////////////////////////////////////////////////////////////////////////
module ass_lab10();
  bit a,b,c,d;
  bit clk;
  always #5 clk=~clk;
  initial begin 
    clk =0; a=0; b=0; c=0; d=0;
    repeat(10)begin
      a=$random; 
      b=$random;
      c=$random;
      d=$random; 
      #10;
    end
  end
  property p;
  @(posedge clk)(a ##3 b ##5 c ##7 d);
  endproperty
  assert property(p)
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");
endmodule

