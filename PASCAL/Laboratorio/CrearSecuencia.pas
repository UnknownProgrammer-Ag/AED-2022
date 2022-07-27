program CrearSecuenciadeSustancias;
var
AntSustancias:file of char;
Pointer:char;
i:integer;
op,element: integer;

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
	writeln('Ingrese el nombre del elemento');
	op:=1;
	While (op=1) do
	begin 
		readln(Pointer);
		write(AntSustancias,Pointer);
	    writeln('Si termino de colocar  el nombre coloque 0');
	    readln(op);
	end;
	write(AntSustancias,'#');
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