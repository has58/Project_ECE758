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
	--myarray is a parent array of natural range that hold std_logic
	--This array allow any cancatination or any aperation without type casting for following arrays
	Type myarray is array (natural range <>) of std_logic; 
	--****Type Symbol_id is array(11 downto 0) of std_logic;
	--type symbol is array (7 downto 0) of std_logic;
	subtype symbol is myarray ( 7 downto 0);
	subtype id is myarray (11 downto 8);
	subtype symbol_id is myarray(11 downto 0);
	-- Array represent a symbol index 0 to 7 and hold value of type std_logic
	--******Subtype symbol is array(symbol_id range 7 downto 0) of std_logic;
	--** Array represent a package with index 0 to 7 
	--depend on what symbol is that and hold 8 symbols
	--****Type packet is array ( 7 downto 0) of symbol;
	subtype packet is myarray ( 63 downto 0);	
	-- function that divide the packets into symbol
	-- two packets are coming as a function
	-- sym_num keep track which symbol of the the packet has been sent
	-- sym is a symbol that will be given as output
	--procedure pack_sym( signal Pac1, Pac2 :  in packet;
			--	variable sym_num : inout integer;
			--	signal sym1, sym2 : out Symbol);
	procedure pack_sym_2( signal Pac1, Pac2 :  in packet;
				variable sym_num : inout std_logic_vector(2 downto 0);
				signal sym1, sym2 : out Symbol);

end networking;