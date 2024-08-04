1. (and_gate) Write Asseertion code for AND GATE ?

2. (or_gate) Write Assertion code for OR GATE?

3. (xor_gate) Write assertion code for XOR GATE?

4. (assert_rose) Write an assertion to detect assertion of a signal A?

5. (assert_fell) Write an assertion to detect de-assertion of a signal A?.

6. (assert_stable) An assertion to detect signal A is stable in every clock edge?

7. (assert_changed) An assertion to detect signal A is changed in every clock edge?

8. (twoclkcycle) Write an assertion to detect if “B” is high, then 2 cycles before that, A was
   high.

9. (sameclk) Write an assertion to detect if signal “A” is high then signal “B” is also high on
   same clock edge 

10. (nextclk) Write an assertion to detect if signal “A” is high then signal “B” is high in next
   clock edge

11. (consecutive) Write an assertion to detect if signal “A” is high on given posedge of the clock,
   the signal “B” should be high for 3 consecutive clock cycles.

12. (ass_lab9) Write a property check that, if the signal “A” is high on given posedge of the
   clock, the signal “B” should be high for 3 clock cycles followed by “C” should be
   high after “B” is high for the third time.

13. (ass_lab10) Write an assertion to detect below sequence.
      a. B must be asserted after 3 clock cycles from assertion of A.
      b. C must be asserted after 5 clock cycles from assertion of B.
      c. D must be asserted after 7 clock cycles from assertion C.
     

14. (ass_test11) Write a property check that, if the signal “A” is high on given posedge of the
    clock, the signal “B” should be high for 2 clock cycles followed by “C” should be
    high after “B” is high for the third time and checking need be stopped if reset
    assertions is detected at any point.
    

15. (assert_synchronize) Write an assertion to synchronize below two sequences.
    a. After assertion of both A & B, C must be asserted after one clock cycle.
    b. E must be asserted within 4 to 6 clock cycles after assertion of D.
     

16. (assert_countones) Write assertion for 8 bit gnt signal as only one set bit if there is only 1 set bit?

17.  (assert_sigAB) As long as signal A is still up signal B should not be asserted.

18.   (assert-sigABC) The signals sig a and sig b may only be asserted if sig c is asserted. 

19.  (assert_test12) If sig a is received while sig b is inactive, then on the next cycle sig c must be
     inactive,and sig b must be asserted.

20.   (assert_test13) There exists a transaction that reaches its end either sig a or sig_b.
     
       
       

       
          
