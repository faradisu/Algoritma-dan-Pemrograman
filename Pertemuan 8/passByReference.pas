program passByReference;

procedure Hitung(var a, b, c: integer);
begin
    c:=a+b;
end;

var
    x, y, z: integer;
begin
    x:=2; y:=3;
    Hitung(x, y, z);
    writeln('X=', x, '    Y=', y, '    Z=', z)
end.