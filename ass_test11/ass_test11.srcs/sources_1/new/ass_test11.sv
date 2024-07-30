`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Manish Kumar 
// Create Date: 30.07.2024 15:04:32
// Design Name: 
// Module Name: ass_test11
//////////////////////////////////////////////////////////////////////////////////
module ass_test11();
  bit a,b,c;
  bit clk,rst;
  always #5 clk=~clk;
  initial begin 
    clk =0; a=0; b=0; c=0;rst =0;
    repeat(10)begin
      a=$random; 
      b=$random; 
      c=$random;
      #10;
    end
  end
  property p;
  @(posedge clk) disable iff(rst)a ##2 b[*3]|->c;
  endproperty
  assert property(p)
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");
endmodule

