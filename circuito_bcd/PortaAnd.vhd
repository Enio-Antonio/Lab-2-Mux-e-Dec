entity PortaAnd is 
	port(a, b, c, d : in bit; saida : out bit);
end PortaAnd;

architecture main of PortaAnd is
begin
	saida <= a and b and c and d;
end architecture main;