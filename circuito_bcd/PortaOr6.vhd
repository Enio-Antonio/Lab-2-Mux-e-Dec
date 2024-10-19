entity PortaOr6 is
	port(a, b, c, d, e, f : in bit; saida : out bit);
end PortaOr6;

architecture main of PortaOr6 is
begin 
	saida <= a or b or c or d or e or f;
end architecture main;