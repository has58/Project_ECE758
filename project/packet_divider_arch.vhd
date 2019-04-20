
Library IEEE;
use IEEE.std_logic_1164.ALL;

Architecture packet_divider_arch of packet_divider is
	begin
		-- create a funtion that divide the packet into symbols
		con_sin
		process(clk)
			variable sym_num : integer := 0;
			begin
				if (sym_num < 8) then
					pack_sym (pac1, pac2, sym_num, sym1, sym2);
					sym_num := sym_num + 1;
				else
					sym_num := 0;
					con_sym := (NOT sym_num);
					pack_sym (pac1, pac2, sym_num, sym1, sym2);
					sym_num := sym_num + 1;
					con_sin := (NOT sym_sin) after 20 ns;
					
					
			end process;
	end architecture;