program selectionMenurun;
uses crt;

type larik = array [1..100] of integer; 
procedure SelectionSort(var data:larik; n:integer); 
var  
    i, j, max, temp:integer; 
begin 
    for i:=1 to n-1 do begin 
        max:=i; 
        for j:= i+1 to n do 
            if data[j] > data[max] then max:=j; 
        Temp:=data[i];
        data[i]:=data[max]; 
        data[max]:=temp;
        for j := 1 to n do
            write(data[j],' ');
        writeln;
    end; 
end;

procedure showData(data: larik; n: integer);
var
    i: integer;
begin
    for i := 1 to n do
        write(data[i], ' ');
end;

var
    myData: larik;
    i: integer;
    n: integer;
begin
    clrscr;
    write('Banyak data: '); readln(n);
    writeln('INPUT DATA');
    for i := 1 to n do begin
        write('Data ke-', i,': '); readln(myData[i]);
    end;
    writeln;
    writeln('DATA AWAL'); showData(myData, n);
    writeln;
    writeln;
    writeln('PROSES SORTING');
    SelectionSort(myData, n);
    writeln;
    writeln('DATA SETELAH DIURUTKAN DARI TERBESAR'); showData(myData, n);
end.