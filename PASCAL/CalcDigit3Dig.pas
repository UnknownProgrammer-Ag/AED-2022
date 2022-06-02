program CalcDigit3Dig;
var
	N,Ct,Dc,Ud,X:Integer;
begin
X:=1;
While X<>9999 do
	begin
		Writeln('Ingrese el numero N de 3 cifras');
		read(input,N);
		Ct:=N div 100;
		Dc:=(N div 10) mod 10;
		Ud:=N mod 10;
		Writeln('Centena ',Ct);
		Writeln('Decena ',Dc);
		Writeln('Unidad ',Ud);
		writeln('Para salir colocar 9999');
		read(input,X);
	end;
end.