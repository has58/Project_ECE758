-- Author: Haider Ali Siddiquee
-- date : 4/18/2019
-- time 8:32:00 PM
-- package_network.vhd
-- Contain all the function/proceture declaration inside the package
--Library network_lib;
library IEEE;
use IEEE.std_logic_1164.ALL;
--use network_lib.networking.ALL;
package networking is
	subtype symbol is bit_vector ( 7 downto 0);
	subtype id is bit_vector (11 downto 8);
	subtype symbol_id is bit_vector (15 downto 0);
	-- Array represent a package with index 0 to 7 
	--depend on what symbol is that and hold 8 symbols
	Type packet is array ( 7 downto 0) of symbol;
	-- function that divide the packets into symbol
	procedure pack_sym( signal Pac1, Pac2 :  in packet;
				variable sym_num : in  integer;
				variable sym1, sym2 : out Symbol);
	procedure sym_pack( signal int_pack1, int_pack2 :  out packet;
				variable sym_num : in  integer;
				variable sym1, sym2 : in Symbol);



end networking;
