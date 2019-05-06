
-----Pengxiang Zhao component of addition decoder------
library mylib;
library network_lib;
Library IEEE;
use network_lib.networking.All;
use mylib.gates.All;
use mylib.type_conv.all;
use IEEE.std_logic_1164.ALL;

entity Add_Decoder_Component is
	port(a,b:in symbol_id;
		output1,output2:out symbol_id;
		clk,enable,en_dc: in bit);
end Add_Decoder_Component;

architecture behv of Add_Decoder_Component is
begin
	process(a,b,clk,enable)
	begin
	if (clk'event and clk'last_value = '0' and enable = '1' and en_dc = '1' ) then
		output1 <= a xor b;
		output2 <= b;
	end if;
	end process;
	
end behv;