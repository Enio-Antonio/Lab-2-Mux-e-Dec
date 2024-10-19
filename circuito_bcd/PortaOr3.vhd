entity PortaOr3 is
	port(a, b, c : in bit; saida : out bit);
end PortaOr3;

architecture main of PortaOr3 is
begin 
	saida <= a or b or c;
end architecture main;