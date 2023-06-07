program sumEvenNumber;
uses crt;

var
    i, n, result, temp: integer;

begin
    clrscr;

    // input jumlah N bilangan yang akan diinput
    write('Masukkan jumlah bilangan N: ');
    readln(n);

    // input bilangan sebanyak N kali
    for i := 1 to n do begin
        write('Masukkan bilangan ke-',i,': ');
        readln(temp);

        // jika input merupakan bilangan genap, maka akan dijumlahkan
        if temp mod 2 = 0 then
            result+=temp;
    end;

    writeln('Jumlah bilangan genap = ', result);
end.