LIBRARY IEEE;

use ieee.std_logic_1164.all;

entity and_2 is
	port (A,B : in std_logic;
	      O   : out std_logic);
end and_2;

architecture and_2_arch of and_2 is
begin
	O <= A and B;
end and_2_arch;
