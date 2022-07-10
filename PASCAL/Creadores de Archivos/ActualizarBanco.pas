program BancoPascal;
uses CRT,sysutils;
const
HV=2147483647;
type
DATOSCL=record
	CuentaNro:longint;
	ClienteNro:longint;
	TipoCuenta:string[2];
	Saldo:real;
	Activo:char;
	end;
var
clientes,Mov,NuevoCliente:file of DATOSCL;
DT,DM:DATOSCL;
tot,Alt,Baj,Modf,TotNoMov,CC,CA:integer;
Saldos:real;

Procedure leer_mae();
begin
	read(clientes,DT);
	if EOF(clientes) then
	begin
		DT.CuentaNro:=HV;
	end;
end;

Procedure leer_mov();
begin
	read(Mov,DM);
	if EOF(Mov) then
	begin
		DM.CuentaNro:=HV;
	end;
end;

Procedure CACCCont();
begin
	If (DT.TipoCuenta = 'CC') then 
	begin
		CC:=CC+1;
	end
	else
	begin
		CA:=CA+1;
	end;
end;

begin
assign(clientes, 'archivomae.dat');
{$I-}
reset(clientes);
{$I+}
if IOResult <> 0 then
	halt(2);
	
assign(Mov, 'archivomov.dat');
{$I-}
reset(Mov);
{$I+}
if IOResult <> 0 then
	halt(2);

assign(NuevoCliente, 'archivosal.dat');
rewrite(NuevoCliente);

leer_mae();
leer_mov();
 
tot:=0;
Alt:=0;
Baj:=0;
Modf:=0;
Saldos:=0;
CA:=0;
CC:=0;
TotNoMov:=0;
TextBackground(7);
ClrScr;
While (DT.CuentaNro <> HV) or (DM.CuentaNro <> HV) Do
begin
	//Creacion de Cuenta (ALTA)
	if (DT.CuentaNro > DM.CuentaNro) then
	begin
		write(NuevoCliente,DM); 
		TextColor(0);
		Writeln('                                   Se ha creado la cuenta correspondiente al cliente: ', DM.ClienteNro);
		Writeln();
		TextColor(Blue);
		Writeln('                           ------------------------------------------------------------------------');
		Writeln();
		if DM.TipoCuenta = 'CC' then
		begin
			CC:=CC+1;
		end
		else
		begin
			CA:=CA+1;
		end;
		Saldos:=Saldos+DM.Saldo; 
		leer_mov();
		Alt:=Alt+1;
	end
	else
	begin
		if (DT.CuentaNro=DM.CuentaNro) then
		begin
			if (DM.Activo = 'N') then //Baja
			begin
				Baj:=Baj+1; //Contador de Baja
				leer_mae();
				leer_mov ();
			end
			else // Está activa y modifica el saldo
			begin
				Saldos:=Saldos+(ABS(DT.Saldo-DM.Saldo)); 
				DT.Saldo:=DM.Saldo;
				write(NuevoCliente,DT);
				CACCCont();
				leer_mae();
				leer_mov();
				Modf:=Modf+1; //Contador de Modificacion
			end;
		end
		else//No existe Moviento
		begin
			write(NuevoCliente,DT);
			CACCCont();
			TotNoMov:=TotNoMov+1;
			leer_mae();
		end;
	end;
tot:=tot+1;
end;
Delay(10000);
ClrScr;
TextBackground(7);

//Se muestra por pantalla
TextColor(Blue);
Gotoxy(30,1);
Writeln('------------------------------------------------------------------');
TextColor(0);
Gotoxy(40,2);
Writeln('Porcentajes de cuentas: |Bajas|Altas|Modificadas|');
TextColor(2);
Gotoxy(63,3);
Writeln('  |',((Baj*100)div tot),'|  |',((alt*100)div tot),'|     |',((modf*100)div tot),'|');
Writeln();
TextColor(Blue);
Gotoxy(30,4);
Writeln('------------------------------------------------------------------');
TextColor(0);
Gotoxy(54,5);
Writeln('Total Sin Movimientos');
TextColor(2);
Gotoxy(63,6);
Writeln('',TotNoMov);
Writeln();
TextColor(Blue);
Gotoxy(30,7);
Writeln('------------------------------------------------------------------');
TextColor(0);
Gotoxy(49,8);
Writeln('Promedio de modificaciones Saldos');
TextColor(2);
Gotoxy(57,9);
Writeln((Saldos/(Alt+Modf)):10:2);
Writeln();
TextColor(Blue);
Gotoxy(30,10);
Writeln('------------------------------------------------------------------');
TextColor(0);
Gotoxy(37,11);
Writeln('Cantidad de Cuenta Corriente|Cantidad de Caja de Ahorro ');
TextColor(2);
Gotoxy(55,12);
Writeln('|',CC,'|                 |',CA,'|');
TextColor(Blue);
Gotoxy(30,13);
Writeln('------------------------------------------------------------------');

//Se cierran los archivos
close(clientes);
close(Mov);
close(NuevoCliente);
readln();
end.


