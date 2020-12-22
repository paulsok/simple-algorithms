program sortirovka_puz;
const n=20;
var v:array[1..n] of integer;
    i,j,tmp:integer;
begin
  Randomize;
  for i:=1 to n do
  v[i]:=random(100);
  writeln('sluchainui massiv dannuh iz oblasti 1..100: ');
  for i:=1 to n do
  write(v[i],' ');
  for i:=1 to n-1 do
     for j:=i+1 to n do
     if v[i]>=v[j] then
        begin
           tmp:=v[i];
           v[i]:=v[j];
           v[j]:=tmp;
        end;
writeln;
writeln ('uporiadochnui massiv: ');
  for i:=1 to n do
write(v[i],' ');
readln;
end.