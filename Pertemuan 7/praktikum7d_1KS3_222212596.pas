program studentAgeCounter;
uses crt;

var
    i, n, age: integer;
    ageClass: array [1..5] of byte; // Kelompok umur 17, 18, 19, 20, dan lainnya

begin
    clrscr;
    
    write('Masukkan jumlah mahasiswa: ');
    readln(n);

    for i := 1 to n do begin
        write('Masukkan usia mahasiswa ke-',i,': ');
        readln(age);

        case age of
            17: ageClass[1]+=1; // indeks 1 untuk menyimpan jumlah mahasiswa berumur 17 tahun
            18: ageClass[2]+=1; // indeks 2 untuk menyimpan jumlah mahasiswa berumur 18 tahun
            19: ageClass[3]+=1; // indeks 3 untuk menyimpan jumlah mahasiswa berumur 19 tahun
            20: ageClass[4]+=1; // indeks 4 untuk menyimpan jumlah mahasiswa berumur 20 tahun
            else ageClass[5]+=1;    // indeks 5 untuk menyimpan jumlah mahasiswa kelompok umur lainnya
        end;
    end;

    // menampilkan jumlah mahasiswa tiap usia
    for i := 1 to 4 do
        writeln('Jumlah mahasiswa berusia ', i+16, ' tahun = ', ageClass[i]);
    
    writeln('Jumlah mahasiswa berusia selain itu = ', ageClass[5]);
end.