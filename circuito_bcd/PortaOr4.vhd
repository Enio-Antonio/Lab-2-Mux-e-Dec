entity PortaOr4 is
	port(a, b, c, d, e, f, g, h, i, j : in bit; saida : out bit);
end PortaOr4;

architecture main of PortaOr4 is
begin 
	saida <= a or b or c or d or e or f or g or h or i or j;
end architecture main;