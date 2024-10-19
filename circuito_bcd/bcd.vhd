entity bcd is 
	port(a, b, c, d : in bit; s0, s1, s2, s3, s4, s5, s6 : out bit);
end bcd;

architecture main of bcd is
	-- Primeiro circuito
	signal si1: bit;
	signal si2: bit;
	signal si3: bit;
	
	-- Segundo circuito
	signal si4: bit;
	signal si5: bit;
	signal si6: bit;
	signal si7: bit;
	
	-- Terceiro circuito
	signal si8: bit;
	signal si9: bit;
	signal si95: bit;
	signal si10: bit;
	signal si11: bit;
	signal si12: bit;
	
	-- Quarto circuito
	signal si13: bit;
	signal si14: bit;
	signal si15: bit;
	
	-- Sexto circuito
	signal si16: bit;
	signal si17: bit;
	
	-- Sétimo circuito
	signal si18: bit;
	signal si19: bit;
	
	-- Portas lógicas
	component PortaAnd is 
		port(a, b, c, d : in bit; saida : out bit);
	end component;
	
	component PortaOr2 is
		port(a, b : in bit; saida : out bit);
	end component;
	
	component PortaOr3 is
		port(a, b, c : in bit; saida : out bit);
	end component;
	
	component PortaOr4 is
		port(a, b, c, d : in bit; saida : out bit);
	end component;
	
	component PortaOr6 is
		port(a, b, c, d, e, f : in bit; saida : out bit);
	end component;
	
begin
	-- Saída s0
	u1: PortaAnd port map(a => a, b => not(b), c => not(c), d => not(d), saida => si18);
	u2: PortaAnd port map(a => not(a), b => not(b), c => c, d => not(d), saida => si19);
	u3: PortaOr2 port map(a => si18, b => si19, saida => s0);
	
	-- Saída s1
	u4: PortaAnd port map(a => a, b => not(b), c => c, d => not(d), saida => si16);
	u5: PortaAnd port map(a => not(a), b => b, c => c, d => not(d), saida => si17);
	u6: PortaOr2 port map(a => si16, b => si17, saida => s1);
	
	-- Saída s2
	u7: PortaAnd port map(a => not(a), b => b, c => not(c), d => not(d), saida => s2);
	
	-- Saída s3
	u8: PortaAnd port map(a => a, b => not(b), c => not(c), d => not(d), saida => si13);
	u9: PortaAnd port map(a => not(a), b => not(b), c => c, d => not(d), saida => si14);
	u10: PortaAnd port map(a => a, b => b, c => c, d => not(d), saida => si15);
	u11: PortaOr3 port map(a => si13, b => si14, c => si15, saida => s3);
	
	-- Saída s4
	u12: PortaAnd port map(a => a, b => not(b), c => not(c), d => not(d), saida => si8);
	u13: PortaAnd port map(a => a, b => b, c => not(c), d => not(d), saida => si9);
	u14: PortaAnd port map(a => not(a), b => not(b), c => c, d => d, saida => si95);
	u15: PortaAnd port map(a => a, b => not(b), c => c, d => not(d), saida => si10);
	u16: PortaAnd port map(a => a, b => b, c => c, d => not(d), saida => si11);
	u17: PortaAnd port map(a => a, b => b, c => not(c), d => d, saida => si12);
	u18: PortaOr6 port map(a => si8, b => si9, c => si95, d => si10, e => si11, f => si12, saida => s4);
	
	-- Saída s5
	u19: PortaAnd port map(a => a, b => not(b), c => not(c), d => not(d), saida => si4);
	u20: PortaAnd port map(a => not(a), b => b, c => not(c), d => not(d), saida => si5);
	u21: PortaAnd port map(a => a, b => b, c => not(c), d => not(d), saida => si6);
	u22: PortaAnd port map(a => a, b => b, c => c, d => not(d), saida => si7);
	u23: portaOr4 port map(a => si4, b => si5, c => si6, d => si7, saida => s5);
	
	-- Saída s6
	u24: PortaAnd port map(a => not(a), b => not(b), c => not(c), d => not(d), saida => si1);
	u25: PortaAnd port map(a => a, b => not(b), c => not(c), d => not(d), saida => si2);
	u26: PortaAnd port map(a => a, b => b, c => c, d => not(d), saida => si3);
	u27: portaOr3 port map(a => si1, b => si2, c => si3, saida => s6);
	
end architecture main;





