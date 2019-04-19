-- Author: Haider Ali Siddiquee
-- date : 4/18/2019
-- time 5:41:34 PM
-- trial.vhd
-- This file is use for trial all the component of the project's library
library IEEE;
Use IEEE.std_logic_1164.ALL;
library network_lib;
use network_lib.networking.ALL;

ENtity trial is
	port (sym1, sym2 : out symbol;
		pac1, pac2: in packet);
end entity;

Architecture trail_arch of trial is
	signal int_clk : bit := '0';
	 begin
		-- internal clock of block packet divider
		int_clk <= (NOT int_clk) after 20 ns;
		process(int_clk)
			-- keep the track of the symbol index
			variable sym_num : integer := 0;
			begin	
				pack_sym (pac1, pac2, sym_num, sym1, sym2); 
			end process;
end architecture;