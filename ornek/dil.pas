unit dil;

interface

uses
  Classes, TypInfo, Forms, IniFiles;

type
  TDilProcess = (dpFileExport,
                 dpOriginalStore,
                 dpTranslateToFile,
                 dpTranslateToOriginal);

  TDil = class(TComponent)
  private
    FDilProcess    :TDilProcess;
    FIniFile       :String;
    FFile          :TIniFile;
    FSeparator     :String;
    function HasProperty(c: TComponent; prop: String): Boolean;
    function ReadOriginalProp(prop, default :String) :String;
    function StrFormat(str :String) :String;
    procedure FindChangeProp(c :TComponent; sec: String);
    procedure SetProp(c :TComponent; PropInfo:PPropInfo; str :String);
    procedure TranslateObj(c: TComponent; section, ident, extantion: String);
    procedure Translating;
  protected
  public
    constructor Create(AOwner :TComponent); override;
    destructor Destroy; override;
    function ReadMsg(name :String) :String;
    procedure AddMsg(name, msg :String);
    procedure Translate(process :TDilProcess);
  published
    Propertys      :TStrings;
    Originals      :TStrings;
    property IniFile :String read FIniFile write FIniFile;
    property Separator :String read FSeparator write FSeparator;
  end;

const
  SECTION_MSG = 'message';  { Section Message}
  SECTION_PRG = 'language'; { Section Language }
  EOL = #13#10;             { End Of Line }
  NF  = #01;                { Not Found }
  NA  = '?!';               { Not Available }


implementation


{
  Dil bilesenin olusturulmasi ve ilk degerlerin atanmasi
}
constructor TDil.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);

  FSeparator := '\n';

  Propertys := TStringList.Create;
  Originals := TStringList.Create;

  Propertys.Add('Caption');
  Propertys.Add('Hint');
end;

{ ---------------------------------------------------------------------------- }

destructor TDil.Destroy;
begin
  Propertys.Free;
  Originals.Free;
  FFile.Free;

  inherited Destroy;
end;

{ ---------------------------------------------------------------------------- }

function TDil.ReadMsg(name :String) :String;
begin
  case FDilProcess of
    dpTranslateToFile:
      result := StrFormat(FFile.ReadString(SECTION_MSG, name, NA{?!}+name));
    dpTranslateToOriginal:
      result := StrFormat(ReadOriginalProp(name, NA{?!}+name));
  end;
end;

{ ---------------------------------------------------------------------------- }

function TDil.StrFormat(str :String) :String;
  var
    p     :Integer;
begin
  result := str;
  while Pos(FSeparator, result) > 0 do
  begin
    p := pos(FSeparator, result);
    delete(result, p, length(FSeparator));
    insert(EOL, result, p);
  end;
end;

{ ---------------------------------------------------------------------------- }

procedure TDil.AddMsg(name, msg :String);
begin
  Originals.Add(name + '=' + msg);
end;


{
  Property olarak Stringlistede sunulan özelliklerin
}
procedure TDil.FindChangeProp(c :TComponent; sec :String);
  var
    i   :Integer;

begin
  if (c=nil)or(c.Name='') then
    exit;

  for i := 0 to Propertys.Count - 1 do
  begin

    if HasProperty(c, Propertys.Strings[i]) then
      TranslateObj(c, sec, c.Name, Propertys.Strings[i]);

  end;
end;


{ Bilesenin o özelligi destekleyip desteklemedigini belirtir }
function TDil.HasProperty(c: TComponent; prop: String): Boolean;
begin
  result := getPropInfo(c.ClassInfo, prop) <> nil;
end;

{ ---------------------------------------------------------------------------- }

function TDil.ReadOriginalProp(prop, default :String) :String;
  var
    i, l     :Integer;
begin
  l := length(prop);
  for i := 0 to Originals.Count - 1 do
  begin

    result := Originals.Strings[i];
    if copy(result, 1, l) = prop then
    begin
      delete(result, 1, l+1);
      exit;
    end;

  end;
  result := default;
end;

{ ---------------------------------------------------------------------------- }

procedure TDil.SetProp(c :TComponent; PropInfo:PPropInfo; str :String);
begin
  if str<>NF then
    SetStrProp(c, PropInfo, StrFormat(str));
end;


{ ---------------------------------------------------------------------------- }

procedure TDil.Translate(process :TDilProcess);
begin
  FDilProcess := process;
  FFile := TIniFile.Create(FIniFile);
  Translating;
end;

{ ---------------------------------------------------------------------------- }

procedure TDil.Translating();
  var
    ac, c   :TComponent;
    i, j    :Integer;
begin
  for i := 0 to Application.ComponentCount - 1 do
  begin

    ac := Application.Components[i];
    FindChangeProp(ac, ac.Name);

    for j := 0 to ac.ComponentCount - 1 do
    begin

      c := ac.Components[j];
      FindChangeProp(c, ac.Name);

    end;

  end;
end;

{ ---------------------------------------------------------------------------- }

procedure TDil.TranslateObj(c :TComponent; section, ident, extantion :String);
  var
    path, s   :String;
    PropInfo  :PPropInfo;

begin
  if ident = section then
    path := section + '.' + extantion {frmMain.Caption}
  else
    path := section + '.' + ident + '.' + extantion; {frmMain.Button1.Caption}

  PropInfo := getPropInfo(c.ClassInfo, extantion);


  case FDilProcess of
    dpFileExport:
      begin
        s := GetStrProp(c, PropInfo);
        FFile.WriteString(section, path, s);
      end;

    dpOriginalStore:
      begin
        s := GetStrProp(c, PropInfo);
        Originals.Add(path + '=' + s);
      end;

    dpTranslateToFile:
        SetProp(c, PropInfo, FFile.ReadString(section, path, NF));

    dpTranslateToOriginal:
        SetProp(c, PropInfo, ReadOriginalProp(path, NF));
  end;

{
        showmessagefmt('sect=%s     %s.%s   -> %s',
        [section, ident, extantion, s]);
}

end;


end.

{
Bunlari biliyor musunuz ?
CTRL + I -> ile belgeniz icinde cok hizli arama yapabilirsiniz
ALT+SHIFT veya ALT+FARE -> ile block secim yapabilirsiniz
CTRL + K + I -> ile sectiginiz alani bir tab ileri alabilirsiniz
CTRL + K + U -> ile sectiginiz alani bir tab geri alabilirsiniz

}
