program praktikum7b;
uses crt, math;

var
    i, n, denominator: longword;
    result: real= 1;

begin
    clrscr;
    
    { Program akan terus meminta input nilai N hingga
    nilai N merupakan bilangan ganjil positif }
    repeat
        write('Input N (bil. ganjil positif): ');
        readln(n);
    until (n mod 2 = 1);

    write('1');

    for i := 2 to ceil(n/2) do begin
        denominator:=2*i-1;
        if i mod 2 = 0 then begin
            write(' - 1/', denominator);
            result-=1/denominator;
        end
        else begin
            write(' + 1/', denominator);
            result+=1/denominator;
        end;
    end;

    write(' = ', result:0:3);
end. 