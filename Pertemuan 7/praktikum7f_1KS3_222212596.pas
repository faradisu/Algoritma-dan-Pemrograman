program praktikum7f;
uses crt;

var
    i, j, n: integer;

begin
    clrscr;

    write('Masukkan N: ');
    readln(n);

    for i := 1 to n do begin
        for j := n-i downto 0 do
            write(i:2);
        writeln;
    end;
end.