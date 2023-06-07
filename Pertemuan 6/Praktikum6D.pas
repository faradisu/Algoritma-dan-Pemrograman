{Program Cetak Halo REPEAT-UNTIL} 
Program Contoh64; 
var n:integer; 
begin 
   n:=1; 
   repeat 
     writeln('HALO'); 
     n:=n+1; 
   until n>10; 
   readln; 
end.