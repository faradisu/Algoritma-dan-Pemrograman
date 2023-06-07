type 
    data_brg = record 
        namaBrg : string[15]; 
        unitBrg : array[1..3] of byte; 
    end; 

var 
    Barang : array[1..10] of data_brg; 
    i : integer; 
 
Begin 
    With barang[1] do Begin 
        namaBrg:='Scanner'; 
        unitBrg[1]:=4; 
        unitBrg[2]:=5; 
        unitBrg[3]:=3; 
    End; 
    With barang[2] do Begin 
        namaBrg:='Printer'; 
        unitBrg[1]:=1; 
        unitBrg[2]:=2; 
        unitBrg[3]:=4; 
    End; 

    For i:=1 to 2 do begin 
        With barang[i] do Begin 
            Writeln('BARANG KE-', i); 
            Writeln('  nama = ', namaBrg); 
            Writeln('  jumlah 1= ', unitBrg[1]); 
            Writeln('  jumlah 2= ', unitBrg[2]); 
            Writeln('  jumlah 3= ', unitBrg[3]); 
        End; 
    End; 
    // For i:=3 to 10 do begin 
    //     With barang[i] do Begin 
    //         Writeln('BARANG KE-', i); 
    //         Write('  nama = '); Readln(namaBrg); 
    //         Write('  jumlah 1= '); Readln(unitBrg[1]); 
    //         Write('  jumlah 2= '); Readln(unitBrg[2]); 
    //         Write('  jumlah 3= '); Readln(unitBrg[3]); 
    //     End; 
    // End; 

    writeln('':11, 'namaBrg':11, 'unitBrg[1]':13, 'unitBrg[2]':13, 'unitBrg[3]':13);
    For i:=1 to 10 do begin 
        With barang[i] do Begin 
            Write('Barang ', i); 
            Write(namaBrg:11); 
            Write(unitBrg[1]:13); 
            Write(unitBrg[2]:13); 
            Write(unitBrg[3]:13); 
        End; 
        writeln;
    End; 
End.