-- Author: Haider Ali Siddiquee
-- date : 4/18/2019
-- time 4:12:00 PM
-- gates_package.vhd
-- Contain all the component of the different gates
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
	component ff is
	generic (tprop : time; tsp : time; N : integer);
	port (  D   : in std_logic_vector( N-1 downto 0);
		Q,QN   : out std_logic_vector( N-1 downto 0);
		clk,en : in bit);
	end component;
end package;
