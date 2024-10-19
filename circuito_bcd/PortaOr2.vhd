entity PortaOr2 is
	port(a, b, c, d, e, f, g, h : in bit; saida : out bit);
end PortaOr2;

architecture main of PortaOr2 is
begin 
	saida <= a or b or c or d or e or f or g or h;
end architecture main;