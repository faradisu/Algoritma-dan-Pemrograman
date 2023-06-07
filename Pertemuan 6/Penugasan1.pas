Program Contoh74;
uses crt;

var 
    i, j, length, width: integer; 
    symbol: char;

begin
    clrscr;

    write('Panjang  : ');
    readln(length);
    write('Lebar    : ');
    readln(width);
    write('Karakter : ');
    readln(symbol);
    writeln;

    for i:=1 to width do 
    begin 
        for j:=1 to length do
        begin 
            if (i=1) or (i=width) then
                write(symbol:2)
            else
            begin
                if (j=1) or (j=length) then
                    write(symbol:2)
                else
                    write(' ':2);
            end;
        end;
        writeln;
    end;

end.