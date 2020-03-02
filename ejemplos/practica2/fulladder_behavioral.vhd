--------------------------------------------
-- Module Name: fulladder_behavioral
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity fulladder_behavioral Is
port(
		a  	 : in STD_LOGIC;
		b  	 : in STD_LOGIC;
		cin  : in STD_LOGIC;
		s 	 : out STD_LOGIC;
		cout : out STD_LOGIC
	);
end fulladder_behavioral;

Architecture behavior of fulladder_behavioral Is

begin
    process (a, b, cin) 
    begin
        s <= a xor b xor cin;
        cout <= (a and b) or (a and cin) or (b and cin);
	end process;
	
end behavior;
