program penugasan1;
uses crt;

const
    MAX=10;
type
    intArray= array [1..MAX] of integer;
var
    n: byte;

function isEmpty():boolean;
begin
    if n=0 then begin
        isEmpty:= true;
    end else
        isEmpty:= false;
end;

procedure inputData(var data: intArray);
var
    addN: word;
    i: byte;
begin
    repeat
        writeln;
        write('  banyak data diinput: '); readln(addN);
        if (n+addN)>MAX then
            writeln('  melebihi batas maksimum data!');
    until (n+addN)<=MAX;

    for i := n+1 to (n+addN) do begin
        write('  data ke-', i,': '); readln(data[i]);
    end;
    n+=addN;
end;

procedure showData(var data: intArray);
var
    i: byte;
begin
    for i := 1 to n do
        write(data[i]:4);
end;

function minData(var data: intArray): integer;
var
    i: byte;
begin
    for i := 1 to n do begin
        if i=1 then
            minData:=data[i]
        else begin
            if data[i]<minData then
                minData:=data[i];
        end;
    end;
end;

function maxData(var data: intArray): integer;
var
    i: byte;
begin
    for i := 1 to n do begin
        if i=1 then
            maxData:=data[i]
        else begin
            if data[i]>maxData then
                maxData:=data[i];
        end;
    end;
end;

function avgData(var data: intArray): real;
var
    i: byte;
    sum: integer=0;
begin
    for i := 1 to n do
        sum+=data[i];
    avgData:=sum/n;
end;

var
    choice: byte;
    myData: intArray;
begin
    clrscr;
    writeln('SELAMAT DATANG DI APLIKASI STATISTIK SEDERHANA');
    repeat
        writeln('Silahkan pilih menu berikut:');
        writeln('  1. Input data');
        writeln('  2. Tampilkan semua data');
        writeln('  3. Tampilkan data terkecil');
        writeln('  4. Tampilkan data terbesar');
        writeln('  5. Tampilkan rata-rata');
        writeln('  6. Reset data');
        writeln('  7. Keluar');
        write('=> '); readln(choice);
        clrscr;

        case choice of
            1:  begin
                    writeln('== INPUT DATA ==');
                    writeln('banyak data ', n, '/10');
                    inputData(myData);
                end;
            2:  begin
                    writeln('== MENAMPILKAN DATA ==');
                    if isEmpty()=true then
                        writeln('tidak ada data')
                    else
                        showData(myData);
                end;
            3:  begin
                    writeln('== DATA TERKECIL ==');
                    if isEmpty()=true then
                        writeln('tidak ada data')
                    else
                        writeln(minData(myData));
                end;
            4:  begin
                    writeln('== DATA TERBESAR ==');
                    if isEmpty()=true then
                        writeln('tidak ada data')
                    else
                        writeln(maxData(myData));
                end;
            5:  begin
                    writeln('== RATA-RATA ==');
                    if isEmpty()=true then
                        writeln('tidak ada data')
                    else
                        writeln(avgData(mydata):0:2);
                end;
            6:  begin
                    n:=0;
                    writeln('data telah direset');
                end;
            7: exit;
            else begin
                writeln('Input invalid!!!');
                continue;
            end;;
        end;
        writeln;
        write('Enter to continue...');
        readln;
        clrscr;
    until (False);
end.