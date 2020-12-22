program ochered;
uses crt;
const
       max=10;
       var
         znac:array[1..max] of string;
         right_el,left_el:integer;
         s:string;
         n,i:integer;
         
procedure push(p:string);
   begin
     if right_el>max then
     WriteLn('очередь заполненна') else
        begin
          znac[right_el]:=p;
          right_el:=right_el+1;
        end;
   end;
   
function pop:string;
begin
  if left_el=right_el then
    begin
      pop:='';
      end else
        begin
          left_el:=left_el+1;
          pop:=znac[left_el-1];
        end;
    end;

Begin
  right_el:=1;
  left_el:=1;
  repeat
    begin
      writeln;
      writeln('выберите действие');
      writeln('(0)добавить элемент');
      writeln('(1)удалить элемент');
      writeln('(2)показать очередь');
      writeln('(3)очистить очередь');
      writeln('(4)закрыть программу');
      readln(n);
      case n of
      0:
        begin
          writeln('введите значение элемента очереди');
          readln(s);
          push(s);
        end;
      1:pop;
      2:If right_el>left_el then for i:=left_el to right_el do
      write(znac[i],' ') else  writeln('|очередь не заполнена|');
      3:
        Begin
         repeat pop until left_el=right_el;
         writeln('|очередь не заполнена|');
        end;
    end;
end;
until n=4;
clrscr;
end.