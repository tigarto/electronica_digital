--------------------------------------------
-- Module Name: fulladder_behavioral_tb
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity fulladder_behavioral_tb Is
end fulladder_behavioral_tb;

Architecture behavior of fulladder_behavioral_tb Is

        Component fulladder_behavioral Is
        port(
		a  	 : in STD_LOGIC;
		b  	 : in STD_LOGIC;
		cin  : in STD_LOGIC;
		s 	 : out STD_LOGIC;
		cout : out STD_LOGIC
	);
        end Component;
	
	Signal a 	: STD_LOGIC := '0';
	Signal b 	: STD_LOGIC := '0';
	Signal cin  : STD_LOGIC := '0';
	
	Signal cout : STD_LOGIC;
	Signal s	: STD_LOGIC;
	
begin
	DUT:  fulladder_behavioral PORT MAP (
		a => a,
		b => b,
		cin => cin,
		s => s,
		cout => cout
        );
		 
	process
	begin
		wait for 10 ns; a <= '1';
		wait for 10 ns; b <= '1'; a <= '0';
		wait for 10 ns; a <= '1';
		wait for 10 ns; cin <= '1'; a <= '0'; b <= '0';
		wait for 10 ns; a <= '1';
		wait for 10 ns; b <= '1'; a <= '0';
		wait for 10 ns; a <= '1';
		wait for 20 ns;		
		wait;
	end process;
end behavior;
