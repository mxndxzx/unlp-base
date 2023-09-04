program ejemplo4;
var
    prom,max,min:integer;
begin
    max := -1;
    min := 11;
    read(prom);
    while (prom <> 0) do begin
        if (prom >= max) then
            max:= prom
        else if (prom <= min) then
            min := prom;
        read(prom)
    end;
    write(max,min);
end.