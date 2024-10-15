entity mult4x1 is 
	port(a, b, c, d, switch1, switch2 : in bit; saida : out bit);
end;

architecture main of mult4x1 is
	signal s1: bit;
	signal s2: bit;
	
	component mult2x1 is
		port(multa, multb, switch : in bit; saida_mult : out bit);
	end component;
	
begin
	u1: mult2x1 port map(multa => a, multb => b, switch => switch1, saida_mult => s1);
	u2: mult2x1 port map(multa => c, multb => d, switch => switch1, saida_mult => s2);
	
	u3: mult2x1 port map(multa => s1, multb => s2, switch => switch2, saida_mult => saida);

end architecture main;