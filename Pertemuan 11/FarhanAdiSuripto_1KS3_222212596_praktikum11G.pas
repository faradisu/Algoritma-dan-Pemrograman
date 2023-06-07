program penugasan2;
uses crt;
// program ini dapat digunakan untuk mencari perkalian, determinan,
// transpose, dan invers matrix berukuran NxN dengan menyesuaikan size
// dari matrix yang ingin dicari
const
    size=2;

type
    matrixArray= array [0..size, 0..size] of real;

function identityMatrix():matrixArray;
var
    i, j: byte;
begin
    for i := 0 to size do
    begin
        for j := 0 to size do begin
            if i=j then
                identityMatrix[i,j]:=1
            else
                identityMatrix[i,j]:=0;
        end;    
    end;
end;

function inputMatrix(name: char):matrixArray;
var
    i, j: byte;
begin
    for i := 0 to size do
    begin
        for j := 0 to size do begin
            write(name, '[',i+1,',',j+1,']: '); readln(inputMatrix[i,j]);
        end;
        writeln;
    end;
end;

procedure showMatrix(matrix: matrixArray);
var
    i,j: byte;
begin
    for i := 0 to size do begin
        for j := 0 to size do begin
            write(matrix[i,j]:10:2);
        end;
        writeln;
    end;
end;

// mencari determinan matrix dengan metode operasi baris elementer (OBE)
function detMatrix(matrix: matrixArray):real;
var
    i,j,k: byte;
    consta, temp: real;
    zeroDet: boolean;
begin
    detMatrix:=1;
    for i := 0 to size do begin
        if matrix[i,i]=0 then begin
            zeroDet:=true;
            for j := i+1 to size do begin
                if matrix[j,i]<>0 then begin
                    for k := i to size do begin
                        temp:= matrix[i,k];
                        matrix[i,k]:=matrix[j,k];
                        matrix[j,k]:=temp;
                    end;
                    detMatrix*=-1;
                    zeroDet:=false;
                    break;
                end;
            end;
            if zeroDet=true then begin
                detMatrix:=0;
                break;
            end;
        end;

        if matrix[i,i]<>1 then begin
            consta:=matrix[i,i];
            for j := i to size do begin
                matrix[i,j]/=consta;
            end;
            detMatrix:=detMatrix*consta;
        end;
        
        for j := i+1 to size do begin
            consta:=matrix[j,i];
            if consta=0 then
                continue;
            for k := i to size do
                matrix[j,k]:=matrix[j,k]-consta*matrix[i,k];
        end;
    end;
end;

function tpMatrix(matrix: matrixArray): matrixArray;
var
    i,j: byte;
begin
    for i := 0 to size do begin
        for j := i to size do begin
            tpMatrix[i,j]:=matrix[j,i];
            tpMatrix[j,i]:=matrix[i,j];
        end;
    end;
end;

// mencari invers matrix dengan metode operasi baris elementer (OBE)
function invMatrix(matrix: matrixArray):matrixArray;
var
    i,j,k: byte;
    consta, temp: real;
begin
    invMatrix:=identityMatrix();
    for i := 0 to size do begin
        if matrix[i,i]=0 then begin
            for j := i+1 to size do begin
                if matrix[j,i]<>0 then begin
                    for k := i to size do begin
                        temp:= matrix[i,k];
                        matrix[i,k]:=matrix[j,k];
                        matrix[j,k]:=temp;
                        temp:= invMatrix[i,k];
                        invMatrix[i,k]:=invMatrix[j,k];
                        invMatrix[j,k]:=temp;
                    end;
                    break;
                end;
            end;
        end;

        if matrix[i,i]<>1 then begin
            consta:=matrix[i,i];
            for j := 0 to size do begin
                matrix[i,j]/=consta;
                invMatrix[i,j]/=consta;
            end;
        end;
        
        for j := 0 to size do begin
            if j=i then
                continue;
            consta:=matrix[j,i];
            if consta=0 then
                continue;
            for k := 0 to size do begin
                matrix[j,k]:=matrix[j,k]-consta*matrix[i,k];
                invMatrix[j,k]:=invMatrix[j,k]-consta*invMatrix[i,k];
            end;
        end;
    end;        
end;

function multplyMatrix(matrixA, matrixB: matrixArray):matrixArray;
var
    i,j,k: byte;
begin
    for i := 0 to size do begin
        for j := 0 to size do begin
            multplyMatrix[i,j]:=0;
            for k := 0 to size do begin
                multplyMatrix[i,j]+=matrixA[i,k]*matrixB[k,j];
            end;
        end;
    end;
end;

var
    choice: byte;
    myMatrix, scndMatrix: matrixArray;
begin
    clrscr;
    writeln('SELAMAT DATANG DI APLIKASI MATRIKS SEDERHANA');
    writeln('------ INPUT MATRIKS ------');
    myMatrix:= inputMatrix('A');

    repeat
        clrscr;
        writeln('SELAMAT DATANG DI APLIKASI MATRIKS SEDERHANA');
        writeln('Silahkan pilih menu berikut:');
        writeln('  1. Input matriks baru');
        writeln('  2. Tampilkan matriks');
        writeln('  3. Tampilkan transpose');
        writeln('  4. Tampilkan determinan');
        writeln('  5. Tampilkan invers');
        writeln('  6. Perkalian matriks');
        writeln('  7. Keluar');
        write('=> '); readln(choice);
        clrscr;

        case choice of
            1:  begin
                    writeln('------ INPUT MATRIKS ------');
                    myMatrix:= inputMatrix('A');
                end;
            2:  begin
                    writeln('------ MENAMPILKAN MATRIKS ------');
                    writeln('A =');
                    showMatrix(myMatrix);
                end;
            3:  begin
                    writeln('------ TRANSPOSE MATRIKS ------');
                    writeln('(A)t =');
                    showMatrix(tpMatrix(myMatrix));
                end;
            4:  begin
                    writeln('------ DETERMINAN MATRIKS ------');
                    writeln('   det(A) =', detMatrix(myMatrix):12:2);
                end;
            5:  begin
                    writeln('------ INVERS MATRIKS ------');
                    if detMatrix(myMatrix)=0 then begin
                        writeln('      Nilai determinan = 0,');
                        writeln('  Matriks tidak memiliki invers');
                    end
                    else begin
                        writeln('inv(A) =');
                        showMatrix(invMatrix(myMatrix));
                    end;
                end;
            6:  begin
                    writeln('Input matriks B');
                    scndMatrix:= inputMatrix('B');
                    clrscr;
                    writeln('------ PERKALIAN MATRIKS ------');
                    writeln('A =');
                    showMatrix(myMatrix);
                    writeln;
                    writeln('B =');
                    showMatrix(scndMatrix);
                    writeln;
                    writeln('A x B =');
                    showMatrix(multplyMatrix(myMatrix,scndMatrix));
                end;
            7: exit;
            else continue;
        end;
        writeln;
        write('Enter to continue...');
        readln;
    until (False);
end.