program CrearArchivoMov;
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
op: integer;

procedure cargarCuenta();
begin
	WriteLn('Ingrese el numero de cuenta');
	readln(DM.CuentaNro);
	WriteLn('Ingrese el codigo de cliente');
	readln(DM.ClienteNro);
	WriteLn('Ingrese el tipo de cuenta, Ahorro=CA; Corriente=CC');
	readln(DM.TipoCuenta);
	WriteLn('Ingrese el saldo');
	readln(DM.Saldo);
	WriteLn('Ingrese si esta activa, S o N');
	readln(DM.Activo);
	write(Mov, DM);
end;
begin
assign(Mov, 'archivomov.dat');
rewrite(Mov);
while True do 
begin 
	cargarCuenta();
	WriteLn (' ¿Desea cargar otra cuenta? 0-no 1-si');
	readln (op);
	if(op=0) then
	begin
		DM.CuentaNro:=000000;
		DM.ClienteNro:=000000;
		DM.TipoCuenta:='CC';
		DM.Saldo:=000.00;
		DM.Activo:='N';
		write(Mov, DM);
		break;
	end;
end;
close(Mov);
end.