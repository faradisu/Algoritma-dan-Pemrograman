Program penjum_matriks; 
type
    matrix = array[1..3, 1..3] of real;
var 
    a,b,c: matrix; 
    i,j: integer; 
begin 
    writeln('buat matriks A'); 
    for i:=1 to 3 do 
        for j:=1 to 3 do begin 
            write('[',i,',',j,']='); 
            readln(a[i,j]); 
        end; 
    writeln;
    writeln('buat matriks B'); 
    for i:=1 to 3 do 
        for j:=1 to 3 do begin 
            write('[',i,',',j,']='); 
            readln(b[i,j]); 
        end; 
    writeln;
    writeln('Matriks A'); 
    for i:=1 to 3 do begin 
        for j:=1 to 3 do 
            write(a[i,j]:0:2,' '); 
        writeln; 
    end; 
    writeln;
    writeln('Matriks B'); 
    for i:=1 to 3 do begin 
        for j:=1 to 3 do 
            write(b[i,j]:0:2,' '); 
        writeln; 
    end; 
    writeln;
    writeln('Matriks C = A+B'); 
    for i:=1 to 3 do begin 
        for j:=1 to 3 do 
            write((a[i,j]+b[i,j]):0:2,' '); 
        writeln; 
    end; 
readln; 
end.