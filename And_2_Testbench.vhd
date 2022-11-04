library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity testbench is
end entity;

architecture struct of testbench is
	
	component and_2 is
		port (
			a,b: in std_logic;
			y: out std_logic;
		);
	end component and_2;
	
	signal a: std_logic := '0';
	signal b: std_logic := '0';
	signal y: std_logic;
	
	signal clk: std_logic := '0';
	constant clk_period: time := 5 ns;
	
begin
	
		dut: and_2 port map (a, b, y);
		
		myclock: process is
			begin
				clk <= '0';
				wait for clk_period/2;
				clk <= '1';
				wait for clk_period/2;
			end process myclock;
			
		stim: process is
		 begin 
			a <= '0';
			b <= '0';
			wait for 20 ns;
			a <= '1';
			wait for 20 ns;
			a <= '0';
			b <= '1';
			wait for 20 ns;
			a <= '1';
			wait;
			
		end process stim;
		
end architecture struct;