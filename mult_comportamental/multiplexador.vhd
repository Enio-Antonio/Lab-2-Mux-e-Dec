entity multiplexador is
	port(a, b, switch : in bit; saida : out bit);
end;

architecture behav of multiplexador is
begin
	with switch select
		saida <= a when '0', b when '1';
end;