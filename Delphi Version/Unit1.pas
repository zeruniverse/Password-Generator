unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMenu;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    XPMenu1: TXPMenu;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    procedure Edit1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
const parameter2=100;
const parameter3=100;

implementation

{$R *.dfm}



procedure TForm1.Edit1Change(Sender: TObject);
var i:integer;p,q:int64; a:array[1..6]of integer; s:string;
function chan(i:integer):char;
begin
  case i of
  0:chan:='0';
  1:chan:='1';
  2:chan:='2';
  3:chan:='3';
  4:chan:='4';
  5:chan:='5';
  6:chan:='6';
  7:chan:='7';
  8:chan:='8';
  9:chan:='9';
  10:chan:='a';
  11:chan:='b';
  12:chan:='c';
  13:chan:='d';
  14:chan:='e';
  15:chan:='f';
  16:chan:='g';
  17:chan:='h';
  18:chan:='i';
  19:chan:='j';
  20:chan:='k';
  21:chan:='l';
  22:chan:='m';
  23:chan:='n';
  24:chan:='o';
  25:chan:='p';
  26:chan:='q';
  27:chan:='r';
  28:chan:='s';
  29:chan:='t';
  30:chan:='u';
  31:chan:='v';
  32:chan:='w';
  33:chan:='x';
  34:chan:='y';
  35:chan:='z';
  36:chan:='A';
  37:chan:='B';
  38:chan:='C';
  39:chan:='D';
  40:chan:='E';
  41:chan:='F';
  42:chan:='G';
  43:chan:='H';
  44:chan:='I';
  45:chan:='J';
  46:chan:='K';
  47:chan:='L';
  48:chan:='M';
  49:chan:='N';
  50:chan:='O';
  51:chan:='P';
  52:chan:='Q';
  53:chan:='R';
  54:chan:='S';
  55:chan:='T';
  56:chan:='U';
  57:chan:='V';
  58:chan:='W';
  59:chan:='X';
  60:chan:='Y';
  61:chan:='Z';
  62:chan:='@';
  63:chan:='.';

  end;
end;
begin
if edit1.Text='' then begin edit2.Text:='input parameter';memo1.Text:='input parameter';edit3.Text:='input parameter';exit;end;


try
s:=edit1.Text;
p:=strtoint(copy(s,1,9));
edit2.Text:='';
edit3.Text:='';
 edit2.Text:=edit2.Text+chan(p mod 36);
  edit3.Text:=edit3.Text+chan((p+3) mod 64);
for i := 1 to 11 do   begin
 if p>1000000 then p:=p div 8282;
 p:=p+313;
 p:=p*23;
 p:=p-7;
 edit2.Text:=edit2.Text+chan(p mod 36);
 p:=p+parameter2;
 p:=p*31;
 p:=p-11;
 edit3.Text:=edit3.Text+chan(p mod 64);
end;
edit3.Text:=edit3.Text+chan((p*71+28)mod 64);
edit3.Text:=edit3.Text+chan((p*99+81)mod 64);
p:=strtoint(copy(s,1,9));



repeat
if p<=100000 then p:=sqr(2+abs(p));
if p>=1000000 then p:=p div 2 -8200;

until (p<1000000)and(p>100000);
q:=parameter3;
for i :=  1 to 6 do   begin
 q:=q*10;
 a[i]:=(p mod q)div (q div 10);
end;
memo1.Clear;
for i := 1 to 3 do

memo1.Text:=memo1.Text+chr(ord('A')+a[i]);
memo1.Text:=memo1.Text+'-';
for i := 4 to 6 do   memo1.Text:=memo1.Text+chr(ord('A')+a[i]);

except
showmessage('wrong');
end;
end;

end.
