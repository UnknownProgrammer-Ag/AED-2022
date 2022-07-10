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
clientes: file of DATOSCL;
DT: DATOSCL;
op: integer;

procedure cargarCuenta();
begin
	WriteLn('Ingrese el numero de cuenta');
	readln(DT.CuentaNro);
	WriteLn('Ingrese el codigo de cliente');
	readln(DT.ClienteNro);
	WriteLn('Ingrese el tipo de cuenta, Ahorro=CA; Corriente=CC');
	readln(DT.TipoCuenta);
	WriteLn('Ingrese el saldo');
	readln(DT.Saldo);
	WriteLn('Ingrese si esta activa, S o N');
	readln(DT.Activo);
	write(clientes, DT);
end;
begin
assign(clientes, 'archivomae.dat');
rewrite(clientes);
while True do 
begin 
	cargarCuenta();
	WriteLn (' ¿Desea cargar otra cuenta? 0-no 1-si');
	readln (op);
	if(op=0) then
	begin
		DT.CuentaNro:=000000;
		DT.ClienteNro:=000000;
		DT.TipoCuenta:='CC';
		DT.Saldo:=000.00;
		DT.Activo:='N';
		write(clientes, DT);
		break;
	end;
end;
close(clientes);
end.