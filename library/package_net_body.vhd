 -- Author: Haider Ali Siddiquee
-- date : 4/19/2019
-- time 3:21:15 AM
-- package_net_body.vhd
-- contain all the function/proceture definations inside the package

library IEEE;
Library network_lib;
use IEEE.std_logic_1164.ALL;

-- defination of the procedure pack_sym is here
package body networking is
	procedure pack_sym( signal Pac1, Pac2 :  in packet;
				variable sym_num : in integer;
				variable sym1, sym2 : out Symbol) is
		begin	
			sym1 := pac1(sym_num);
			sym2 := pac2(sym_num);
		end pack_sym;
	procedure sym_pack( signal int_Pack1, int_Pack2 : out packet;
				variable sym_num : in integer;
				variable sym1, sym2 : in symbol) is
		begin	
			 int_pack1(sym_num) <= sym1;
			 int_pack2(sym_num) <= sym2;
		end sym_pack;
	
end networking;