entity PortaOr4 is
	port(a, b, c, d : in bit; saida : out bit);
end PortaOr4;

architecture main of PortaOr4 is
begin 
	saida <= a or b or c or d;
end architecture main;