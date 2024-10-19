entity PortaOr3 is
	port(a, b, c, d, e, f, g, h, i : in bit; saida : out bit);
end PortaOr3;

architecture main of PortaOr3 is
begin 
	saida <= a or b or c or d or e or f or g or h or i;
end architecture main;