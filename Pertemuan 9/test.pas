Program Contoh9F; 
uses crt;
type
    monthsName = (JANUARI, FEBRUARI, MARET, APRIL, MEI, JUNI, JULI, AGUSTUS, SEPTEMBER, OKTOBER, NOVEMBER, DESEMBER);
    daysName = (Ahad,Senin,Selasa,Rabu,Kamis,Jumat,Sabtu); 
    daysNum = 1..31; 
 
var
    i: monthsName;
    j,dayBase:daysName; 
    k,maxDate:daysNum; 
    x,y,width,year:integer;
     
begin 
    clrscr;

    write('Tahun: '); 
    readln(year); 
    write('Hari pertama awal tahun: '); 
    readln(dayBase); 
    writeln;
    
    x:=ord(dayBase); 
    y:=6;

    for i := Januari to Desember do begin
        writeln('----------[ ':18, i, ' ]----------');
        case i of
            Januari, Maret, Mei, Juli, Agustus, Oktober, Desember: maxDate:=31;
            April, Juni, September, November: maxDate:=30;
            else
            begin
                if (year mod 4) = 0 then
                    maxDate:=29
                else
                    maxDate:=28
            end;
        end;

        width:=7; 
        for j:=Ahad to Sabtu do 
            write(j:width); 
        
        for k:=1 to maxDate do 
        begin 
            if x=7 then 
            begin  
                x:=0; 
                y:=y+1; 
            end; 
            gotoxy(width*x+1,y);write(k:3); 
            x:=x+1; 
        end; 

        writeln;
        writeln;

        if x=7 then
            x:=0;
        y:=y+4; 
    end;
end.