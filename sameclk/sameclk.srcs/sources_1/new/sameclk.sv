`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 11:55:55
// Design Name: Manish kumar
//////////////////////////////////////////////////////////////////////////////////
module sameclk();
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
  
  assert property(@(posedge clk) a |-> b)
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");
endmodule

