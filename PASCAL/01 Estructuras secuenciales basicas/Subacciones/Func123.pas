program Func123;
var
	X,Y,Z,T,Menor:integer;

	function Minimo(A,B,C:integer):integer;
	begin
		if (A<B) AND (A<C) then
			begin
				Minimo:=A;
			end
		else
			begin
				if (B<A) AND (B<C) then
					begin
						Minimo:=B;
					end
				else
					begin
						Minimo:=C;
					end
			end
	end;
begin
T:=1;
while T=1 do
	begin
		writeln('Ingrese los tres valores');
		readln(input,X);
		readln(input,Y);
		readln(input,Z);
		Menor:=Minimo(X,Y,Z);
		writeln('El menor valor es ',Menor);
		writeln('Determine si quiere repetir el programa 1|0');
		read(input,T);
	end;
end.