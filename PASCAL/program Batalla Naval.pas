program Batalla_Naval;
uses CRT;

var

Global,Interno:array [1..10,1..10] of char;
i,j,cont,Est,B4,B3,B2:integer;
J1,J2:string;

	procedure MostrarGlobal;
	begin
		for i:=1 to 10 do
		begin	
			writeln('[',Global[i,1],'][',Global[i,2],'][',Global[i,3],'][',Global[i,4],'][',Global[i,5],'][',Global[i,6],'][',Global[i,7],'][',Global[i,8],'][',Global[i,9],'][',Global[i,10],']');
		end
	end;

	procedure IniciarArrays;
	begin

		for i:=1 to 10 do
		begin
			for j:=1 to 10 do
			begin
				Global[i,j]:='?';
			end
		end;
		
		for i:=1 to 10 do
		begin
			for j:=1 to 10 do
			begin
				Interno[i,j]:=' ';
			end
		end
	end;
	procedure ConstruccionDeNave;
	begin
		repeat
			writeln('Ingrese coordenada i (Jugador 1: 1 a 5, Jugador 2: 6 a 10)');
			readln(i);
			writeln('Ingrese coordenada j (1 a 10)');
			readln(j);
			if (Interno[i,j]<>' ') then
				writeln('Error, ya existe un elemento')
		until (Interno[i,j]=' ');
	end;

	procedure CargadeMapa;
	begin
		writeln('Tiene 5 estructuras por colocar. Una de 4, dos de 3 y dos de 2');
		cont:=5;
		B4:=1;
		B3:=2;
		B2:=2;
		while cont>0 do
		begin
			writeln('Seleccione cual nave quiere construir (4,3,2)');
			readln(Est);
			
			if (Est=4) then
			begin
				if (B4>0) then
				begin
					cont:=cont-1;
					for Est:=1 to 4 do
					begin
						ConstruccionDeNave;
						Interno[i,j]:='@';
					end;
					B4:=B4-1;	
				end
				else
				begin
					if B4=0 then
						writeln('No tiene permitido construir mas estructuras de 4');				
				end
			end
			else 
			begin
				if (Est=3) then
				begin
					if (B3>0) then
					begin
						cont:=cont-1;
						for Est:=1 to 3 do
						begin
							ConstruccionDeNave;
							Interno[i,j]:='$';
						end;
						B3:=B3-1;
					end
					else
					begin
						if B3=0 then
							writeln('No tiene permitido construir mas estructuras de 3');
					end
				end	
				else
				begin
					if (Est=2) then
					begin
						if (B2>0) then
						begin
							cont:=cont-1;
							for Est:=1 to 2 do
							begin
								ConstruccionDeNave;					
								Interno[i,j]:='#';
							end;
							B2:=B2-1;
						end
						else
						begin
							if B2=0	then
								writeln('No tiene permitido construir mas estructuras de 2');
						end
					end
				end
			end
		end
	end;

	procedure TurnoDeAtaque;
	begin
		writeln('Coordenada i de ataque (J1: De 6 a 10; J2: de 1 a 5)');
		readln(i);
		writeln('Coordenada j de ataque (1 a 10)');
		readln(j);
		







	procedure FaseDeJuego;
	begin





begin
	IniciarArrays;

	writeln('BIENVENIDOS A BATALLA NAVAL');
	writeln('PRESIONE ENTER PARA COMENZAR');
	ReadKey;
	ClrScr;
	
	writeln('Identifiquense');
	writeln('Jugador 1: ');
	readln(J1);
	writeln('Jugador 2: ');
	readln(J2);
	ClrScr;

	writeln('MAPA GLOBAL');
	MostrarGlobal;
	delay(2000);
	ClrScr;

	writeln('TURNO DE ',J1);
	writeln('Le corresponde de la fila 1 a la fila 5. POR FAVOR Jugador 2 alejarse de la pantalla');
	CargadeMapa;
	ReadKey;
	ClrScr;

	writeln('TURNO de', J2);
	writeln('Le corresponde de la fila 6 a la fila 10. POR FAVOR Jugador 1 alejarse de la pantalla');
	CargadeMapa;
	ReadKey;
	ClrScr;

	writeln('		FASE DE JUEGO		');
	ReadKey;
	ClrScr;





end.
		