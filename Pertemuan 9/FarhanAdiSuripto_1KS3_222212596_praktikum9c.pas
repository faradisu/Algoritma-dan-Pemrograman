program penugasan9C;
uses crt, sysutils;

function factorial(n: longword):real;
begin
    if n=0 then
        factorial:=1
    else
        factorial:=n*factorial(n-1);
end;

function permutation(n, r: longword):real;
begin
    permutation:=factorial(n)/factorial(n-r)
end;

function combination(n, r: longword):real;
begin
    combination:=permutation(n, r)/factorial(r)
end;

var
    num1,num2: longword;
    choice: byte;
    result: real;
    text: string;
begin
    clrscr;

    while True do begin
        writeln('-------MENU-------');
        writeln('  1. Faktorial');
        writeln('  2. Permutasi');
        writeln('  3. Kombinasi');
        writeln('  4. Keluar');
        write('Pilihan Anda: ');
        readln(choice);

        if choice=4 then exit
        else begin
            write('|   n: '); readln(num1);
            if choice<>1 then begin
                write('|   r: '); readln(num2);
                
                if num1<num2 then begin
                    writeln('|   n harus lebih besar dari r!');
                    writeln;
                    continue;
                end;
            end;


            case choice of
                1:  begin
                        result:= factorial(num1);
                        text:=concat(IntToStr(num1), '!');
                    end;
                2:  begin
                        result:= permutation(num1,num2);
                        text:=concat(IntToStr(num1), 'P', IntToStr(num2));
                    end;
                3:  begin
                        result:= combination(num1,num2);
                        text:=concat(IntToStr(num1), 'C', IntToStr(num2));
                    end;
            end;
        end;
            
        writeln('|   ', text, ' = ', result:0:2);
        writeln;
    end;
end.