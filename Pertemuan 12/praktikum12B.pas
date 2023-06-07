program penugasan9B;
uses crt;

function sum(a, b: real):real;
begin
    sum:=a+b
end;

function substract(a, b: real):real;
begin
    substract:=a-b
end;

function multiply(a, b: real):real;
begin
    multiply:=a*b
end;

function divide(a, b: real):real;
begin
    divide:=a/b
end;

function factorial(x:integer):integer; 
begin 
    if x = 1 then factorial := 1 
    else factorial := x * factorial(x-1); 
End;

var
    num1, num2, result: real;
    num3: word;
    choice: byte;
    sign: char;
begin
    clrscr;
    
    writeln('SELAMAT DATANG DI KALKULATOR SEDERHANA');
    while True do begin
        writeln('Silahkan pilih menu berikut:');
        writeln('  1. Penjumlahan');
        writeln('  2. Pengurangan');
        writeln('  3. Perkalian');
        writeln('  4. Pembagian');
        writeln('  5. Faktorial');
        writeln('  6. Keluar');
        write('Pilihan Anda: ');
        readln(choice);

        if choice=6 then
            exit
        else if choice=5 then begin
            write('|   angka: '); readln(num3);
            result:=factorial(num3);
            writeln('|   ', num3, '! = ', result:0:0);
            writeln;
            continue;
        end
        else begin 
            write('|   angka-1: '); readln(num1);
            write('|   angka-2: '); readln(num2);

            case choice of
                1:  begin
                        result:=sum(num1, num2);
                        sign:='+';
                    end;
                2:  begin
                        result:=substract(num1, num2);
                        sign:='-';
                    end;
                3:  begin
                        result:=multiply(num1, num2);
                        sign:='x';
                    end;
                4:  begin
                        result:=divide(num1, num2);
                        sign:='/';
                    end;
            end;
        end;

        writeln('|   (', num1:0:2, ') ', sign, ' (', num2:0:2, ')', ' = ', result:0:2);
        writeln;
    end;
end.