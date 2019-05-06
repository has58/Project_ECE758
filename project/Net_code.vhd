--Author Haider Ali Siddiquee
-- date : 5/5/2019
-- time 10:23:00 PM
-- Net_code.vhd
-- contain compele design of the Network Coding IC

library network_lib;
Library IEEE;
library mylib;
use network_lib.networking.All;
use mylib.gates.All;
use mylib.type_conv.all;
use work.blocks.All;
use IEEE.std_logic_1164.ALL;

Entity Net_code_ent is
	port (Pack1, Pack2: inout packet;
		sym1,sym2: inout symbol_id;
		enable,clk,en_de,r: in bit;
		con_sig : inout bit);
	end entity;


Architecture Net_code_arch of Net_code_ent is
	-- configuration for packet divider to symbols and give them id
	for pd : packet_divider use entity work.packet_divider_ent(packet_divider_arch);
	-- configuration for symbol binder to packet and use id
	--for pc : packet_comb use entity work.packet_comb_ent(packet_comb_arch);
	--for en : encoder use entity work.add_encoder_component(behv);
	--for dn : encoder use entity work.add_decoder_component(behv);
	begin 
		process(clk,en_de,r,enable)
			begin
				if (clk'event and clk'last_value='0' and enable = '1' and r='0') then
					if (en_de = '0') then
						pd : packet_divider port map (Pack1, Pack2,sym1,sym2,con_sig,clk,enable);
					end if;						
				end if;
			end process;
	end architecture;