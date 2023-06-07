program dendaPerpustakaan;
uses crt;

const
    maxPinjam = 3;

var
    n, i, klpBuku: byte;
    waktu: word;
    denda: longword;
    totalDenda: longword= 0;

begin
    clrscr;
    
    writeln('PROGRAM DENDA PERPUSTAKAAN');
    writeln('--------------------------');
    writeln('1. Langka');
    writeln('2. Non Langka');
    write('Kelompok Buku: ');
    readln(klpBuku);

    writeln;
    repeat
        write('Jumlah peminjaman (max 3): ');
        readln(n);
    until (n<=maxPinjam);

    writeln;
    for i := 1 to n do
    begin
        writeln('BUKU-', i);
        write('  Lama peminjaman buku-', i,': ');
        readln(waktu);

        denda:=0;

        if klpBuku=1 then
        begin
            if waktu>3 then
            begin
                if waktu>7 then
                begin
                    if waktu>10 then
                    begin
                        denda:=(waktu-10)*5000;
                        waktu:=10;
                    end;
                    denda:=denda+(waktu-7)*2500;
                    waktu:=7;
                end;
                denda:=denda+(waktu-3)*1000;
            end;
        end
        else
        begin
            if waktu>7 then
                denda:=500*(waktu-7);
        end;

        totalDenda:=totalDenda+denda;
        writeln('  Denda: Rp ',denda);
    end;
    
    writeln('TOTAL DENDA: Rp ', totalDenda);
end.