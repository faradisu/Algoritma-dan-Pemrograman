program penugasan2;
uses crt;

procedure decToBin(num: longword);
begin
    if num<=1 then begin
        writeln('  ', num, ' / 2 = ', num div 2, ' sisa ', num mod 2);
        writeln;
        write('=> Nilai Biner: ');
        write(num);
    end
    else begin
        writeln('  ', num, ' / 2 = ', num div 2, ' sisa ', num mod 2);
        decToBin(num div 2);
        write(num mod 2);
    end;
end;

var
    decNumber: longword;
    again: string;
begin
    repeat
        clrscr;
        write('=> Nilai Desimal: '); readln(decNumber);
        writeln;
        writeln('KONVERSI ', decNumber, ' (DESIMAL) KE BINER');
        decToBin(decNumber);
        writeln;
        writeln('-------------------------------------------');
        write('lagi? (y/n): '); readln(again);
        if again<>'y' then
            exit;
    until (false);
end.