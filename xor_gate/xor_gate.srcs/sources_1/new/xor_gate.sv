`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Manish Kumar
// 
// Create Date: 30.07.2024 08:34:19
// Design Name: 
// Module Name: xor_gate
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////

module xor_gate();
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
  
  assert property(@(posedge clk) a^b)
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");    
endmodule

