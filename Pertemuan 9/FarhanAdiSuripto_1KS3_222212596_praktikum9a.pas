Program penugasan9A; 
uses crt;
{
PERHATIAN!
PASTIKAN UKURAN TERMINAL YANG DIGUNAKAN SAAT MENJALANKAN PROGRAM
BERUKURAN MINMAL 160x40 KOLOM, AGAR OUTPUT TERCETAK SEMPURNA
}
const
    LEBAR = 7;

type
    bulan1Tahun = (JANUARI, FEBRUARI, MARET, APRIL, MEI, JUNI, JULI, AGUSTUS, SEPTEMBER, OKTOBER, NOVEMBER, DESEMBER);
    hari1Pekan = (Ahad,Senin,Selasa,Rabu,Kamis,Jumat,Sabtu); 
    hariBulan = 1..31; 
 
var
    i: bulan1Tahun;
    j,awalTahun:hari1Pekan; 
    k,tglMaks:hariBulan; 
    x,y,xx,yMaks,tahun,temp:integer;
     
begin 
    clrscr;

    write('KALENDER TAHUN: '); 
    readln(tahun); 
    write('Hari pertama awal tahun: '); 
    readln(awalTahun); 
    writeln;
    
    x:=ord(awalTahun); 
    y:=6;

    for i := Januari to Desember do begin
        xx:=ord(i) mod 3;
        temp:=y;

        // Mencetak nama bulan
        gotoxy(xx*(LEBAR*7+4)+1,y-2);
        writeln(i);

        // Menentukan maksimal tanggal tiap bulan
        case i of
            Januari, Maret, Mei, Juli, Agustus, Oktober, Desember: tglMaks:=31;
            April, Juni, September, November: tglMaks:=30;
            else begin
                if (tahun mod 4) = 0 then
                    tglMaks:=29
                else
                    tglMaks:=28
            end;
        end;

        // Mencetak nama hari dalam sepekan
        for j:=Ahad to Sabtu do begin
            gotoxy(LEBAR*ord(j)+xx*(LEBAR*7+4)+1,y-1);
            write(j:LEBAR)
        end;
        
        // Mencetak tanggal tiap bulan
        for k:=1 to tglMaks do begin 
            if x=7 then begin  
                x:=0; 
                y:=y+1; 
            end; 
            gotoxy(LEBAR*x+1+xx*(LEBAR*7+4),y);write(k:3); 
            x:=x+1; 
        end;

        writeln;
        writeln;
        
        // Penyesuaian koordinat x dan y
        if y>yMaks then
            yMaks:=y;

        if x=7 then
            x:=0;

        if xx=2 then begin
            y:=yMaks+4;
            yMaks:=0;
        end
        else
            y:=temp;
    end;

    readln;
end.