program hargaBayar;
uses crt;

var
    jmlBarang: integer;
    hrgSatuan, pajak, hrgBayar: double;

begin
    clrscr;

    writeln('Menentukan Harga Bayar');
    writeln('======================');
    write('Jumlah Barang = ');
    readln(jmlBarang);
    write('Harga Satuan = Rp.');
    readln(hrgSatuan);
    write('Pajak = Rp.');
    readln(pajak);

    hrgBayar:=jmlBarang*hrgSatuan+pajak;

    writeln('Harga Bayar = Rp.', hrgBayar:0:0);
end.