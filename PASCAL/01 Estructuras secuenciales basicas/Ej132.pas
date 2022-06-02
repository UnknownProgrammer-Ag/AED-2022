program Ej132;
var
	A,B,C,D,E,N,year:integer;
begin
	for year:=1990 to 2010 do
	begin
		A:=year mod 19;
		B:=year mod 4;
		C:=year mod 7;
		D:=(19*A+24) mod 30;
		E:=(2*B+4*C+6*D+5) mod 7;
		N:=(22+D+E);
		if N>31 then
			begin
				writeln('El dia ',N-31,' de abril es el domingo de pascua');
			end
		else
			begin
				writeln('El dia ',N,' de marzo es el domingo de pascua');
			end
	end;
end.