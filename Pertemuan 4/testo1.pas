program Denda_Buku;
uses crt;
var
    jenis : string;
    jumlah, lama : integer;
begin
    clrscr;
    write('Inputkan Jenis Buku(Langka/Biasa): ');
    readln(jenis);
    write('Inputkan Jumlah Pinjaman: ');
    readln(jumlah);

    if(jumlah>3)then
    begin
        writeln('Maaf Anda Tidak Memenuhi Syarat Untuk Meminjam');
        readln;
        exit;
    end;

    write('Inputkan Lama Pinjaman: ');
    readln(lama);

    if(jenis='Langka')then
    begin
        if(lama>=11)then
            writeln('Anda dikenakan denda sebesar: Rp ',((lama-10)*5000+7500)*jumlah)
        else if(lama>=8)then
            writeln('Anda dikenakan denda sebesar: Rp ',((lama-7)*2500+4000)*jumlah)
        else if(lama>=4)then
            writeln('Anda dikenakan denda sebesar: Rp ',((lama-3)*1000)*jumlah);
    end;

    if(jenis='Biasa')then
    begin
        if(lama>7)then
            writeln('Anda dikenakan denda sebesar: Rp ',((lama-7)*500)*jumlah);
    end;

    readln;
end.