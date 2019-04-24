library IEEE;
use ieee.std_logic_1164.ALL;

package type_conv is
	function int_bit_vector( signal int : in integer;
				size : natural) return bit_vector;
end package;


Package body type_conv is
	function int_bit_vector( signal int : in integer;
				size : natural) return bit_vector is
		-- N is an integer that that hold the number
		signal N : integer;
		-- to hold the mod value. so tranfer to the array
		variable hold : integer range 0 to 1;
		variable a : bit_vector (3 downto 0);
		begin 	
			N<= int; 
			for i in (size - 1) downto 0
				loop
					if (N > 2) then 
						hold :=  N mod 2;
						N <= N/2;
					else 
					a(i) := 0;
				end loop
		end int_bit_vector;