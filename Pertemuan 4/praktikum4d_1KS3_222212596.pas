program kalkulator;
uses crt, sysutils;

var
    operand1, operand2, result: real;
    n,i: byte;
    operatorz: char;
    input: string;

begin
    
    clrscr;

    writeln('PROGRAM KALKULATOR SEDERHANA');
    writeln('----------------------------');
    // input operasi: (operand)(operator)(operand)
    // contoh : 42+3

    write('operasi : ');
    readln(input);

    n:=length(input);
    for i := 1 to (n) do
    begin
        if (input[i]='*') or (input[i]='/') or (input[i]='+') or (input[i]='-') or (input[i]='%') then
        begin
            // ketika karakter *, /, +, dan - ditemukan maka akan:
            operatorz:=input[i]; // menjadikan karakter input[i] sebagai operator
            operand1:=strToFloat(leftStr(input, i-1)); // menjadikan (i-1) karakter dari kiri sebagai operand1
            operand2:=strToFloat(rightStr(input, n-i)); // menjadikan (n-i) karakter dari kanan sebagai operand2
            break;
        end;
    end;

    case operatorz of
        '*' : result:=operand1*operand2;
        '/' : result:=operand1/operand2;
        '+' : result:=operand1+operand2;
        '-' : result:=operand1-operand2;
        '%' : result:=operand1%operand2;
    end;

    writeln('hasil   : ', result:0:2);
end.