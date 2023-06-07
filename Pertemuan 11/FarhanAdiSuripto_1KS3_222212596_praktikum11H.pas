program penugasan3;
uses crt;

procedure decToBin(num: integer);
begin
    if num<=1 then begin
        write(num);
    end
    else begin
        decToBin(num div 2);
        write(num mod 2);
    end;
end;

var
    input: integer;
    again: string;
begin
    repeat
        clrscr;
        write('Input  : '); readln(input);
        write('Output : ');
        if input<0 then
            write('-');
        decToBin(abs(input));
        writeln;
        writeln('-------------------------------------------');
        write('lagi? (y/n): '); readln(again);
        if again<>'y' then
            exit;
    until (false);
end.