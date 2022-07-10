program CrearArchivoMAE;
type
DATOSCL=record
	CuentaNro:longint;
	ClienteNro:longint;
	TipoCuenta:string[2];
	Saldo:real;
	Activo:char;
end;
var
sal: file of DATOSCL;
DS: DATOSCL;
op: integer;

Begin
	assign(sal, 'archivosal.dat');
	reset(sal);
	
	While not eof(sal) do
	begin
		
		read(sal, DS);
		writeln('        CuentaNro: ',DS.CuentaNro);
		writeln('        ClienteNro: ',DS.ClienteNro);
		writeln('        TipoCuenta: ',DS.TipoCuenta);
		writeln('        Saldo: ',DS.Saldo:10:2);
		writeln('        Activo: ',DS.Activo);
		writeln();
					
	end;
	readln();
	close(sal);
End.