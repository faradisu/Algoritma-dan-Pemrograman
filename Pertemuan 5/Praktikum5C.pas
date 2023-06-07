Program Contoh3; 
var 
    Nilai : integer;
 
begin 
    writeln('Input nilai yang Anda dapatkan 0 s.d. 100 '); 
    write('Nilai Anda = '); 
    readln(Nilai); 
    
    if (Nilai>59) and (Nilai<=100) then
        write('Anda lulus '); 
        
    case nilai of 
        0..59   : writeln(' Anda tidak lulus'); 
        60..74: writeln('dengan nilai cukup'); 
        75..89: writeln('dengan nilai baik'); 
        90..100: writeln('dengan nilai sangat baik'); 
        else writeln(' Anda salah input nilai'); 
    end; 
    
    readln; 
end. 