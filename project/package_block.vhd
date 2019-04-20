-- Author: Haider Ali Siddiquee
-- date : 4/19/2019
-- time 4:40:00 PM
-- package_entity.vhd
-- contain the package of packet devider block;
library IEEE;
use IEEE.std_logic_1164.ALL;
package blocks is
	component packet_divider is 
		port( P1, P2 : in std_logic_vector (63 downto 0);
			sym_id2, sym_id1 : out std_logic_vector (11 downto 0);
			con_sig : out bit;
			clk : in bit );
		end component;
end package; 
