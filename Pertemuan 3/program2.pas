program StandarDeviasi;
uses crt;

type
    intArray = array of integer;

var
    n, total, i: integer;
    data: intArray;
    rerata, deviasi, total_selisih, rerata_m, z: real;

begin
    clrscr;
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
    writeln('Rata-rata: ', rerata:0:4);
    writeln('Jumlah data (n): ', n);

    for i := 1 to n do
        total_selisih:=total_selisih+sqr(data[i-1]-rerata);

    deviasi := sqrt(total_selisih/(n-1));
    writeln('Standar Deviasi: ', deviasi:0:4);

    write('Nilai rata-rata keseluruhan (m): ');
    readln(rerata_m);
    z:=(rerata-rerata_m)/deviasi;
    writeln('Nilai Tabel (z): ', z:0:4);
end.