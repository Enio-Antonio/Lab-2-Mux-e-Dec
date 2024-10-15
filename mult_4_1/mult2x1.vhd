entity mult2x1 is
	port(multa, multb, switch : in bit; saida_mult : out bit);
end;

architecture behav of mult2x1 is
begin
	with switch select
		saida_mult <= multa when '0', multb when '1';
end;