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
			con_sig : inout bit;
			clk,enable,en_dc : in bit );
	end component;
	component packet_comb is
		port( Pac1, Pac2 : out packet;
		sym_id1, sym_id2 : in symbol_id;
		--con_sig : inout bit;
		clk,enable,en_dc : in bit);
	end component;
	component encoder is
		port(a,b:in symbol_id;
			output:out symbol_id;
			clk,enable,en_dc: in bit);
	end component;
	component decoder is
		port(a,b:in symbol_id;
		output1,output2:out symbol_id;
		clk,enable,en_dc: in bit);
	end component;
end package;
