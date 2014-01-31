----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:00:03 01/30/2014 
-- Design Name: 
-- Module Name:    Decoder_Structural - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_Structural is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Structural;

architecture Structural of Decoder_Structural is

	COMPONENT and3
	PORT(
		I0 : in STD_LOGIC;
		I1 : in STD_LOGIC;
		I2 : in STD_LOGIC;
		O : out STD_LOGIC);
	END COMPONENT;
	
	COMPONENT inverter
	PORT(
		I : in STD_LOGIC;
		O : out STD_LOGIC);
	END COMPONENT;
	
	--no need to re-declare EN b/c we already did so above.
	signal I0_NOT, I1_NOT : STD_LOGIC;
	
begin
--In here we're defining the STRUCTURE of our Decoder_Structural ENTITY.
--we're basically telling the computer how to wire up our schematic using
--the components we defined(and3, inverter) which are in the project folder.

	Y0_and3 : and3 PORT MAP(
		I0 => I0_NOT,
		I1 => I1_NOT,
		I2 => EN,
		O => Y0);
		
	Y1_and3 : and3 PORT MAP(
		I0 => I0,
		I1 => I1_NOT,
		I2 => EN,
		O => Y1);
		
	Y2_and3 : and3 PORT MAP(
		I0 => I0_NOT,
		I1 => I1,
		I2 => EN,
		O => Y2);
		
	Y3_and3 : and3 PORT MAP(
		I0 => I0,
		I1 => I1,
		I2 => EN,
		O => Y3);
		
	INV1 : inverter PORT MAP(
		I => I0,
		O => I0_NOT);
		
	INV2 : inverter PORT MAP(
		I => I1,
		O => I1_NOT);


end Structural;

