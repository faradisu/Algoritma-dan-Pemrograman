program penugasan2;
uses crt;

type
    realArray= array [1..3, 1..3] of real;


function det(matrix: realArray; size: byte):real;
var
    i,j,k: byte;
    consta: real;
begin
    det:=1;
    for i := 0 to size do begin
        if matrix[i,i]=0 then begin
            
        end;

        if matrix[i,i]<>1 then begin
            consta:=matrix[i,i];
            for j := 0 to size do begin
                matrix[i,j]/=consta;
                write(matrix[i,j]:0:2,'  ');
            end;
            write(consta:0:2,'  ');
            writeln;
        end;
        det:=det*consta;
        
        for j := i+1 to size do begin
            consta:=matrix[j,i];
            for k := i to size do
                matrix[j,k]:=matrix[j,k]-consta*matrix[i,k];
        end;
    end; 
end;

var
    choice, i,j: byte;
    myMatrix: realArray;
begin
    // clrscr;
    // writeln('SELAMAT DATANG DI APLIKASI STATISTIK SEDERHANA');
    repeat
        for i := 1 to 3 do
        begin
            for j := 1 to 3 do begin
                write('A[',i,',',j,']: '); readln(myMatrix[i,j]);
            end;    
        end;

        write('determinan: ', det(myMatrix,2):0:2);

        // writeln('Silahkan pilih menu berikut:');
        // writeln('  1. Input data');
        // writeln('  2. Tampilkan semua data');
        // writeln('  3. Tampilkan data terkecil');
        // writeln('  4. Tampilkan data terbesar');
        // writeln('  5. Tampilkan rata-rata');
        // writeln('  6. Reset data');
        // writeln('  7. Keluar');
        // write('=> '); readln(choice);
        // clrscr;

        // case choice of
        //     1:  begin
        //             writeln('== INPUT DATA ==');
        //             writeln('banyak data ', n, '/10');
        //             inputData(myData, n);
        //         end;
        //     2:  begin
        //             writeln('== MENAMPILKAN DATA ==');
        //             if isEmpty(n)=true then
        //                 writeln('tidak ada data')
        //             else
        //                 showData(myData, n);
        //         end;
        //     3:  begin
        //             writeln('== DATA TERKECIL ==');
        //             if isEmpty(n)=true then
        //                 writeln('tidak ada data')
        //             else
        //                 writeln(minData(myData, n));
        //         end;
        //     4:  begin
        //             writeln('== DATA TERBESAR ==');
        //             if isEmpty(n)=true then
        //                 writeln('tidak ada data')
        //             else
        //                 writeln(maxData(myData, n));
        //         end;
        //     5:  begin
        //             writeln('== RATA-RATA ==');
        //             if isEmpty(n)=true then
        //                 writeln('tidak ada data')
        //             else
        //                 writeln(avgData(mydata, n):0:2);
        //         end;
        //     6:  begin
        //             n:=0;
        //             writeln('data telah direset');
        //         end;
        //     7: exit;
        //     else begin
        //         writeln('Input invalid!!!');
        //         continue;
        //     end;;
        // end;
        // writeln;
        // write('Enter to continue...');
        // readln;
        // clrscr;
    until (False);
end.