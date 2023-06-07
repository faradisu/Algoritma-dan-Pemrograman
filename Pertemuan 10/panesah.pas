program hitungmatriks;
uses crt;
type
    matriks=array[1..100,1..100] of real;
var
    i,j,k:integer;

    Procedure perkalianM;
    var
        matA,matB,matC:matriks;
        barisA,kolomA,barisB,kolomB:integer;
    begin
        writeln (' ');
        writeln ('MATRIKS A');
        write ('Masukkan Banyak Baris : ');
        readln (barisA);
        write ('Masukkan Banyak Kolom : ');
        readln (kolomA);
        writeln (' ');
        writeln ('MATRIKS B');
        write ('Masukkan Banyak Baris : ');
        readln (barisB);
        write ('Masukkan Banyak Kolom : ');
        readln (kolomB);
        writeln (' ');
        { Memasukkan Elemen Matriks } 
        if kolomA=barisB then
        begin
            writeln ('Elemen Matriks A');
            for i:=1 to barisA do
                for j:=1 to kolomA do
                begin
                    write ('A[',i,',',j,'] : ');
                    readln (matA[i,j]);
                end; 
            writeln;
            writeln ('Elemen Matriks B');
            for i:=1 to barisB do
                for j:=1 to kolomB do
                begin
                    write ('B[',i,',',j,'] : ');
                    readln (matB[i,j]);
                end;
            writeln;
            
            for i:=1 to barisA do
                for j:=1 to kolomB do
                begin
                    matC[i,j]:=0;
                    for k:=1 to kolomA do
                        matC[i,j]:=matC[i,j]+matA[i,k]*matB[k,j];
                end;
            writeln ('Matriks C = Matriks A x Matriks B = ');
            for i:=1 to barisA do
            begin
                for j:=1 to kolomB do
                begin
                    write (matC[i,j]:4:0);
                end;
            writeln;
            end;
        readln;
        end
        else 
            writeln ('Perkalian matriks tidak dapat dihitung.');
    end;


    Procedure determinanM;
    var
        matriksD,determinan:matriks;
        ordoM:integer;
    begin
        writeln (' ');
        write ('Masukkan Ordo Matriks : ');
        readln (ordoM);
        writeln ('Elemen Matriks : ');
        for i:=1 to ordoM do
            for j:=1 to ordoM do
            begin
                write ('[',i,',',j,'] :');
                readln (matriksD[i,j]);
            end;
        writeln ('Matriks yang Terbentuk : ');
        for i:=1 to ordoM do
        begin
            for j:=1 to ordoM do
                write (matriksD[i,j]:4:0);
                writeln;
        end;
    
        if (ordoM=2) then
        begin
            determinan[i,j]:=matriksD[i-1,j-1]*matriksD[i,j]-matriksD[i-1,j]*matriksD[i,j-1];
            writeln ('Determinan matriks adalah ',determinan[i,j]:0:0);
        end
    
        else if (ordoM=3) then
        begin
            determinan[i,j]:=matriksD[i-2,j-2]*matriksD[i-1,j-1]*matriksD[i,j]+matriksD[i-2,j-1]*matriksD[i-1,j]*matriksD[i,j-2]+matriksD[i-2,j]*matriksD[i-1,j-2]*matriksD[i,j-1]-matriksD[i-2,j]*matriksD[i-1,j-1]*matriksD[i,j-2]-matriksD[i-2,j-2]*matriksD[i-1,j]*matriksD[i,j-1]-matriksD[i-2,j-1]*matriksD[i-1,j-2]*matriksD[i,j];
            writeln ('Determinan matriks adalah ',determinan[i,j]);
        end
    
        else writeln ('Determinan tidak dapat ditemukan');
    end;

    Procedure transposeM;
    var
        matriksT:matriks;
        baris,kolom:integer;
    begin
        writeln (' ');
        write ('Masukkan Banyak Baris : ');
        readln (baris);
        write ('Masukkan Banyak Kolom : ');
        readln (kolom);
        writeln ('Elemen Matriks : ');
        for i:=1 to baris do
            for j:=1 to kolom do
            begin
                write ('[',i,',',j,'] : ');
                readln (matriksT[i,j]);
            end;
        writeln ('Matriks yang Terbentuk : ');
        for i:=1 to baris do
        begin
            for j:=1 to kolom do
                write (matriksT[i,j]:4:0);
                writeln;
        end;
        writeln ('Hasil dari transpose matriks adalah : ');
        for j:=1 to kolom do
        begin
            for i:=1 to baris do
                write (matriksT[i,j]:4:0);
                writeln;
        end;
    end;

    Procedure inversM (var m:matriks; ordo:integer);
    var
        identitas:matriks;
        i,j,k:integer;
        faktor:real;
    begin
    {Matriks Identitas}
        for i:=1 to ordo do
        begin
            for j:=1 to ordo do
            begin
                if i=j then
                    identitas[i,j]:=1
                else
                    identitas[i,j]:=0;
            end;
        end;
    {Eliminasi Gauss-Jordan}
        for i:=1 to ordo do
        begin
            faktor:=1/m[i,i];
            for j:=1 to ordo do
            begin
                m[i,j]:=m[i,j]*faktor;
                identitas[i,j]:=identitas[i,j]*faktor;
            end;
            for j:=1 to ordo do
            begin
                if j<>i then
                begin
                    faktor:=m[j,i];
                    for k:=1 to ordo do
                    begin
                        m[j,k]:=m[j,k]-faktor*m[i,k];
                        identitas[j,k]:=identitas[j,k]-faktor*identitas[i,k];
                        write (m[i,j]:4:0);
                    end;
                end;
            end;
        end;
        m:=identitas;
    end;
    
var
    m:matriks;
    menu,ordo:integer;
    lagi:char;
label ulangi;
begin
    ulangi:
    clrscr;
    writeln ('Silahkan pilih menu berikut : ');
    writeln ('1. Perkalian Matriks');
    writeln ('2. Determinan Matriks');
    writeln ('3. Transpose Matriks');
    writeln ('4. Invers Matriks');
    write ('Pilihan Anda : ');
    readln (menu);
    
    if (menu=1) then
    begin
        perkalianM;
        write ('Apakah Anda ingin melakukan perhitungan lagi? (Y/y=ya) ');
        readln (lagi);
        if (lagi='Y') or (lagi='y') then
            goto ulangi
        else
            writeln ('Terima Kasih');
    end
    
    else if (menu=2) then
    begin
        determinanM;
        write ('Apakah Anda ingin melakukan perhitungan lagi? (Y/y=ya) ');
        readln (lagi);
        if (lagi='Y') or (lagi='y') then
            goto ulangi
        else
            writeln ('Terima Kasih');
    end
    
    else if (menu=3) then
    begin
        transposeM;
        write ('Apakah Anda ingin melakukan perhitungan lagi? (Y/y=ya) ');
        readln (lagi);
        if (lagi='Y') or (lagi='y') then
            goto ulangi
        else
            writeln ('Terima Kasih');
    end
    
    else if (menu=4) then
    begin
        writeln (' ');
        write ('Masukkan Ordo : ');
        readln (ordo);
        inversM (m,ordo);
        write ('Apakah Anda ingin melakukan perhitungan lagi? (Y/y=ya) ');
        readln (lagi);
        if (lagi='Y') or (lagi='y') then
            goto ulangi
        else
            writeln ('Terima Kasih');
    end
    
    else 
    writeln (' ');
    writeln ('Pilihan Anda tidak ada di menu. Silahkan coba lagi.');
end.






