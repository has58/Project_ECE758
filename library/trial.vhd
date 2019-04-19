-- Author: Haider Ali Siddiquee
-- date : 4/18/2019
-- time 5:41:34 PM
-- trial.vhd
-- This file is use for trial all the component of the project's library
library IEEE;
Use IEEE.std_logic_1164.ALL;
library network_lib;
use network_lib.networking.ALL;

ENtity trial is
	port (a : in symbol;
		b : in packet;
		c : out std_logic);
end entity;

Architecture trail_arch of trial is
	begin
		c <= '1';
end architecture;