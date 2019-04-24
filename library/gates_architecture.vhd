-- Author: Haider Ali Siddiquee
-- date : 4/18/2019
-- time 3:00:00 PM
-- trial.vhd
-- Contain all gates architecute
library IEEE;
use ieee.std_logic_1164.ALL;

Architecture and_arch of gates_ent is
	begin 
		process (A, B)
			begin
				for i in (N-1) downto 0
					loop
						O(i) <= A(i) AND B(i) after delay;
					end loop;
			end process;	
	end architecture;
Architecture or_arch of gates_ent is
	begin 
		process (A, B)
			begin
				for i in (N-1) downto 0
					loop
						O(i) <= A(i) OR B(i) after delay;
					end loop;
			end process;	
	end architecture;
Architecture nand_arch of gates_ent is
	begin 
		process (A, B)
			begin
				for i in (N-1) downto 0
					loop
						O(i) <= A(i) NAND B(i) after delay;
					end loop;
			end process;	
	end architecture;
Architecture nor_arch of gates_ent is
	begin 
		process (A, B)
			begin
				for i in (N-1) downto 0
					loop
						O(i) <= A(i) NOR B(i) after delay;
					end loop;
			end process;	
	end architecture;
Architecture xor_arch of gates_ent is
	begin 
		process (A, B)
			begin
				for i in (N-1) downto 0
					loop
						O(i) <= A(i) XOR B(i) after delay;
					end loop;
			end process;	
	end architecture;
Architecture xnor_arch of gates_ent is
	begin 
		process (A, B)
			begin
				for i in (N-1) downto 0
					loop
						O(i) <= A(i) XNOR B(i) after delay;
					end loop;
			end process;	
	end architecture;
Architecture not_arch of not_gate is
	begin 
		process (A)
			begin
				for i in (N-1) downto 0
					loop
						O(i) <=  (NOT A(i)) after delay;
					end loop;
			end process;	
	end architecture;

Architecture ff_arch of ff_ent is
	begin
		--check for the rising edge
		--if (((clk = '1') AND (clk'last_value = '0')) and (en = '1')) then 
		process (clk)
			begin
				if (rising_edge(clk) and en = '1') then	
					--perform transfer data from input to output
					Q <= D;
					QN <= (NOT D);
				end if;
			end process; 
	end architecture;