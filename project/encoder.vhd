
-----Pengxiang Zhao component of addition encoder------
library mylib;
library network_lib;
Library IEEE;
use network_lib.networking.All;
use mylib.gates.All;
use mylib.type_conv.all;
use IEEE.std_logic_1164.ALL;

entity Add_Encoder_Component1 is
	port(a,b:in symbol_id;
		output:out symbol_id;
		clk,enable: in bit);
end Add_Encoder_Component1;

architecture behv of Add_Encoder_Component1 is
begin	
	process(a,b,clk,enable)
	begin
	if (clk'event and clk'last_value = '0' and enable = '1') then
		output<=a xor b;
	end if;
	end process;	
end behv;
