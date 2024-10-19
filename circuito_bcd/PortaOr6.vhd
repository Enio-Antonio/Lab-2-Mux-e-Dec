entity PortaOr6 is
	port(a, b, c, d, e, f, g, h, i, j, k, l : in bit; saida : out bit);
end PortaOr6;

architecture main of PortaOr6 is
begin 
	saida <= a or b or c or d or e or f or g or h or i or j or k or l;
end architecture main;