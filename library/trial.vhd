-- Author: Haider Ali Siddiquee
-- date : 4/18/2019
-- time 5:41:34 PM
-- trial.vhd
-- This file is use for trial all the component of the project's library
library IEEE;
Use IEEE.std_logic_1164.ALL;
library network_lib;
use network_lib.networking.ALL;
library mylib;
use mylib.type_conv.all;

ENtity trial is
	port (int : in integer;
		output:out bit_vector(3 downto 0));
end entity;

Architecture trail_arch of trial is
	signal int_clk : bit := '0';
	 begin
		-- internal clock of block packet divider
		int_clk <= (NOT int_clk) after 20 ns;
		process(int_clk)
			-- keep the track of the symbol index
			--variable sym_num : integer := 0;
			begin	
				output <= int_bit_vector(int,4); 
			end process;
end architecture;