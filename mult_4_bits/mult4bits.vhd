entity mult4bit is 
	port(a, b, c, d, switch : in bit; saida : out bit);
	end mult4bit;
	
architecture main of mult4bit is
	component mult2x1 is
		port(switch : in bit; saida : out bit);
	end component;

begin
	

end architecture;