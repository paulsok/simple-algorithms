program bustraia_sortirovka;
uses
   crt;
const
   c=10;
Type
   mass=array[1..c] of integer;
var
   a:mass;
   k:integer;
function Razdel(l,r:integer):integer;
var
   v,i,j,b:integer;
begin
   v:=a[r];
   i:=l-1;
   j:=r;
   repeat

      repeat
         dec(j)
      until (a[j]<=v) or (i=j+1);

      repeat
         inc(i)
      until (a[i]>=v) or (i=j-1);

      b:=a[i];
      a[i]:=a[j];
      a[j]:=b;
   until (i>=j);
   a[j]:=a[i];
   a[i]:=a[r];
   a[r]:=b;
   Razdel:=i;
end;

procedure Quick_S(l,p:integer);
var i:integer;
begin
  if l<p then
     begin
       i:=Razdel(l,p);
       Quick_S(l,i-1);
       Quick_S(i+1,p);
     end;
end;

Begin
  clrscr;
  writeln('Sluchainui massiv dannuh:');
  readln;
  randomize;
  for k:=1 to 10 do
     begin
       a[k]:=random(100);
       write(a[k]:3);
     end;
  writeln;
  readln;
  Quick_S(1,c);
  writeln;
  writeln('Otsortirovannui massiv dannuh:');
  readln;
  for k:=1 to c do
    write(a[k]:3);
  readln;
  clrscr;
  readln;
end.