Library IEEE;
use IEEE.std_logic_1164.ALL;

-- Here p1 and p2 are two packets 
Entity packet_divider is 
	port( P1, P2 : in std_logic_vector (63 downto 0);
		A, B : out std_logic_vector (9 downto 0));
end entity; 
