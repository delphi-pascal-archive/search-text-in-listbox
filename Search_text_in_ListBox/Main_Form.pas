{      -~<()>  DelphiCool  <()>~-
 www.ProgZed.com
             www.ProgZed.com/~worldvds
             www.ProgZed.com/~delphicool
delphicool.fr.st
Merci aux Personnes suivantes : ShareWareFreeWar, IbnElHeythem, Damien Ferey,
                                Christal, IorIor, Lancelot, hErectus, MrPhilex, ...
=====================================================================================}
 unit Main_Form;

 interface

 uses
   Windows, SysUtils, Classes, Controls, Forms, StdCtrls ;

 type
   TMainForm = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Edit1Change(Sender: TObject);
   private
     { Déclarations Privées }
   public
     { Déclarations Publiques}
   end;

var
   MainForm: TMainForm;

implementation

uses Cherche_Dans_ListBox;

{$R *.dfm}

procedure TMainForm.Edit1Change(Sender: TObject);
var
 i: integer;
begin
 i:=Cherche_ListBox(edit1.Text,ListBox1);
 Listbox1.ItemIndex:=i;
end;

end.
