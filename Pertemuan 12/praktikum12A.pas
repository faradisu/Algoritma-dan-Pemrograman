function sum(x: integer):integer; 
begin 
    if x <= 1 then sum := 1 
    else sum := x + sum(x-1); 
end;

var x: integer= 5;
begin
    writeln('Hasil penjumlahan ', x, ' bilangan bulat pertama = ', sum(x));
end.