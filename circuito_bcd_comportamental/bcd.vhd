entity bcd is
	port(a, b, c, d : in bit; s0, s1, s2, s3, s4, s5, s6 : out bit);
end bcd;

architecture behav of bcd is
	signal in_aux: bit_vector(3 downto 0);
begin
	in_aux <= a & b & c & d;
	
	with in_aux select
	s0 <= '1' when "1000",
	'1' when "0010",
	'0' when others;
	
	with in_aux select 
	s1 <= '1' when "1010",
	'1' when "0110",
	'0' when others;
	
	with in_aux select
	s2 <= '1' when "0100", '0' when others;
	
	with in_aux select
	s3 <= '1' when "1000",
	'1' when "0010",
	'1' when "1110",
	'0' when others;
	
	with in_aux select
	s4 <= '1' when "1000", 
	'1' when "1100",
	'1' when "1010",
	'1' when "0011",
	'1' when "1110",
	'1' when "1101",
	'0' when others;
	
	with in_aux select 
	s5 <= '1' when "1000",
	'1' when "0100",
	'1' when "1100",
	'1' when "1110",
	'0' when others;
	
	with in_aux select
	s6 <= '1' when "0000",
	'1' when "1000",
	'1' when "1110",
	'0' when others;

end architecture behav;