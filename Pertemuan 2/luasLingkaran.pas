program konversiSuhu;
uses crt;

var
    r, luas: real;

begin
    clrscr;
    
    writeln('Mencari Luas Lingkaran');
    writeln('======================');
    write('Panjang jari-jari (cm) = ');
    readln(r);

    luas:=22/7*r*r;
    writeln('Luas adalah (cm2) = ', luas:0:2);
end.