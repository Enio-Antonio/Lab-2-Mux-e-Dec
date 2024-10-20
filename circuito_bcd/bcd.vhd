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
	
	-- Sinais para as portas tipo else 
	signal si20: bit;
	signal si21: bit;
	signal si22: bit;
	signal si23: bit;
	signal si24: bit;
	signal si25: bit;
	signal si26: bit;
	
	signal si27: bit;
	signal si28: bit;
	signal si29: bit;
	signal si30: bit;
	signal si31: bit;
	signal si32: bit;
	signal si33: bit;
	
	signal si34: bit;
	signal si35: bit;
	signal si36: bit;
	signal si37: bit;
	signal si38: bit;
	signal si39: bit;
	signal si40: bit;
	signal si41: bit;
	signal si42: bit;
	
	signal si43: bit;
	signal si44: bit;
	signal si45: bit;
	signal si46: bit;
	signal si47: bit;
	signal si48: bit;
	
	signal si49: bit;
	signal si50: bit;
	signal si51: bit;
	signal si52: bit;
	signal si53: bit;
	signal si54: bit;
	
	signal si55: bit;
	signal si56: bit;
	signal si57: bit;
	signal si58: bit;
	signal si59: bit;
	signal si60: bit;
	signal si61: bit;
	signal si62: bit;
	
	signal si63: bit;
	
	-- Portas lógicas
	component PortaAnd is 
		port(a, b, c, d : in bit; saida : out bit);
	end component;
	
	component PortaOr2 is
		port(a, b, c, d, e, f, g, h : in bit; saida : out bit);
	end component;
	
	component PortaOr3 is
		port(a, b, c, d, e, f, g, h, i : in bit; saida : out bit);
	end component;
	
	component PortaOr4 is
		port(a, b, c, d, e, f, g, h, i, j : in bit; saida : out bit);
	end component;
	
	component PortaOr6 is
		port(a, b, c, d, e, f, g, h, i, j, k, l : in bit; saida : out bit);
	end component;
	
	component PortaOr7 is
		port(a, b, c, d, e, f, g : in bit; saida : out bit);
	end component;
	
