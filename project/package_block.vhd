-- Author: Haider Ali Siddiquee
-- date : 4/19/2019
-- time 4:40:00 PM
-- package_entity.vhd
-- contain the package of packet devider block;
library IEEE;
library network_lib;
use network_lib.networking.ALL;
use IEEE.std_logic_1164.ALL;
package blocks is
	component packet_divider is 
		port( Pac1, Pac2 : in packet;
			sym_id2, sym_id1 : out symbol_id;
			con_sig : out bit;
			clk,enable : in bit );
		end component;
end package; 
