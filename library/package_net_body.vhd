-- Author: Haider Ali Siddiquee
-- date : 4/19/2019
-- time 3:21:15 AM
-- package_net_body.vhd
-- contain all the function/proceture definations inside the package

library IEEE;
Library network_lib;
use IEEE.std_logic_1164.ALL;
use network_lib.networking.ALL;

package body networking is
	--procedure pack_sym( signal Pac1, Pac2 :  in packet;
	--			variable sym_num : inout integer;
	--			signal sym1, sym2 : out symbol) is
	--	begin
	--			sym1 <= pac1(sym_num);
	--			sym2 <= pac2(sym_num);
	--	end pack_sym;
	procedure pack_sym_2( signal Pac1, Pac2 :  in packet;
				variable sym_num : inout bit_vector(2 downto 0);
				signal sym1, sym2 : out Symbol) is
		variable i,j : integer := 0;
		begin	
			case sym_num is 
				when "000" => i := 0;
					      j := 7;
				when "001" => i := 8;
					      j := 15;
				when "010" => i := 16;
					      j := 23;
				when "011" => i := 24;
					      j := 31;
				when "100" => i := 32;
					      j := 39;
				when "101" => i := 40;
					      j := 47;
				when "110" => i := 48;
					      j := 55;
				when "111" => i := 56;
					      j := 63;
			end case;
			sym1 <= pac1( j downto i);
			sym2 <= pac2( j downto i);
		end pack_sym_2;
end package body networking;