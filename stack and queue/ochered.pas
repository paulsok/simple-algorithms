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
     WriteLn('������� ����������') else
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
      writeln('�������� ��������');
      writeln('(0)�������� �������');
      writeln('(1)������� �������');
      writeln('(2)�������� �������');
      writeln('(3)�������� �������');
      writeln('(4)������� ���������');
      readln(n);
      case n of
      0:
        begin
          writeln('������� �������� �������� �������');
          readln(s);
          push(s);
        end;
      1:pop;
      2:If right_el>left_el then for i:=left_el to right_el do
      write(znac[i],' ') else  writeln('|������� �� ���������|');
      3:
        Begin
         repeat pop until left_el=right_el;
         writeln('|������� �� ���������|');
        end;
    end;
end;
until n=4;
clrscr;
end.