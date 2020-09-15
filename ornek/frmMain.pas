unit frmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, ActnMan, Buttons, StdCtrls, dil;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    ActionManager1: TActionManager;
    Action1: TAction;
    Yeni1: TMenuItem;
    Dosya1: TMenuItem;
    Yeni2: TMenuItem;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    Action2: TAction;
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dille: TDil;

implementation

{$R *.dfm}

procedure TForm1.Button4Click(Sender: TObject);
begin
  dille.Translate(dpOriginalStore);
  memo1.Lines.Assign(dille.Originals);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  dille.IniFile := ExtractFilePath(Application.ExeName)+'english.ini';
  dille.Propertys.Add('Text');
  dille.Translate(dpOriginalStore);
  dille.Translate(dpTranslateToFile);

  ShowMessage(dille.ReadMsg('rsTest'));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  dille.Translate(dpTranslateToOriginal);
  ShowMessage(dille.ReadMsg('rsTest'));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  dille := TDil.Create(self);
  dille.AddMsg('rsTest', 'beyaz gül');
end;

end.
