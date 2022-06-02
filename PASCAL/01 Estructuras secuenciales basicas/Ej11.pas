program ej11;
var
	Anio,AnioActual:integer;
begin
	writeln('Ingrese un anio y el anio actual');
	read(Anio);
	read(AnioActual);
	if Anio > AnioActual then
		begin
		Writeln('El anio es en el FUTURO');
		end
	else 
		if Anio< AnioActual then
			begin
				Writeln('El anio es en el PASADO');
			end
		else	
			begin
			Writeln('El anio es el ACTUAL');
			end
end.