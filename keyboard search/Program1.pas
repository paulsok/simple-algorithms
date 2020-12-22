program kol_vhogdenii;
uses crt;
const
     N=6;
type Mas=array[1..N,1..N] of integer;
var
   M:Mas;
   i,j,z,k:integer;
   max,imax:integer;
Begin
clrscr;
Writeln;
Randomize;
TextAttr:=15;
z:=0;
for i:=1 to N do
 begin
   for j:=1 to N do
     begin
       M[i,j]:=Random(10);
       Write(' ',M[i,j]:3);
     end;
 Writeln;
 end;
writeln;
writeln('введите искомое число');
readln(k);
for i:=1 to N do
begin
 for j:=1 to N do
 begin
     if M[i,j]=k then z:=z+1;
     end;
  end;
Writeln;
Writeln('встречается всего ',z,' раз(а)');
end.
