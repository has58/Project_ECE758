-- Author: Haider Ali Siddiquee
-- date : 4/18/2019
-- time 4:12:00 PM
-- gates_package.vhd
-- Contain all the component of the deffernt gates
library IEEE;
use ieee.std_logic_1164.ALL;
package gates is
	component HAND is
		generic (delay : time ; N : integer );
		port ( A, B : in std_logic_vector( N-1 downto 0);
			O : out std_logic_vector(N-1 downto 0));
	end component;
	component HOR is
		generic (delay : time ; N : integer);
		port ( A, B : in std_logic_vector( N-1 downto 0);
			O : out std_logic_vector(N-1 downto 0));
	end component;
	component HNOR is
		generic (delay : time ; N : integer);
		port ( A, B : in std_logic_vector( N-1 downto 0);
			O : out std_logic_vector(N-1 downto 0));
	end component;
	component HNAND is
		generic (delay : time ; N : integer);
		port ( A, B : in std_logic_vector( N-1 downto 0);
			O : out std_logic_vector(N-1 downto 0));
	end component;
	component HXOR is
		generic (delay : time ; N : integer );
		port ( A, B : in std_logic_vector( N-1 downto 0);
			O : out std_logic_vector(N-1 downto 0));
	end component;
	component HXNOR is
		generic (delay : time ; N : integer);
		port ( A, B : in std_logic_vector( N-1 downto 0);
			O : out std_logic_vector(N-1 downto 0));
	end component;
	component HNOT is
		generic (delay : time ; N : integer);
		port ( A : in std_logic_vector( N-1 downto 0);
			O : out std_logic_vector(N-1 downto 0));
	end component;
end package;
