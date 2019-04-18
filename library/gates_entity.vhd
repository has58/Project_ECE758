library IEEE;
use ieee.std_logic_1164.ALL;

-- this is an entity for all two input gates with multiple bits depends on N
-- this antity do not consist 'NOT' gate
Entity gates_ent is
	-- delay for each gates 
	-- N is for number of bit we gonna use for any gates 
	generic (delay : time := 10 ns; N : integer := 8);
	port (A, B: in std_logic_vector( N-1 downto 0) ;
		O: out std_logic_vector);
	end entity;


library IEEE;
use ieee.std_logic_1164.ALL;
-- this is an entity for not gate
Entity not_gate is
	generic (delay : time := 10 ns; N : integer := 8);
	port (A : in std_logic_vector( N-1 downto 0) ;
		O: out std_logic_vector);
	end entity;