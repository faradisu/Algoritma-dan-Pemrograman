type 
    pegawai = record 
        nama: string[20]; 
        tglmasuk: record 
            tgl : 1..31; 
            bln : 1..12; 
            thn : integer; 
        end; 
        alamat : record 
            jalan : string[20]; 
            kota : string[10]; 
        end; 
        nilaipeg : record 
            pokok,tunjangan,lembur : real; 
        end; 
    end; 

var 
    datapegawai : array [1..100] of pegawai; 
    n : byte;

begin
    write('INPUT DATA PEGAWAI KE-'); readln(n);
    with datapegawai[n] do begin
        write('Nama  :'); readln(nama);
        with tglmasuk do begin
            write('Tanggal Masuk');
            write(' tanggal : '); readln(tgl);
            write(' bulan   :'); readln(bln);
            write(' tahun   :'); readln(thn);
        end;
        write('Alamat Pegawai');
        write(' jalan : '); readln(alamat.jalan);
        write(' kota  :'); readln(alamat.kota);
        write('Nilai Pegawai  :'); readln(nama);
        write(' pokok     : '); readln(nilaipeg.tgl);
        write(' tunjangan :'); readln(nilaipeg.bln);
        write(' lembur    :'); readln(nilaipeg.thn);
    end;
    clrscr;
    write('DATA PEGAWAI KE-'); readln(n);
    with datapegawai[n] do begin
        writeln('Nama  :', nama);
        with tglmasuk do begin
            write('Tanggal Masuk: ', tgl,'/',bln,'/',thn);
        end;
        write('Alamat Pegawai : ',alamat.jalan,', ');
        write(' jalan : '); readln();
        write(' kota  :'); readln(alamat.kota);
        write('Nilai Pegawai  :'); readln(nama);
        write(' pokok     : '); readln(nilaipeg.tgl);
        write(' tunjangan :'); readln(nilaipeg.bln);
        write(' lembur    :'); readln(nilaipeg.thn);
    end;

    // for i := 1 to n do
    // begin
    //     writeln('INPUT DATA PEGAWAI KE-', i);
    //     with datapegawai[i] do begin
            
    //     end;
    // end;
end.