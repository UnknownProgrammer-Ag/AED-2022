    PROGRAM ejercicio;
CONST lbs=2.2;
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
    sec:file of char;
    v:char;
    sal:string;
    c2, c3, c4, i:integer;
    c, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12: real;
function carent(a:char):integer;
    begin
        case a of
            '1': carent:=1;
            '2': carent:=2;
            '3': carent:=3;
            '4': carent:=4;
            '5': carent:=5;
            '6': carent:=6;
            '7': carent:=7;
            '8': carent:=8;
            '9': carent:=9;
            '0': carent:=0;
        end;
    end;
begin
    assign(arch,'noTer.dat');
    {$I-} 
    rewrite(arch);
    {$I+}
    m1:=0;
    m2:=0;
    m3:=0;
    m4:=0;
    m5:=0;
    m6:=0;
    m7:=0;
    m8:=0;
    m9:=0;
    m10:=0;
    m11:=0;
    m12:=0;
    assign(sec,'sec.txt');
    {$I-}
    reset(sec);
    {$I+}
    read(sec,v);
    while not EOF(sec) do
        begin
            if v='N' then
                begin
                    read(sec,v);
                    c2:=0;
                    for i:=1 to 2 do
                        begin
                            c2:=carent(v)+c2*10;
                            read(sec,v);
                        end;
                    reg.fecha.dia:=c2;
                    c3:=0;
                    for i:=1 to 2 do
                        begin
                            c3:=carent(v)+c3*10;
                            read(sec,v);
                        end;
                    reg.fecha.mes:=c3;
                    c4:=0;
                    for i:=1 to 4 do
                        begin
                            c4:=carent(v)+c4*10;
                            read(sec,v);
                        end;
                    reg.fecha.anio:=c4;
                    sal:='';
                    while v<>'#' do
                        begin
                            sal:=concat(sal,v);
                            read(sec,v);
                        end;
                    writeln(sal);
                    reg.nombre:=sal;
                    write(Arch,reg);
                    read(sec,v);
                    while v<>'#' do
                        begin
                            read(sec,v);
                        end;
                    read(sec,v);
                    c:=0;
                    while v<>'#' do
                        begin
                            c:=carent(v)*100000;
                            writeln(c);
                            read(sec,v);
                            c:=c+carent(v)*10000;
                            writeln(c);
                            read(sec,v);      
                            c:=c+carent(v)*1000;
                            writeln(c);
                            read(sec,v);
                            c:=c+carent(v)*100;
                            writeln(c);
                            read(sec,v);
                            c:=c+carent(v)*10;
                            writeln(c);
                            read(sec,v);
                            c:=c+carent(v);
                            writeln(c);
                            read(sec,v);
                        end;
                    {+while v<>'#' do
                        begin
                            writeln(v);
                            c:=carent(v)+c*10;
                            writeln(c:2);
                            read(sec,v);
                        end;*}
                    c:=c/lbs;
                    writeln(c:2,' Kg');
                end
            else
                begin
                    for i:=1 to 3 do
                        begin
                            read(sec,v);
                        end;
                    c3:=0;
                    for i:=1 to 2 do
                        begin
                            c3:=carent(v)+c3*10;
                            read(sec,v);
                        end;
                    c4:=0;
                    for i:=1 to 4 do
                        begin
                            c4:=carent(v)+c4*10;
                            read(sec,v);
                        end;
                    sal:='';
                    while v<>'#' do
                        begin
                            sal:=concat(sal,v);
                            read(sec,v);
                        end;
                    write(sal);
                    read(sec,v);
                    while v<>'#' do
                        begin
                            read(sec,v);
                        end;
                    read(sec,v);
                    c:=0;
                    while v<>'#' do
                        begin
                            c:=carent(v)*100000;
                            writeln(c);
                            read(sec,v);
                            c:=c+carent(v)*10000;
                            writeln(c);
                            read(sec,v);      
                            c:=c+carent(v)*1000;
                            writeln(c);
                            read(sec,v);
                            c:=c+carent(v)*100;
                            writeln(c);
                            read(sec,v);
                            c:=c+carent(v)*10;
                            writeln(c);
                            read(sec,v);
                            c:=c+carent(v);
                            writeln(c);
                            read(sec,v);
                        end;
                    writeln(v);
                    {*while v<>'#' do
                        begin
                            writeln(v);
                            c:=carent(v)+c*10;
                            writeln(c);
                            read(sec,v);
                        end;*}
                    c:=c/lbs;
                    writeln(c:2,' Kg');
                end;
            if c4=2019 then
                begin
                    case c3 of
                        1:m1:=m1+c;
                        2:m2:=m2+c;
                        3:m3:=m3+c;
                        4:m4:=m4+c;
                        5:m5:=m5+c;
                        6:m6:=m6+c;
                        7:m7:=m7+c;
                        8:m8:=m8+c;
                        9:m9:=m9+c;
                        10:m10:=m10+c;
                        11:m11:=m11+c;
                        12:m12:=m12+c;
                    end;
                end;
            read(sec, v);
        end;
    close(arch);
    close(sec);
    writeln(' ');
    writeln(' Informe mensual del anio 2019 ');
    writeln('Mes de Enero de 2019     ', m1:2, ' Kg');
    writeln('Mes de Febrero de 2019   ', m2:2, ' Kg');
    writeln('Mes de Marzo de 2019     ', m3:2, ' Kg');
    writeln('Mes de Abril de 2019     ', m4:2, ' Kg');
    writeln('Mes de Mayo de 2019      ', m5:2, ' Kg');
    writeln('Mes de Junio de 2019     ', m6:2, ' Kg');
    writeln('Mes de Julio de 2019     ', m7:2, ' Kg');
    writeln('Mes de Agosto de 2019    ', m8:2, ' Kg');
    writeln('Mes de Septiembre de 2019', m9:2, ' Kg');
    writeln('Mes de Octubre de 2019   ', m10:2, ' Kg');
    writeln('Mes de Noviembre de 2019 ', m11:2, ' Kg');
    writeln('Mes de Diciembre de 2019 ', m12:2, ' Kg');
end.