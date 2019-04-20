-- Author: Haider Ali Siddiquee
-- date : 4/19/2019
-- time 5:10:00 PM
-- packet_divider_arch.vhd
-- contain the architecture of package devider block;
library mylib;
library network_lib;
Library IEEE;
use network_lib.networking.All;
use mylib.gates.All;
use IEEE.std_logic_1164.ALL;
--use work.blocks.ALL;

Architecture packet_divider_arch of packet_divider_ent is
	signal pc1, pc2 : packet ;
	signal sym1, sym2 : symbol;
	--for ALL : packet_divider use entity packet_divider_ent()
	begin
		-- tranfering data from input to the symbolic packets
		--pc1(0) <= p1(7 downto 0);
		-- create a funtion that divide the pcket into symbols
		--con_sig <= '0';
		--con_sig <= '1' after 20 ns;
		process(clk)
			variable sym_num : integer := 0;
			begin
				if (sym_num < 8) then
					pack_sym(pc1, pc2, sym_num, sym1, sym2);
					sym_num := sym_num + 1;
				else
					sym_num := 0;
					con_sig <= '1';
					pack_sym (pc1, pc2, sym_num, sym1, sym2);
					sym_num := sym_num + 1;
					con_sig <= '0' after 20 ns;
				end if;				
			end process;
	end architecture;