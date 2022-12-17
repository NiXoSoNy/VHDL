----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.12.2022 13:08:18
-- Design Name: 
-- Module Name: XOR_gate_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;

entity XOR_gate_TB is
end;

architecture bench of XOR_gate_TB is

  component XOR_gate
      Port ( a : in STD_LOGIC;
             b : in STD_LOGIC;
             c : out STD_LOGIC);
  end component;

  signal a: STD_LOGIC;
  signal b: STD_LOGIC;
  signal c: STD_LOGIC;

begin

  uut: XOR_gate port map ( a => a,
                          b => b,
                          c => c );

  stimulus: process
  begin
  
    -- Put initialisation code here
    a <='0';
    b <='1';
    wait for 10 ns;
    a <='0';
    b <='0';
    wait for 10 ns;
    a <='1';
    b <='0';
    wait for 10 ns;
    a <='1';
    b <='1';
    wait for 10 ns;
    a <='0';
    b <='0';
    -- Put test bench stimulus code here

    wait;
  end process;


end;