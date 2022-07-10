program CrearArchivoMAE;
Uses CRT;
type
DATOSCL=record
	CuentaNro:longint;
	ClienteNro:longint;
	TipoCuenta:string[2];
	Saldo:real;
	Activo:char;
end;
var
clientes: file of DATOSCL;
DT: DATOSCL;


Begin
	assign(clientes, 'archivomae.dat');
	reset(clientes);
		
	While not eof(clientes) do
	begin
		read(clientes, DT);
		if (DT.CuentaNro=0)then
		begin
			TextColor(red);
			writeln('Registro End of File');
			TextColor(15);
			writeln('CuentaNro: ',DT.CuentaNro);
			writeln('ClienteNro: ',DT.ClienteNro);
			writeln('TipoCuenta: ',DT.TipoCuenta);
			writeln('Saldo: ',DT.Saldo:10:2);
			writeln('Activo: ',DT.Activo);
		end
		else
		begin
			writeln('CuentaNro: ',DT.CuentaNro);
			writeln('ClienteNro: ',DT.ClienteNro);
			writeln('TipoCuenta: ',DT.TipoCuenta);
			writeln('Saldo: ',DT.Saldo:10:2);
			writeln('Activo: ',DT.Activo);
		end;
	end;
	readln();
	close(clientes);
End.