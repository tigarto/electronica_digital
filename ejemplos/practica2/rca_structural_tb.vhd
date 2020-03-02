----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2020 11:01:02
-- Design Name: 
-- Module Name: rca_structural_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rca_structural_tb is
--  Port ( );
end rca_structural_tb;

architecture Behavioral of rca_structural_tb is

component rca_estructural Is
port(
		a  	 : in STD_LOGIC_VECTOR (3 downto 0);
		b  	 : in STD_LOGIC_VECTOR (3 downto 0);
		cin  : in STD_LOGIC;
		s 	 : out STD_LOGIC_VECTOR (3 downto 0);
		cout : out STD_LOGIC
	);
end component;


Signal a 	: STD_LOGIC_VECTOR (3 downto 0) := "0000";
Signal b 	: STD_LOGIC_VECTOR (3 downto 0) := "0000";
Signal cin  : STD_LOGIC := '0';
	
Signal cout : STD_LOGIC;
Signal s	: STD_LOGIC_VECTOR (3 downto 0);



begin




DUT: rca_estructural PORT MAP (
	a => a,
	b => b,
	cin => cin,
	s => s,
	cout => cout
);

estimulus: process

begin

wait for 10 ns; 
a <= "1111";
b <= "0001";

wait for 10 ns; 
cin <= '1';

wait for 10 ns; 
b <= "1111";
cin <= '0';

wait for 10 ns; 
cin <= '1';

wait for 10 ns; 
a <= "1000";
b <= "0110";
cin <= '1';

wait for 20 ns;
 
end process;

end Behavioral;
