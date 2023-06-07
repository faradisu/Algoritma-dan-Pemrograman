Program penjum_matriks; 
var 
    a,b,c: array[1..3, 1..3, 1..3] of integer; 
    i,j,k: integer; 
begin 
    writeln('buat rubik A'); 
    for i:=1 to 3 do 
        for j:=1 to 3 do 
            for k:=1 to 3 do begin 
                write('[',i,',',j,',',k,']='); 
                readln(a[i,j,k]); 
            end; 
    writeln;
    writeln('buat rubik B'); 
    for i:=1 to 3 do 
        for j:=1 to 3 do 
            for k:=1 to 3 do begin 
                write('[',i,',',j,',',k,']='); 
                readln(b[i,j,k]); 
            end; 
    writeln;
    writeln('Rubik C = A+B'); 
    for i:=1 to 3 do
        for j := 1 to 3 do
            for k:=1 to 3 do begin
                write('[',i,',',j,',',k,']='); 
                writeln(a[i,j,k]+b[i,j,k]); 
            end;
readln; 
end.