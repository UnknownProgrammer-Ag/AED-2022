program ej127;
uses 
math;
var
	X,Y,i,a,b,c:integer;
	procedure Aviso;
	begin
		writeln('Si desea terminar este programa debe ingresar en el valor a 9999');
	end;
begin
Aviso;
writeln('Ingrese el valor a');
readLn(input,a);
while a<>9999 do
	begin
		writeln('Ingrese b,c');
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
		writeln('Ingrese el valor a');
		readLn(input,a);
	end;
end.