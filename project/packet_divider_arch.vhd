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
				if (clk'event and clk'last_value = '0' and enable = '1' and con_sig = '0' and en_dc = '0') then
					if (sym_num < 8) then
						pack_sym(pac1, pac2, sym_num, sym1, sym2);
						sym_num := sym_num + 1;
					else
						sym_num := 0;
						con_sig <= '1';
						pack_sym(pac1, pac2, sym_num, sym1, sym2);
						sym_num := sym_num +1;
					end if;		
					id1 := int_bit_vector((sym_num - 1 ),3);
					sym_id1 <= "0000" & id1 & sym1; 	
					sym_id2 <= "0001" & id1 & sym2;

					
				end if; 
			end process;
	end architecture;


-- include all library again because bit_vector_int do not found
library mylib;
library network_lib;
use network_lib.networking.All;
use mylib.gates.All;
use mylib.type_conv.all;
Architecture packet_comb_arch of packet_comb_ent is
	--for ALL : packet_divider use entity packet_divider_ent()
	signal int_pack1, int_pack2 : packet;
	begin
		-- tranfering data from input to the symbolic packets
		--pc1(0) <= p1(7 downto 0);
		-- create a funtion that divide the pcket into symbols
		--con_sig <= '0';
		--con_sig <= '1' after 20 ns;
		process(clk)
			variable sym_num : integer := 0;
			variable sym1, sym2 : symbol;
			--variable id1: id;
			begin
				if (clk'event and clk'last_value = '0' and enable = '1' and en_dc = '1') then
						sym_num := bit_vector_int(sym_id1(10 downto 8));
						sym1 := sym_id1(7 downto 0);
						sym2 := sym_id2(7 downto 0);
						if (sym_num = 7 ) then 
 							sym_pack(int_pack1, int_pack2, sym_num, sym1, sym2);		
							--con_sig <= '1';
							pac1 <= int_pack1 after 50 ns;
							pac2 <= int_pack2 after 50 ns;
						else 
							sym_pack(int_pack1, int_pack2, sym_num, sym1, sym2);
						end if;		
--						if (con_sig = '1') then 
--							pac1 <= int_pack1;
--							pac2 <= int_pack2;
--							con_sig <= '0' after 20 ns;
--						end if;
				end if; 
			end process;
	end architecture;