unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: integer;
  newStr : string;

begin
    if CheckBox1.Checked then
      begin
        Memo1.Clear;
        Memo1.Lines.Add('��������� �������� �������');
        Memo1.Lines.Add('���������� ���� ����� n �� ��������.');
        Memo1.Lines.Add('');
        Memo1.Lines.Add('1)�������� ������������� ����');
        Memo1.Lines.Add('2)������� ���� ����� � ���� �����');
        Memo1.Lines.Add('3)������� "���������"');
      end
    else
      begin
        Memo2.Clear;
        for i:=length(Edit1.Text) downto 1 do
              newStr:=newStr+Edit1.Text[i];
        Memo2.Text := newStr;
      end;
end;

end.
