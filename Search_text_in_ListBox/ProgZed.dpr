{        DelphiCool
       www.ProgZed.com
}

program ProgZed;

uses
  Forms,
  Main_Form in 'Main_Form.pas' {MainForm},
  Cherche_Dans_ListBox in 'Cherche_Dans_ListBox.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'www.ProgZed.com';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
