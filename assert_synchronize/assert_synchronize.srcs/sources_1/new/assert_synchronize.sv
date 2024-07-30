`timescale 1ns / 1ps
// Engineer: Manish Kumar
// Create Date: 30.07.2024 15:28:59
// Module Name: assert_synchronize

module assert_synchronize();
  bit a,b,c,d,e;
  bit clk;
  always #5 clk=~clk;
  initial begin 
    clk =0; a=0; b=0; c=0;d=0;
    repeat(10)begin
      a=$random; 
      b=$random; 
      c=$random;
      d=$random;
      e=$random;
      #10;
    end
  end
  sequence s1;
  (a&&b)##1 c;
  endsequence
  
  sequence s2;
  d ##[4:6] e;
  endsequence
  
  property p;
  @(posedge clk) s1|->s2;
  endproperty
  assert property(p)
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");
endmodule
