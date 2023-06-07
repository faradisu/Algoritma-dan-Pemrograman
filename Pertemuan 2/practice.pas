program hitungrerata;
uses crt;

var
    n, total, i, data: integer;
    rerata: real;

begin
    write('Jumlah data: ');
    readln(n);

    total:=0;
    for i := 1 to n do
    begin
        write('Input data ke-',i,': ');
        readln(data);
        total:=total+data;
    end;

    rerata:=total/n;
    writeln('Total: ', total);
    writeln('Rata-rata: ', rerata:0:2);
end.