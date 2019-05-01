-- Author: Haider Ali Siddiquee
-- date : 4/28/2019
-- time 5:10:00 PM
-- type_conversion.vhd
-- conrain all teh functions that help in type conversion
library IEEE;
use ieee.std_logic_1164.ALL;

package type_conv is
 	function int_bit_vector(int : integer;
				 size : natural)
				return bit_vector;
	function bit_vector_int(a : bit_vector)
		return integer;
end package;


Package body type_conv is
	function int_bit_vector(int  :  integer;
				size : natural)
		return bit_vector is
			-- N is an integer that that hold the number
			variable N : integer;
			-- to hold the mod value. so tranfer to the array
			variable hold : integer range 0 to 1;
			variable a : bit_vector (3 downto 0);
			begin 	
				N := int; 
				for i in  0 to (size - 1)
					loop
						if (N > 0) then 
							hold :=  N mod 2;
							N := N/2;
							case hold is
								when 0 => a(i) := '0';
								when 1 => a(i) := '1';
								when others => a(i) := '0';
							end case;
						else 
							a(i) := '0';
						end if;
					end loop;
				return a;
			end int_bit_vector;
	function bit_vector_int(a : bit_vector)
		return integer is
		variable result : integer := 0;
			begin 
				for i in a'range
					loop
						result := (result*2) + (bit'pos(a(i)));
					end loop;
				return result;
			end bit_vector_int;
end type_conv;