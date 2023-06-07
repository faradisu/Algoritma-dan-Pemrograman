program BonusPegawai;
uses crt;

const
    minKerja=5;
    minUmur=50;

var
    golongan, kerja, umur: byte;
    bonus: longword;

begin
    clrscr;
    writeln('PROGRAM PEMBERIAN BONUS PEGAWAI');
    writeln('-------------------------------');
    writeln('1. Staf');
    writeln('2. Non Staf');
    write('Golongan Pegawai:');
    readln(golongan);
    write('Lama Bekerja: ');
    readln(kerja);
    write('Umur: ');
    readln(umur);

    if kerja>umur then
        exit;

    if golongan=1 then
    begin
        if kerja>=minKerja then
            begin
                if umur>=minUmur then
                    bonus:=1000000
                else
                    bonus:=500000;
            end
        else
            bonus:=300000;
    end
    else
    begin
        if (kerja>=minKerja) and (umur>=minUmur) then
            bonus:=400000;
    end;

    writeln('Bonus Pegawai: Rp ', bonus);

end.