type larik = array [1..100] of integer; 

function SequentialSearch(A:larik; N:integer; X:integer) : integer;
Var 
 i:integer; 
begin 
 i:=1; 
    while (i<N) and (A[i] <> X) do i:= i + 1; 
    if (A[i] <> X) then SequentialSearch:=0 
    else SequentialSearch:=i; 
end; 

var
    data: larik;
    x, i: integer;
begin
    for i := 1 to 100 do begin
        if i=1 then data[i]:=1
        else data[i]:=random(300);
        write(data[i], ' ')
    end;
    writeln;
    write('Data yang dicari: '); readln(x);
    writeln;
    if (SequentialSearch(data, length(data), x)=0) then
        writeln('Data tidak ada')
    else
        writeln('Data berada pada indeks ke: ', SequentialSearch(data, length(data), x));
end.