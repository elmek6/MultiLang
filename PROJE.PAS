unit proje;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmUzantilar = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUzantilar: TfrmUzantilar;

implementation

{$R *.dfm}

procedure TfrmUzantilar.BitBtn1Click(Sender: TObject);
var
  i       :Integer;
begin
  for i := memo1.Lines.Count downto 0 do
  begin
    memo1.Lines.Strings[i] := Trim(memo1.Lines.Strings[i]);
    if memo1.Lines.Strings[i]='' then
      memo1.Lines.Delete(i);
  end;
end;

end.
