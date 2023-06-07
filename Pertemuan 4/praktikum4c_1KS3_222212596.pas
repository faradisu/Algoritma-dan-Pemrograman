program hariMatkul;
uses crt;

var
    hari, matkul: string;

begin
    clrscr;

    writeln('PROGRAM MATA KULIAH');
    writeln('-------------------');
    write('Hari: ');
    readln(hari);

    case lowercase(hari) of
        'senin': matkul:='Algoritma dan Pemrograman I';
        'selasa': matkul:='Kalkulus';
        'rabu': matkul:='Bahasa Indonesia';
        'kamis': matkul:='Pengantar Teknik Informasi';
        'jumat': matkul:='Bahasa Inggris';
        'sabtu': matkul:='Basis Data';
    else
        exit;
    end;

    writeln('Mata Kuliah: ', matkul);
end.