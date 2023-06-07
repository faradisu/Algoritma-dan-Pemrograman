program penugasan1;
uses crt;

const
    MAX=9;
type
    intArray= array [0..MAX] of integer;

function inputData(): intArray;
var
    i: byte;
begin
    for i := 0 to MAX do begin
        write('  data ke-', i+1,': '); readln(inputData[i]);
    end;
end;

procedure showData(data: intArray);
var
    i: byte;
begin
    for i := 0 to MAX do
        writeln(data[i]:9);
end;

function minData(data: intArray): integer;
var
    i: byte;
begin
    for i := 0 to MAX do begin
        if i=0 then
            minData:=data[i]
        else begin
            if data[i]<minData then
                minData:=data[i];
        end;
    end;
end;

function maxData(data: intArray): integer;
var
    i: byte;
begin
    for i := 0 to MAX do begin
        if i=0 then
            maxData:=data[i]
        else begin
            if data[i]>maxData then
                maxData:=data[i];
        end;
    end;
end;

function avgData(data: intArray): real;
var
    i: byte;
    sum: integer=0;
begin
    for i := 0 to MAX do
        sum+=data[i];
    avgData:=sum/(MAX+1);
end;

var
    choice: byte;
    myData: intArray;
begin
    clrscr;
    writeln('SELAMAT DATANG DI APLIKASI STATISTIK SEDERHANA');
    writeln('== INPUT DATA ==');
    myData:= inputData();

    repeat
        clrscr;
        writeln('SELAMAT DATANG DI APLIKASI STATISTIK SEDERHANA');
        writeln('Silahkan pilih menu berikut:');
        writeln('  1. Input data baru');
        writeln('  2. Tampilkan semua data');
        writeln('  3. Tampilkan data terkecil');
        writeln('  4. Tampilkan data terbesar');
        writeln('  5. Tampilkan rata-rata');
        writeln('  6. Keluar');
        write('=> '); readln(choice);
        clrscr;

        case choice of
            1:  begin
                    writeln('== INPUT DATA ==');
                    myData:= inputData();
                end;
            2:  begin
                    writeln('== MENAMPILKAN DATA ==');
                    showData(myData);
                end;
            3:  begin
                    writeln('== DATA TERKECIL ==');
                    writeln(minData(myData):9);
                end;
            4:  begin
                    writeln('== DATA TERBESAR ==');
                    writeln(maxData(myData):9);
                end;
            5:  begin
                    writeln('== RATA-RATA ==');
                    writeln(avgData(mydata):9:2);
                end;
            6: exit;
            else continue;
        end;
        writeln;
        write('Enter to continue...');
        readln;
    until (False);
end.