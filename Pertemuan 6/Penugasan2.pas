Program Contoh73; 
uses crt;
var 
    i,j,n:integer; 
begin 
    clrscr;
    write('Masukkan N: ');
    readln(n);

    for i:=n downto 1 do 
    begin 
        for j:=1 to i do 
            write('*'); 
        writeln;
    end;
end.