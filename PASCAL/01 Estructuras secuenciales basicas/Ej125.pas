program ej125;
var
	resA,resB,A,B,F,i:integer;
begin
A:=0;
B:=1;
Writeln(A);
Writeln(B);
resA:=A;
resB:=B;
for i:=3 to 50 do
	begin
		F:=resA+resB;
		A:=resB+F;
		B:=F+A;
		resA:=A;
		resB:=B;
		Writeln(F);
		Writeln(A);
		Writeln(B); 
	end;
end.