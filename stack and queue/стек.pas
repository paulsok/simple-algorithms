Program stek;
Type
  Ukaz=^Stack;
  Stack=record;
  Inf:integer;
  Next:ukaz;
end;
var
   Top,Kon,Novel,Next,Prev:ukaz;
   Znach,Max,i:integer;
Procedure Push;
   Begin
     New(novel);
     Novel^.next:=Top;
     Novel^.inf:=znach;
     Top:=novel;
   End;
Procedure Pop;
   Begin
     Top:=Top^.next;
   End;
   Procedure vyv;
   Begin
     Kon:=Top;
     While Kon <> nil do
       Begin
         Writeln(Kon^.inf);
         Kon:=Kon^.next;
       End;
   End;
   Begin
     write('Количество элементов стека: ');
     readln(max);
     for i:=1 to max do
       begin
         write('Введите значение: ');
         readln(znach);
         Push;
       end;
     write('удалить: ');
     readln(znach);
     Next:=Top;
     While Next <> nil do
       Begin
         if Next^.inf=znach then
           begin
             if Prev=nil then
             Top:=Top^.next
             else
             Prev^.next:=Next^.next;
           break;
       end;
     Prev:=Next;
     Next:=Next^.next;
   End;
vyv;
end.
