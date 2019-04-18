library IEEE;
use IEEE.std_logic_1164.ALL;
package networking is
	-- Array represent a symbol index 0 to 7 and hold value of type std_logic
	Type Symbol is array (7 downto 0) of std_logic;
	-- Array represent a package with index 0 to 7 
	--depend on what symbol is that and hold 8 symbols
	Type packet is array ( 7 downto 0) of symbol;
end package;
	