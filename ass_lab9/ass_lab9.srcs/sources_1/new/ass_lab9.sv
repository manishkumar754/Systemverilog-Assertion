`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Manish Kumar
// 
// Create Date: 30.07.2024 14:13:40
// Design Name: a is High and b is High for 3 clock cycle and after that c is High
// Module Name: ass_lab9 
//////////////////////////////////////////////////////////////////////////////////


module ass_lab9();
  bit a,b,c;
  bit clk;
  always #5 clk=~clk;
  initial begin 
    clk =0; a=0; b=0; c=0;
    repeat(10)begin
      a=$random; 
      b=$random; 
      c=$random;
      #10;
    end
  end
  
  property p;
  @(posedge clk) (a ##1 b[*3])|->c;
  endproperty
  assert property(p)
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");
endmodule

