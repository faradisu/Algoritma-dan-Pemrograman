program penugasanPertemuan13;
uses crt, sysutils;

type
    scoreRange = 0..100;
    studentType = record
        nim: string;
        name: string;
        clss: string;
        score: scoreRange;
    end;
var
    myStudent: array of studentType;
    size: integer= 0;

procedure inputData(num: integer);
var
    i: integer;
begin
    size+=num;
    setLength(myStudent, size);
    for i := 0 to (num-1) do begin
        writeln(i+1,' ~');
        with myStudent[size-num+i] do begin
            write('  Nama  : '); readln(name);
            write('  NIM   : '); readln(nim);
            write('  Kelas : '); readln(clss);
            write('  Nilai : '); readln(score);
        end;
    end;
end;

procedure showData();
var
    i: integer;
begin
    for i := 0 to (size-1) do begin
        writeln(i+1,' ~');
        with myStudent[i] do begin
            writeln('  Nama  : ', upperCase(name));
            writeln('  NIM   : ', nim);
            writeln('  Kelas : ', clss);
            writeln('  Nilai : ', score);
        end;
    end;
end;

function minScore():scoreRange;
var
    i: integer;
begin
    minScore:=0;
    for i := 0 to (size-1) do begin
        with myStudent[i] do begin
            if i=0 then
                minScore:=score;
            if score<minScore then
                minScore:=score
        end;
    end;
end;

function maxScore():scoreRange;
var
    i: integer;
begin
    maxScore:=0;
    for i := 0 to (size-1) do begin
        with myStudent[i] do begin
            if i=0 then
                maxScore:=score;
            if score>maxScore then
                maxScore:=score
        end;
    end;
end;

function avgScore():real;
var
    i: integer;
    sum: integer=0;
begin
    for i := 0 to (size-1) do
        sum+=myStudent[i].score;
    avgScore:=sum/size;
end;

function findScore(studName: string):shortInt;
var
    i: integer;
begin
    findScore:=-1;
    for i := 0 to (size-1) do begin
        if compareText(myStudent[i].name, studName)=0 then
            findScore:=myStudent[i].score;
    end;
end;

procedure sortName();
var
    i,j: integer;
    temp: studentType;
begin
    for i := 0 to (size-2) do begin
        for j := 0 to (size-2-i) do begin
            if compareText(myStudent[j].name, myStudent[j+1].name)>0 then begin
                temp:= myStudent[j];
                myStudent[j]:= myStudent[j+1];
                myStudent[j+1]:= temp;
            end;
        end;
    end;        
end;

procedure sortScore();
var
    i,j: integer;
    temp: studentType;
begin
    for i := 0 to (size-2) do begin
        for j := 0 to (size-2-i) do begin
            if myStudent[j].score<myStudent[j+1].score then begin
                temp:= myStudent[j];
                myStudent[j]:= myStudent[j+1];
                myStudent[j+1]:= temp;
            end;
        end;
    end;        
end;

var
    choice: byte;
    addN: word;
    name: string;
begin
    repeat
        clrscr;
        writeln('Selamat Datang di Program Entri Mahasiswa');
        writeln('1. Input Data');
        writeln('2. Tampilkan Data');
        writeln('3. Nilai Alpro Terkecil');
        writeln('4. Nilai Alpro Terbesar');
        writeln('5. Rata-rata Nilai Alpro');
        writeln('6. Cari Nilai Mahasiswa');
        writeln('7. Urutkan Berdasarkan Nama');
        writeln('8. Urutkan Berdasarkan Nilai Alpro');
        writeln('9. Keluar');
        write('Pilihan Anda (1-9): '); readln(choice);
        writeln;

        case choice of
            1:  begin
                    clrscr;
                    writeln('INPUT DATA');
                    write('Banyak data yang ingin diinput: '); readln(addN);
                    inputData(addN);
                end;
            2:  begin
                    clrscr;
                    writeln('MENAMPILKAN DATA');
                    showData();
                end;
            3: writeln('=> Nilai Minimum: ', minScore());
            4: writeln('=> Nilai Maksimum: ', maxScore());
            5: writeln('=> Rata-rata Nilai: ', avgScore():0:2);
            6:  begin
                    write('Masukkan nama mahasiswa: '); readln(name);
                    if findScore(name)=-1 then
                        writeln('Data Tidak Ditemukan!')
                    else
                        writeln('Data Ditemukan! Nilai Alpro ', upperCase(name),' = ', findScore(name));
                end;
            7:  begin
                    sortName();
                    writeln('Data Telah Diurutkan Berdasarkan Nama!');
                end;
            8:  begin
                    sortScore();
                    writeln('Data Telah Diurutkan Berdasarkan Nilai Alpro!');
                end;
            else continue;
        end;
        writeln;
        write('enter to continue...'); readln;
    until (False);
end.