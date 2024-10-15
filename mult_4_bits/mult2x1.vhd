entity multiplexador is 
	port(dwitch : in bit; saida : out bit);
end multiplexador;

architecture main of multiplexador is
	signal s1: bit;
	signal s2: bit;
	
	component PortaAnd is 
		port(en1, en2 : in bit; saida_and: out bit);
	end component;
	
	component PortaOr is 
		port(input1, input2 : in bit; saida_or : out bit);
	end component;
begin
	u1: PortaAnd port map(en1 => a, en2 => not(switch), saida_and => s1);
	u2: PortaAnd port map(en1 => b, en2 => switch, saida_and => s2);
	
	u3: PortaOr port map(input1 => s1, input2 => s2, saida_or => saida);
	
end architecture main;