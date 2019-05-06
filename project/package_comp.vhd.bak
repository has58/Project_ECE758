-- Author: Haider Ali Siddiquee
-- date : 4/30/2019
-- time 11:30:00 PM
-- packet_comb_arch.vhd
-- contain the architecture of package devider block;
library mylib;
library network_lib;
Library IEEE;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;
use ieee.numeric_std.ALL;
use network_lib.networking.All;
use mylib.gates.All;
use mylib.type_conv.all;
use IEEE.std_logic_1164.ALL;
--use work.blocks.ALL;

Architecture packet_divider_arch of packet_divider_ent is
	--for ALL : packet_divider use entity packet_divider_ent()
	begin
		-- tranfering data from input to the symbolic packets
		--pc1(0) <= p1(7 downto 0);
		-- create a funtion that divide the pcket into symbols
		--con_sig <= '0';
		--con_sig <= '1' after 20 ns;
		process(clk)
			variable sym_num : integer := 0;
			variable sym1, sym2 : symbol;
			variable id1: id;
			begin
				if (clk'event and clk'last_value = '0' and enable = '1') then
					if (sym_num < 8) then
						pack_sym(pac1, pac2, sym_num, sym1, sym2);
						sym_num := sym_num + 1;
					else
						sym_num := 0;
						con_sig <= '1';
						pack_sym(pac1, pac2, sym_num, sym1, sym2);
						sym_num := sym_num + 1;
						con_sig <= '0' after 20 ns;
					end if;		
					id1 := int_bit_vector((sym_num - 1 ),3);
					sym_id1 <= "0000" & id1 & sym1; 	
					sym_id2 <= "0001" & id1 & sym2;
				end if; 
			end process;
	end architecture;
