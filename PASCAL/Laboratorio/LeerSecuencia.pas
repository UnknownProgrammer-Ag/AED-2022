program LeerSecuencia;
Uses CRT;
var
AntSustancias:file of char;
Pointer:char;


Begin
	assign(AntSustancias, 'AntSustancias.txt');
	{$I-}
  		reset(AntSustancias);
  	{$I+}
	 if IOResult <> 0 then
	   halt(2);
	 read(AntSustancias, Pointer);

	While not eof(AntSustancias) do
	begin
		write(AntSustancias,Pointer);
		read(AntSustancias,Pointer);

	end;
	readKey();
	close(AntSustancias);
End.