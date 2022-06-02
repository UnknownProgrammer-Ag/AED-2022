program ej0;
var
monto: real;
const
promo=1000;
descount=0.85;
begin
writeln('Por favor ingrese  el monto de compra');
read(monto);
if monto>promo then
	begin
		monto:=monto*descount
	end;
Writeln('Monto a pagar',monto:20:2);

end.