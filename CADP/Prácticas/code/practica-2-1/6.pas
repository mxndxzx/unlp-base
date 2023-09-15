program ej6;
procedure nros (num: integer; var max: integer);
	begin
		max := -1;
		repeat
			writeln('Ingrese un numero: ');
			read(num);
			if ((num > max) and (num mod 2 = 0)) then
				max := num;
		until (num < 0)
	end;
var
	num: integer;
    max: integer;
begin
	nros(num,max);
	writeln('El numero más alto fue ', max);
end.