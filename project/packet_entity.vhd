-- Author: Haider Ali Siddiquee
-- date : 4/19/2019
-- time 3:50:00 PM
-- packet_entity.vhd
-- contain the entity of packet devider block;
Library IEEE;
Library network_lib;
use network_lib.networking.ALL;
use IEEE.std_logic_1164.ALL;
-- this entity is use for package dividing
-- Here p1 and p2 are two packets
--sym_id1 and sym_id2 are two symbol with their IDs 
-- con_sig is a control signal that control the incoming packet toward the packet divider
Entity packet_divider_ent is 
	port( Pac1, Pac2 : in packet;
		sym_id2, sym_id1 : out symbol_id;
		con_sig : inout bit;
		clk,enable : in bit;
		en_dc : in bit);
end entity; 


Library IEEE;
Library network_lib;
use network_lib.networking.ALL;
use IEEE.std_logic_1164.ALL;

--this entity use for package combining
-- Here p1 and p2 are two packets
--sym_id1 and sym_id2 are two symbol with their IDs 
-- con_sig is a control signal that control the incoming packet toward the packet divider
Entity packet_comb_ent is 
	port( Pac1, Pac2 : out packet;
		sym_id2, sym_id1 : in symbol_id;
		--con_sig : inout bit;
		clk,enable, en_dc : in bit);
end entity; 