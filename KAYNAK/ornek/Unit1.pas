unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Lang, StdCtrls;

type
  TForm1 = class(TForm)
    Language1: TLanguage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Language1Translate(Sender: TObject; AComponent: TComponent;
      PropertyName, OldValue: String; var NewValue: String);
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
begin
//  showmessage( application.ExeName);
  Language1.LanguageFile := 'C:\fixed\pl\DILLENDIR\KAYNAK\ornek\english.ini';
  Language1.Translate;
end;

procedure TForm1.Language1Translate(Sender: TObject;
  AComponent: TComponent; PropertyName, OldValue: String;
  var NewValue: String);
begin
 beep;
end;

end.
