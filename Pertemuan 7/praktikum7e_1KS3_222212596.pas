program praktikum7e;
uses crt;

var
    i, j, n: integer;

begin
    clrscr;

    write('Masukkan N: ');
    readln(n);

    for i := 1 to n do begin
        for j := 1 to n-1 do
            writeln(i, ' ',j);
    end;
end.