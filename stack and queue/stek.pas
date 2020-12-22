program stek;
uses crt;
const
  max=10;
var
  s:array [1..10] of real;
  posl,n,i:integer;
  v:real;
procedure push(k:real);
  begin
    If posl>max then
    writeln('стек заполнен') else
      begin
        posl:=posl+1;
        S[posl]:=k;
      end;
  end;
Function pop:real;
  begin
    posl:=posl-1;
    If posl<1 then
      Begin
        writeln('стек пуст');
        pop:=0;
      end
      else pop:=s[posl];
  end;
  Begin
    posl:=0;
    repeat
      begin
        writeln();
        writeln('выберите действие');
        writeln('(0)добавить элемент');
        writeln('(1)удалить элемент');
        writeln('(2)показать стек');
        writeln('(3)очистить стек');
        writeln('(4)закрыть программу');
        readln(n);
        case n of
        0:
          begin
            writeln('введите значение элемента стека');
            readln(v);
            push(v);
          end;
        1:pop;
        2:If posl>=1 then for i:=1 to posl do
          write(s[i],' ') else
          writeln('стек пуст');
        3:
          Begin
            repeat pop until posl=0;
          end;
        4:writeln();
          else writeln('неправильная команда');
      end;
end;
until n=4;
clrscr;
end.