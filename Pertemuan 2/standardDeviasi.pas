program StandarDeviasi;
uses crt;

type
    intArray = array of integer;

var
    n, total, i: integer;
    data: intArray;
    rerata, deviasi, total_selisih: real;

begin
    write('Jumlah data: ');
    readln(n);
    setlength(data,n);

    for i := 1 to n do
    begin
        write('Input data ke-',i,': ');
        readln(data[i-1]);
        total:=total+data[i-1];
    end;

    rerata:=total/n;

    for i := 1 to n do
        total_selisih:=total_selisih+sqr(data[i-1]-rerata);

    deviasi := sqrt(total_selisih/n);
    writeln('Standar Deviasi: ', deviasi:0:4);
end.