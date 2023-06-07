type
    data_mahasiswa = record 
    nim : string[10]; 
    nama : string[25]; 
    alamat : string[20]; 
    nilai : longint; 
    end;

var 
    mahasiswa : array[1..10] of data_mahasiswa; 
    i : integer; 

begin 
    for i:= 1 to 10 do begin 
        writeln('INPUT MAHASISWA KE-', i); 
        with mahasiswa[i] do begin 
            write('  nim    = '); readln(nim); 
            write('  nama   = '); readln(nama); 
            write('  alamat = '); readln(alamat); 
            write('  nilai  = '); readln(nilai); 
        end; 
    end; 
    clrscr;
    
    for i:=1 to 10 do begin 
        writeln('DATA MAHASISWA KE-', i); 
        write('  nim    = '); writeln(mahasiswa[i].nim); 
        write('  nama   = '); writeln(mahasiswa[i].nama); 
        write('  alamat = '); writeln(mahasiswa[i].alamat); 
        write('  nilai  = '); writeln(mahasiswa[i].nilai); 
    end; 
end. 
