Program ochered;
Type
Mark=^Stack;
Stack=record
Inf:integer;
Next:mark
End;
var
   P,Kon,novel,Right,Left:mark;
   nom,znach,max,i,Perv,Vtor:integer;
Procedure Sozd;
   Begin
     New(Kon);
     Kon^.next:=Left;
     Kon^.inf:=znach;
     Right:=Kon;
     Left:=Kon;
   End;
Procedure Add;
   Begin
     New (novel);
     Right^.Next:=Novel;
     Novel^.next:=nil;
     Novel^.inf:=znach;
     Right:=novel;
   End;
Procedure Del;
   Begin
     Left:= Left^.next;
   End;
Procedure vyv;
   Begin
     P:=Left;
     While P <> nil do
        Begin
          Writeln(P^.inf);
          P:=P^.next;
        End;
   End;
      Begin
        write('Всего элементов очереди: ');
        readln(max);
        write('Введите значение: ');
        readln(znach);
        sozd;
        for i:=1 to max-1 do
            begin
              if max=1 then break;
              write('Введите значение: ');
              readln(znach);
              Add;
            end;
        write('первое: ');
        readln(Perv);
        write('второе: ');
        readln(Vtor);
        P:=Left;
        While P <> nil do
           Begin
             if P^.inf=Perv then begin
             P^.inf:=Vtor;
             P:=P^.next;
             continue;
           end;
        if P^.inf=Vtor then
           begin
             P^.inf:=Perv;
             P:=P^.next;
             continue;
           end;
        P:=P^.next;
      End;
vyv;
End.


