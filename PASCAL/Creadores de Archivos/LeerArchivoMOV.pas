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
Mov: file of DATOSCL;
DM: DATOSCL;


Begin
	assign(Mov, 'archivomov.dat');
	reset(Mov);
		
	While not eof(Mov) do
	begin
		read(Mov, DM);
		if (DM.CuentaNro=0)then
		begin
			writeln('Registro End of File');
			writeln('CuentaNro: ',DM.CuentaNro);
			writeln('ClienteNro: ',DM.ClienteNro);
			writeln('TipoCuenta: ',DM.TipoCuenta);
			writeln('Saldo: ',DM.Saldo:10:2);
			writeln('Activo: ',DM.Activo);
		end
		else
		begin
			writeln('CuentaNro: ',DM.CuentaNro);
			writeln('ClienteNro: ',DM.ClienteNro);
			writeln('TipoCuenta: ',DM.TipoCuenta);
			writeln('Saldo: ',DM.Saldo:10:2);
			writeln('Activo: ',DM.Activo);
		end;
	end;
	readln();
	close(Mov);
End.