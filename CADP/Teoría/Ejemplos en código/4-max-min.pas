program ejemplo4;
var
    input,max:real;
begin
    max := 0;
    read(input);
    while (input <> 0) do begin
        if (input > max) then
            max:= input;
        read(input)
    end;
    write(max);
end.