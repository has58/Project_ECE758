-- Author: Haider Ali Siddiquee
-- date : 4/19/2019
-- time 3:50:00 PM
-- packet_entity.vhd
-- contain the entity of packet devider block;
use IEEE.std_logic_1164.ALL;

-- Here p1 and p2 are two packets
--sym_id1 and sym_id2 are two symbol with their IDs 
-- con_sig is a control signal that control the incoming packet toward the packet divider
Entity packet_divider_ent is 
	port( P1, P2 : in std_logic_vector (63 downto 0);
		sym_id2, sym_id1 : out std_logic_vector (11 downto 0);
		con_sig : out bit;
		clk : in bit );
end entity; 
