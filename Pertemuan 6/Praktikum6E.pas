Program Contoh73; 
var 
    i:char;
    j:integer; 
begin 
    for i:='a' to 'e' do 
    begin 
        for j:=1 to 9 do 
            write('#':2); 
        writeln;
    end;
end.