library ieee;
use ieee.std_logic_1164.all;

entity antirrebote is 
	generic (
				fclk		:integer := 1;	--Frecuencia de reloj en MHz.
				twindow	:integer :=10	--Ventana de tiempo en ms.
				);
	port(
			x		:in std_logic;
			clk 	:in std_logic;
			y		:buffer std_logic
			);
end antirrebote;

architecture behav of antirrebote is
	
	constant max	:integer := fclk * twindow;
	
begin 
	
	process(clk)
		variable cont	:integer range 0 to max;
 	begin 
		if(clk'event and clk = '1') then 
			if(y /= x) then
				cont := cont + 1;
				if(cont = max) then
					cont := 0;
					y <= x;
				end if;
			else 
				cont := 0;
			end if;
		end if;
	end process;
end behav; 