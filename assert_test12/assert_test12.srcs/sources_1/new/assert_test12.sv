`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Manish Kumar
// 
// Create Date: 04.08.2024 19:37:45
// Design Name: 
// Module Name: assert_test12
//////////////////////////////////////////////////////////////////////////////////
module assert_test12();
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
  @(posedge clk) (a&&!b)|=>(b&&!c);
  endproperty
  assert property(p)
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");
endmodule
