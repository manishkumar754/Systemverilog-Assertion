`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Manish Kumar 
// 
// Create Date: 30.07.2024 10:39:33
// Design Name: 
// Module Name: assert_stable
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////

module assert_stable();
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
  
  assert property(@(posedge clk) $stable(a))
    $info($time ,"---Assertion passed");
	else
      $error($time ,"---Assertion Failed");    
endmodule
    
