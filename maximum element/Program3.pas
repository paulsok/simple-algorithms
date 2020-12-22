program poisk_max_i_kol_max;
uses crt;
const
     N=4;
type Mas=array[1..N,1..N] of integer;
var
   M:Mas;
   i,j,z:integer;
   max,imax:integer;
Begin
clrscr;
Writeln;
Randomize;
TextAttr:=15;
for i:=1 to N do
 begin
   for j:=1 to N do
     begin
       M[i,j]:=Random(10);
       Write(' ',M[i,j]:3);
     end;
 Writeln;
 end;
max:=M[1,1];
imax:=1;
for i:=1 to N do
begin
 for j:=1 to N do
 begin
  if M[i,j]>max then
   begin
     max:=M[i,j];
     imax:=i;
     z:=0;
   end;
  if M[i,j]=max then z:=z+1;
 end;
end;
Writeln;
Writeln('max ',max,' в строке ',imax,' ','всего ',z);
end.


