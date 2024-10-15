entity PortaOr is
	port(input1, input2 : in bit; saida_or : out bit);
end portaOr;

architecture main of PortaOr is
begin
	saida_or <= input1 or input2;
end architecture main;