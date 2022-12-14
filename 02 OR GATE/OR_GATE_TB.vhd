-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity OR_GATE_TB is
end;

architecture bench of OR_GATE_TB is

  component OR_GATE
      Port ( a : in STD_LOGIC;
             b : in STD_LOGIC;
             c : out STD_LOGIC);
  end component;

  signal a: STD_LOGIC;
  signal b: STD_LOGIC;
  signal c: STD_LOGIC;

begin

  uut: OR_GATE port map ( a => a,
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