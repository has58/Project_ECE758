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
	-- Array represent a symbol index 0 to 7 and hold value of type std_logic
	Type Symbol is array ( 7 downto 0) of std_logic;
	--Type sym_id is array (9)
	-- Array represent a package with index 0 to 7 
	--depend on what symbol is that and hold 8 symbols
	Type packet is array ( 7 downto 0) of symbol;
	
	-- function that divide the packets into symbol
	-- two packets are coming as a function
	-- sym_num keep track which symbol of the the packet has been sent
	-- sym is a symbol that will be given as output
	procedure pack_sym( signal Pac1, Pac2 :  in packet;
				signal sym_num : inout integer;
				signal sym1, sym2 : out Symbol);

end networking;
	