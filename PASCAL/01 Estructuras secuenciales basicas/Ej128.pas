Program Ej128;
uses
math;
var
	N,Ct,Dc,Ud,K:integer;
begin
	for N:=100 to 999 do
	begin
		Ct:=N DIV 100;
		Dc:=(N DIV 10) MOD 10;
		Ud:= N MOD 10;
		K:=((Ct**3)+(Dc**3)+(Ud**3));
		if K=N then
			writeln('Valido ',N);
	end;
end.
