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
    writeln('���� ��������') else
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
        writeln('���� ����');
        pop:=0;
      end
      else pop:=s[posl];
  end;
  Begin
    posl:=0;
    repeat
      begin
        writeln();
        writeln('�������� ��������');
        writeln('(0)�������� �������');
        writeln('(1)������� �������');
        writeln('(2)�������� ����');
        writeln('(3)�������� ����');
        writeln('(4)������� ���������');
        readln(n);
        case n of
        0:
          begin
            writeln('������� �������� �������� �����');
            readln(v);
            push(v);
          end;
        1:pop;
        2:If posl>=1 then for i:=1 to posl do
          write(s[i],' ') else
          writeln('���� ����');
        3:
          Begin
            repeat pop until posl=0;
          end;
        4:writeln();
          else writeln('������������ �������');
      end;
end;
until n=4;
clrscr;
end.