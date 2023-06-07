program studentAgeCounter;
uses crt;

var
    i, n, age: integer;
    age17, age18, age19, age20, ageOther: byte;

begin
    clrscr;

    write('Masukkan jumlah mahasiswa: ');
    readln(n);

    for i := 1 to n do begin
        write('Masukkan usia mahasiswa ke-',i,': ');
        readln(age);

        case age of
            17: age17+=1;
            18: age18+=1;
            19: age19+=1;
            20: age20+=1;
            else ageOther+=1;
        end;
    end;

    writeln('Jumlah mahasiswa berusia 17 tahun = ', age17);
    writeln('Jumlah mahasiswa berusia 18 tahun = ', age18);
    writeln('Jumlah mahasiswa berusia 19 tahun = ', age19);
    writeln('Jumlah mahasiswa berusia 20 tahun = ', age20);
    writeln('Jumlah mahasiswa berusia selain itu = ', ageOther);
end.
