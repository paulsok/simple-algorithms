program bin_poisk;
const N=10;
var a:array[1..N] of integer;
    sam_leg,sam_tyag,m,i,j,b:integer;
begin
  writeln('Vvedite uporiadochui massiv ');
  for i:=1 to N do readln(a[i]);
  writeln('Vvedite iskomui element');
  readln(b);
  sam_leg:=1;
  sam_tyag:=N;
   while sam_leg<sam_tyag do
      begin
         m:=(sam_leg+sam_tyag) div 2;
         if a[m]<b then sam_leg:=m+1
         else sam_tyag:=m;
      end;
  if (sam_tyag<>N) or (sam_tyag=N) and (a[N]=b) then
  writeln('Element naiden,pod nomerom:',sam_tyag)
  else writeln('Element otsutstvuet');
end.
