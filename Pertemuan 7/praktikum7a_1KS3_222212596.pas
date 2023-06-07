program dividedByThree;
uses crt;

var
    i: integer;

begin
    clrscr;

    for i := 1 to 100 do
        if i mod 3 = 0 then
            writeln(i);
end.