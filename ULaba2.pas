unit ULaba2;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TFMain = class(TForm)
    menu1: TMainMenu;
    N1: TMenuItem;
    Open: TMenuItem;
    Save: TMenuItem;
    mniSaveKak: TMenuItem;
    exit: TMenuItem;
    N7: TMenuItem;
    Run: TMenuItem;
    OpenFile: TOpenDialog;
    SaveFile: TSaveDialog;
    split: TSplitter;
    grp1: TGroupBox;
    redactor: TMemo;
    grp2: TGroupBox;
    otvet: TMemo;
    procedure OpenClick(Sender: TObject);
    procedure exitClick(Sender: TObject);
    procedure mniSaveKakClick(Sender: TObject);
    procedure RunClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure redactorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;
  linee:string;
  Filee:TFileName;
  Ok:Boolean;
implementation

{$R *.dfm}

procedure TFMain.OpenClick(Sender: TObject);
var res:TModalResult; Filee:TFileName;
begin
  if (redactor.Lines.Count<>0)then
  begin
    //res:=MessageDlg('Вы точно хотите открыть файл? Вы же уже работаете с каким-то текстом',mtConfirmation,[mbYes,mbNo],0);
    if MessageDlg('Вы точно хотите открыть файл? Вы же уже работаете с каким-то текстом',mtConfirmation,[mbYes,mbNo],0)=6 then
    begin
      if Ok then
      begin
        if MessageDlg('Вы хотите сохранить открытый файл?',mtConfirmation,[mbYes,mbNo],0)=6 then
          if SaveFile.Execute then
          begin
            Filee:=SaveFile.FileName;
            redactor.Lines.SaveToFile(Filee);
          end;
      end;
      if OpenFile.Execute then
      begin
        Filee:=OpenFile.FileName;
        redactor.Lines.LoadFromFile(Filee);
        ok:=False;
      end;
    end;
  end
  else
    if OpenFile.Execute then
    begin
      Filee:=OpenFile.FileName;
      redactor.Lines.LoadFromFile(Filee);
      ok:=False;
    end;
end;

procedure TFMain.exitClick(Sender: TObject);
begin
  Close;
end;

procedure TFMain.mniSaveKakClick(Sender: TObject);
begin
  SaveFile.FileName:=Filee;
  if SaveFile.Execute then
  begin
    Filee:=SaveFile.FileName;
    otvet.Lines.SaveToFile(Filee);
  end;
end;

procedure TFMain.RunClick(Sender: TObject);
var slovo, erstslovo:string;  i:Integer;
begin
  otvet.Lines.Clear;
  repeat
    slovo:=InputBox('ВВод','Введите слово для поиска искомых строк','')
  until not(slovo='');
  for i:=1 to redactor.Lines.Count do
  begin
    erstslovo:=Copy(redactor.Lines[i],1,Pos(' ',redactor.Lines[i])-1);
    if (slovo=erstslovo) or (slovo=redactor.Lines[i])then
      otvet.Lines.Add(redactor.Lines[i-1]);
  end;
end;

procedure TFMain.SaveClick(Sender: TObject);
begin
 If Filee<>''then
 begin
  otvet.Lines.SaveToFile(Filee);
 end
 else
  mniSaveKak.Click;
end;

procedure TFMain.FormCreate(Sender: TObject);
begin
  Filee:='';
  otvet.Height:=grp1.Height-20;
  redactor.Height:=grp2.Height-20;
  Ok:=False;
end;


procedure TFMain.redactorKeyPress(Sender: TObject; var Key: Char);
begin
  Ok:=True;
end;

end.
