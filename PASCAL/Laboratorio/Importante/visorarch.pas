PROGRAM ejercicio;
TYPE
    fecha = record
        dia:integer;
        mes:integer;
        anio:integer;
        end;
    noTer=record
        fecha:fecha;
        nombre:string;
        end;
var
    arch:file of noTer;
    reg:noTer;
begin
    assign(arch,'noTer.dat');
    {$I-} 
    reset(arch);
    {$I+}
    read(arch,reg);
    writeln(' Dia ',' Mes ',' Anio ',' Nombre ');   
    while not EOF(arch) do
        begin
            if reg.fecha.mes<10 then
                writeln('  ',reg.fecha.dia,'    ',reg.fecha.mes,'   ',reg.fecha.anio,'  ',reg.nombre)
            else
                writeln('  ',reg.fecha.dia,'   ',reg.fecha.mes,'   ',reg.fecha.anio,'  ',reg.nombre);
            read(arch,reg);
        end;
    close(arch);
end.