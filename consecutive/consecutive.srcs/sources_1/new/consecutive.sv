`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 12:19:38
// Design Name: Manish Kumar
// Module Name: consecutive
//////////////////////////////////////////////////////////////////////////////////
module consecutive();
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
  
  assert property(@(posedge clk) a ##1 b[*3])
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");
endmodule

