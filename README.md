# FPGA
3x3 9 cell FPGA implementation In Verilog HDL
This is a very naive FPGA implementation in verlog HDL.This FPGA utilises 4 input LUT and 5bit channel width.
Using thses 9 cells any combinational or sequential circuit can be implemented. As of now i have implemented a 4 bit Full adder and this circuit utilises 8 Logic blocks of the FPGA.
An array of FPGA is also possible by connecting together multiple units to implement complex boolean functions.
<div style="width:40%; margin:auto; margin-bottom:10px; margin-top:20px;">
  <img style="width:100%" src="https://github.com/krypto94/FPGA/blob/master/Images/FPGA.gif">
</div>



#Switch Box
The switch box in our architecture was designed to route the signals in  all the directions and is fully programmable.However, the signals aren’t allowed to change lines during switching.The simplicity of the design gives it an inherent flexibility of variable channel width i.e at any point of time the channel width can increase or decrease with minimal changes in the switch box structure.

<div style="width:40%; margin:auto; margin-bottom:10px; margin-top:20px;">
  <img style="width:100%" src="https://github.com/krypto94/FPGA/blob/master/Images/SWITCH%20BOX.png">
</div>

L0 can be connected to T0,R0 and B0 only, similarly for all the other data lines. The data flow in between the any two nodes is controlled by two D flip-flops which can be programmed at configuration time.So, for a 5-bit wide channel width architecture there will be 60 SRAM bits to configure.In switchBox.v the  input-output port in corresponds to the configuration bits.inwireL, inwireR, inwireB, inwireT are the ports of the switch box and are 5 bit wide.
#Connection Box

<div style="width:40%; margin:auto; margin-bottom:10px; margin-top:20px;">
  <img style="width:100%" src="https://github.com/krypto94/FPGA/blob/master/Images/connectionbox.jpg">
</div>



#Logic Block

The BLE or the basic logic element of an FPGA consists of an LUT(Look up table) , 2 multiplexers and a D flip-flop. The LUT in this design is a 4-input LUT as numerous studies have shown that empirically 4-input LUT performance is better than other options.LUT is made up of D-Flip Flops and stores the truth table values of the boolean function to be implemented.A 16X1 MUX selects the corresponding value and forwards it to the next part of the BLE.the next part of the BLE has a D-Flip Flop for storing states. However, an auxiliary connection is also provided to bypass the D Flip-Flop in order to implement combinational circuits.
<div style="width:40%; margin:auto; margin-bottom:10px; margin-top:20px;">
  <img style="width:100%" src="https://github.com/krypto94/FPGA/blob/master/Images/CLB_Block_Diagram.png">
</div> 
In the file fpga.v 4-bit lut in port is the ble input, sramConfig is the truthtable values that will be stored in the LUT, sel port sets the output from the D Flip-Flop or directly from the LUT 
