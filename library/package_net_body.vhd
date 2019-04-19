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
	procedure pack_sym( signal Pac1, Pac2 :  in packet;
				variable sym_num : inout integer;
				signal sym1, sym2 : out symbol) is
		begin
			if (sym_num < 8) then
				sym1 <= pac1(sym_num);
				sym2 <= pac2(sym_num);
			else 
				sym_num := 0;
				sym1 <= pac1(sym_num);
				sym2 <= pac2(sym_num);
			end if;
				sym_num := sym_num + 1;
		end pack_sym;
end package body networking;