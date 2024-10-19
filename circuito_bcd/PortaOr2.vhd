entity PortaOr2 is
	port(a, b : in bit; saida : out bit);
end PortaOr2;

architecture main of PortaOr2 is
begin 
	saida <= a or b;
end architecture main;