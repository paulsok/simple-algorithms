program sortirovka_SHELLA;
const
   dlin=10;
   diap=100;
var
   a:array[1..dlin] of integer;
   tmp:integer;
   step:integer;
   j,i:integer;
begin
   readln;
   writeln('sluchainui massiv dannuh: ');
   randomize;
   for i:=1 to dlin do a[i]:=random(diap);
   step:=dlin div 2;
   for i:=1 to dlin do write(a[i],'  ');
   while step>0 do
     begin
        for j:=dlin-step downto 1 do
          begin
             i:=j;
             while i<=dlin-step do
               begin
                  if a[i]>a[i+step] then
                     begin
                        tmp:=a[i];
                        a[i]:=a[i+step];
                        a[i+step]:=tmp;
                     end;
                  i:=i+step;
               end;
          end;
        step:=step div 2;
     end;
   writeln;
   writeln('otsortirovannui massiv dannuh: ');
   for i:=1 to dlin do write(a[i],'  ');
   readln;
end.