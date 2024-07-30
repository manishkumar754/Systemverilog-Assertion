`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Manish Kumar
// 
// Create Date: 30.07.2024 15:46:38
// Design Name: 
// Module Name: assert_countones
//////////////////////////////////////////////////////////////////////////////////


module assert_countones();
  bit [7:0] data;
  bit clk;
  always #5 clk=~clk;
  initial begin 
    clk =0;
    repeat(10)begin
      data =$urandom_range(1,10);
      #10;
    end
  end
  
  always_comb begin
   if($countones(data)==1)
      $info($time,"---Assertion passed and value is =%b",data);
	else
      $error($time ,"---Assertion Failed and value is =%b",data);
      end     
endmodule

