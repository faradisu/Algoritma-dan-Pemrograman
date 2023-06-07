program praktikum7b;
uses crt;

var
    i, n, denominator: longword;
    result: real;
    plus: boolean= False;

begin
    clrscr;
    
    { Program akan terus meminta input nilai N hingga
    nilai N merupakan bilangan ganjil positif }
    repeat
        write('Input N (bil. ganjil positif): ');
        readln(n);
    until (n mod 2 = 1);

rogram untuk menceta
    for i := 1 to n do begin
        if i=1 then begin
            write('1');
            result:=i;
        end
        else begin
            if i mod 2 = 1 then begin
                if plus=True then begin
                    write(' + 1/', i);
                    result+=1/i;
                    plus:=False;
                end
                else begin
                    write(' - 1/', i);
                    result-=1/i;
                    plus:=True;
                end;
            end;
        end;
    end;

    write(' = ', result:0:3);
end.