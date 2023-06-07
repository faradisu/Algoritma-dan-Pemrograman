program dendaPerpustakaan;
uses crt;

const
    maxPinjam = 3;

type
    duit = array of longword;

var
    n, i: byte;
    klpBuku: char;
    waktu: word;
    totalDenda: longword;
    denda: duit;

begin
    clrscr;
    repeat
        write('Jumlah peminjaman (max 3): ');
        readln(n);
    until (n<=maxPinjam);
    writeln;
    
    setLength(denda, n);

    for i := 1 to n do
    begin
        writeln('BUKU KE-', i);
        write('  Buku langka? (y/n): ');
        readln(klpBuku);
        write('  Lama peminjaman: ');
        readln(waktu);

        denda[i]:=0;

        if klpBuku='y' then
        begin
            if waktu>3 then
            begin
                if waktu>7 then
                begin
                    if waktu>10 then
                    begin
                        denda[i]:=(waktu-10)*5000;
                        waktu:=10;
                    end;
                    denda[i]:=denda[i]+(waktu-7)*2500;
                    waktu:=7;
                end;
                denda[i]:=denda[i]+(waktu-3)*1000;
            end
            else
            begin
                denda[i]:=0;
            end;
        end
        else
        begin
            if waktu>7 then
                denda[i]:=500*(waktu-7)
            else
                denda[i]:=0;
        end;
    end;
    
    writeln;
    writeln('DENDA KETERLAMBATAN');
    for i := 1 to n do
    begin
        writeln('Buku ke-',i,': Rp',denda[i]);
        totalDenda:=totalDenda+denda[i];
    end;
    writeln('Total: Rp', totalDenda);
end.