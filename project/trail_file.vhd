LIbrary IEEE;
Library Mylib;
Use Mylib.gates.ALL; 
Use IEEE.std_logic_1164.ALL;

--trial entity
Entity trial is
	port (A, B : in std_logic_vector ( 7 downto 0);
		 O : out std_logic_vector (7 downto 0));
end entity;

Architecture trial_arch of trial is
	for ALL: HXOR use entity mylib.gates_ent(xor_arch); 
	begin 
		X1 : HXOR generic map ( 5 ns, 8) port map (A,B,O);
	end architecture;