program praktikum7g;
uses crt;

var
    i, j, n: integer;

begin
    clrscr;

    write('Masukkan N: ');
    readln(n);

    for i := 1 to n do begin
        for j := 1 to i do
            write(i:2);
        writeln;
    end;
end.