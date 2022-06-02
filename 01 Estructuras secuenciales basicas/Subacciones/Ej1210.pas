program Ej1210;
var
	X:integer;
	procedure mostrar_nro(N:integer);
	begin
		case N of
			0:
			begin
			   writeln('*****');
			   writeln('*   *');
			   writeln('*   *');
			   writeln('*   *');
			   writeln('*****');
			end;
			1: 
			begin
			   writeln('    *');
			   writeln('    *');
			   writeln('    *');
			   writeln('    *');
			   writeln('    *');
			end;   
			2:
			begin	
			   writeln('*****');
			   writeln('    *');
			   writeln('*****');
			   writeln('*    ');
			   writeln('*****');
			end;   
			3: 
			begin
			   writeln('*****');
			   writeln('    *');
			   writeln('*****');
			   writeln('    *');
			   writeln('*****');
			end;
			4:
			begin
			   writeln('*   *');
			   writeln('*   *');
			   writeln('*****');
			   writeln('    *');
			   writeln('    *');
			end;
			5: 
			begin  
			   writeln('*****');
			   writeln('*    ');
			   writeln('*****');
			   writeln('    *');
			   writeln('*****');
			end;
			6: 
			begin   
			   writeln('*****');
			   writeln('*    ');
			   writeln('*****');
			   writeln('*   *');
			   writeln('*****');
			end;
			7: 
			begin   
			   writeln('*****');
			   writeln('    *');
			   writeln('    *');
			   writeln('    *');
			   writeln('    *');
			end;
			8: 
			begin   
			   writeln('*****');
			   writeln('*   *');
			   writeln('*****');
			   writeln('*   *');
			   writeln('*****');
			end;
			9: 
			begin
			   writeln('*****');
			   writeln('*   *');
			   writeln('*****');
			   writeln('    *');
			   writeln('*****');
			end;
		end;
	end;
begin
writeln('Insert a number');
read(input,X);
	while X<10 do
	begin
		mostrar_nro(X);
		writeln('Insert another number or write 10');
		read(input,X);
	end;
end.
