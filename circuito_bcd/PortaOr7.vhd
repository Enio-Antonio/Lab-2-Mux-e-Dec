entity PortaOr7 is
	port(a, b, c, d, e, f, g : in bit; saida : out bit);
end PortaOr7;

architecture main of PortaOr7 is
begin 
	saida <= a or b or c or d or e or f or g;
end architecture main;