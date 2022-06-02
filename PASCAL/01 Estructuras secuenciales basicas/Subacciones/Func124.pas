program Func124;
var
	X,T,ID:integer;
	function Clave(N:integer):integer;
	var
		Ml,Ct,Dc,Ud,SumaDig:integer;
	begin
		if N<0 then
			begin
				Clave:=-1;
			end
		else
			begin
				Ml:=N DIV 1000;
				Ct:=(N DIV 100) MOD 10;
				Dc:=(N DIV 10) MOD 10;
				if N>99 then
					begin
						Ct:=N DIV 100;
					end
				else
					begin
						DC:=N DIV 10;
					end;
				Ud:=N MOD 10;
				SumaDig:=Ml+Ct+Dc+Ud;
				Clave:=SumaDig mod 7;
			end
	end;
begin
T:=1;
while T=1 do
	begin
		writeln('Ingrese el numero');
		readln(input,X);
		ID:=Clave(X);
		writeln('La clave que le corresponde es: ',ID);
		writeln('Determine si quiere repetir el programa 1|0');
		readln(input,T);
	end;
end.