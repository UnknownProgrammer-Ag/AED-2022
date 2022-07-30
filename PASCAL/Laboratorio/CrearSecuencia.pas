program CrearSecuenciadeSustancias;
var
AntSustancias:file of char;
Pointer:char;
i:integer;
element: integer;

procedure cargarSecuencia();
begin
	writeln('Ingrese que clasificacion es ¿T o N?');
	readln(Pointer);
	write(AntSustancias,Pointer);
	writeln('Ingrese la fecha en formato DDMMAAAA');
	for i:=1 to 8 do 
	begin
		readln(Pointer);
		write(AntSustancias,Pointer);
	end;
	writeln('Ingrese el nombre del elemento y al final para terminar #');
	Repeat
	begin 
		readln(Pointer);
		write(AntSustancias,Pointer);
	end;
	Until Pointer='#';
	writeln('Ingrese el codigo');
	for i:=1 to 6 do
	begin
		readln(Pointer);
		write(AntSustancias,Pointer);
	end;
	write(AntSustancias,'#');
	writeln('Ingrese la cantidad en lbs');
	for i:=1 to 6 do
	begin
		readln(Pointer);
		write(AntSustancias,Pointer);
	end;
	write(AntSustancias,'#');
end;
begin
assign(AntSustancias, 'AntSustancias.txt');
rewrite(AntSustancias);
while True do 
begin 
	cargarSecuencia();
	WriteLn (' ¿Desea cargar otro elemento? 0-no 1-si');
	readln (element);
	if(element=0) then
	begin
		break;
	end;
end;
close(AntSustancias);
end.