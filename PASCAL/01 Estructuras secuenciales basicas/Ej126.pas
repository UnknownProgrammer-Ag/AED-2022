program ej126;
uses 
math;
var
	X,Y,i,a,b,c:integer;
	Bandera:char;
begin
Bandera:='Y';
while Bandera='Y' do
	begin
		writeln('Ingrese los valores a,b,c');
		readLn(input,a);
		readLn(input,b);
		readLn(input,c);
		i:=20;
		while i>-21 do
			begin
				X:=i;
				Y:=((a*X**2)+(b*X)+(c));
				writeln('Las coordenadas son {X,Y}= ',X,',',Y);
				i:=i-2;
			end;
		writeln('Informe si desea cambiar de ecuacion [Y|N]');
		readLn(input,Bandera);
	end;
end.