begin
	-- Saída s0
	u1: PortaAnd port map(a => a, b => not(b), c => not(c), d => not(d), saida => si18);
	u2: PortaAnd port map(a => not(a), b => not(b), c => c, d => not(d), saida => si19);

	u3: PortaOr2 port map(a => si18, b => si19, c => si20, d => si27, e => si34, f => si41, g => si48, h => si55, saida => s0);
	
	-- Saída s1
	u4: PortaAnd port map(a => a, b => not(b), c => c, d => not(d), saida => si16);
	u5: PortaAnd port map(a => not(a), b => b, c => c, d => not(d), saida => si17);
	
	u6: PortaOr2 port map(a => si16, b => si17, c => si21, d => si28, e => si35, f => si42, g => si49, h => si56, saida => s1);
	
	-- Saída s2
	u7: PortaAnd port map(a => not(a), b => b, c => not(c), d => not(d), saida => si63);
	
	u70: PortaOr7 port map(a => si63, b => si22, c => si29, d => si36, e => si43, f => si50, g => si57, saida => s2);
	
	-- Saída s3
	u8: PortaAnd port map(a => a, b => not(b), c => not(c), d => not(d), saida => si13);
	u9: PortaAnd port map(a => not(a), b => not(b), c => c, d => not(d), saida => si14);
	u10: PortaAnd port map(a => a, b => b, c => c, d => not(d), saida => si15);
	
	u11: PortaOr3 port map(a => si13, b => si14, c => si15, d => si23, e => si30, f => si37, g => si44, h => si51, i => si58, saida => s3);
	
	-- Saída s4
	u12: PortaAnd port map(a => a, b => not(b), c => not(c), d => not(d), saida => si8);
	u13: PortaAnd port map(a => a, b => b, c => not(c), d => not(d), saida => si9);
	u14: PortaAnd port map(a => not(a), b => not(b), c => c, d => d, saida => si95);
	u15: PortaAnd port map(a => a, b => not(b), c => c, d => not(d), saida => si10);
	u16: PortaAnd port map(a => a, b => b, c => c, d => not(d), saida => si11);
	u17: PortaAnd port map(a => a, b => b, c => not(c), d => d, saida => si12);
	
	u18: PortaOr6 port map(a => si8, b => si9, c => si95, d => si10, e => si11, f => si12, g => si24, h => si31, i => si38, j => si45, k => si52, l => si59, saida => s4);
	
	-- Saída s5
	u19: PortaAnd port map(a => a, b => not(b), c => not(c), d => not(d), saida => si4);
	u20: PortaAnd port map(a => not(a), b => b, c => not(c), d => not(d), saida => si5);
	u21: PortaAnd port map(a => a, b => b, c => not(c), d => not(d), saida => si6);
	u22: PortaAnd port map(a => a, b => b, c => c, d => not(d), saida => si7);
	
	u23: portaOr4 port map(a => si4, b => si5, c => si6, d => si7, e => si25, f => si32, g => si39, h => si46, i => si53, j => si60, saida => s5);
	
	-- Saída s6
	u24: PortaAnd port map(a => not(a), b => not(b), c => not(c), d => not(d), saida => si1);
	u25: PortaAnd port map(a => a, b => not(b), c => not(c), d => not(d), saida => si2);
	u26: PortaAnd port map(a => a, b => b, c => c, d => not(d), saida => si3);
	
	u27: portaOr3 port map(a => si1, b => si2, c => si3, d => si26, e => si33, f => si40, g => si47, h => si54, i => si61, saida => s6);
	
	-- Os outros casos de saída para serem desconsiderados
	u28: PortaAnd port map(a => a, b => not(b), c => c, d => d, saida => si20);
	u29: PortaAnd port map(a => a, b => not(b), c => c, d => d, saida => si21);
	u30: PortaAnd port map(a => a, b => not(b), c => c, d => d, saida => si22);
	u31: PortaAnd port map(a => a, b => not(b), c => c, d => d, saida => si23);
	u32: PortaAnd port map(a => a, b => not(b), c => c, d => d, saida => si24);
	u33: PortaAnd port map(a => a, b => not(b), c => c, d => d, saida => si25);
	u34: PortaAnd port map(a => a, b => not(b), c => c, d => d, saida => si26);
	
	u35: PortaAnd port map(a => a, b => b, c => not(c), d => d, saida => si27);
	u36: PortaAnd port map(a => a, b => b, c => not(c), d => d, saida => si28);
	u37: PortaAnd port map(a => a, b => b, c => not(c), d => d, saida => si29);
	u38: PortaAnd port map(a => a, b => b, c => not(c), d => d, saida => si30);
	u39: PortaAnd port map(a => a, b => b, c => not(c), d => d, saida => si31);
	u40: PortaAnd port map(a => a, b => b, c => not(c), d => d, saida => si32);
	u41: PortaAnd port map(a => a, b => b, c => not(c), d => d, saida => si33);
	
	u42: PortaAnd port map(a => a, b => b, c => c, d => d, saida => si34);
	u43: PortaAnd port map(a => a, b => b, c => c, d => d, saida => si35);
	u44: PortaAnd port map(a => a, b => b, c => c, d => d, saida => si36);
	u45: PortaAnd port map(a => a, b => b, c => c, d => d, saida => si37);
	u46: PortaAnd port map(a => a, b => b, c => c, d => d, saida => si38);
	u47: PortaAnd port map(a => a, b => b, c => c, d => d, saida => si39);
	u48: PortaAnd port map(a => a, b => b, c => c, d => d, saida => si40);
	
	u49: PortaAnd port map(a => not(a), b => b, c => c, d => d, saida => si41);
	u50: PortaAnd port map(a => not(a), b => b, c => c, d => d, saida => si42);
	u51: PortaAnd port map(a => not(a), b => b, c => c, d => d, saida => si43);
	u52: PortaAnd port map(a => not(a), b => b, c => c, d => d, saida => si44);
	u53: PortaAnd port map(a => not(a), b => b, c => c, d => d, saida => si45);
	u54: PortaAnd port map(a => not(a), b => b, c => c, d => d, saida => si46);
	u55: PortaAnd port map(a => not(a), b => b, c => c, d => d, saida => si47);
	
	u56: PortaAnd port map(a => not(a), b => b, c => not(c), d => d, saida => si48);
	u57: PortaAnd port map(a => not(a), b => b, c => not(c), d => d, saida => si49);
	u58: PortaAnd port map(a => not(a), b => b, c => not(c), d => d, saida => si50);
	u59: PortaAnd port map(a => not(a), b => b, c => not(c), d => d, saida => si51);
	u60: PortaAnd port map(a => not(a), b => b, c => not(c), d => d, saida => si52);
	u61: PortaAnd port map(a => not(a), b => b, c => not(c), d => d, saida => si53);
	u62: PortaAnd port map(a => not(a), b => b, c => not(c), d => d, saida => si54);
	
	u63: PortaAnd port map(a => not(a), b => not(b), c => c, d => d, saida => si55);
	u64: PortaAnd port map(a => not(a), b => not(b), c => c, d => d, saida => si56);
	u65: PortaAnd port map(a => not(a), b => not(b), c => c, d => d, saida => si57);
	u66: PortaAnd port map(a => not(a), b => not(b), c => c, d => d, saida => si58);
	u67: PortaAnd port map(a => not(a), b => not(b), c => c, d => d, saida => si59);
	u68: PortaAnd port map(a => not(a), b => not(b), c => c, d => d, saida => si60);
	u69: PortaAnd port map(a => not(a), b => not(b), c => c, d => d, saida => si61);
	
	
end architecture main;





