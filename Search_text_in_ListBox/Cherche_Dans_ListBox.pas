unit Cherche_Dans_ListBox;

interface

uses
    Classes, StdCtrls;

 function Cherche_ListBox(Chaine:string;ListBox:TListBox):Integer;

implementation

function Cherche_ListBox(Chaine:string;ListBox:TListBox):Integer;
 var TayChain, ListCont, i, j : integer;
     s, s2                    : string;
     ListVirtuel              : TStringList;
  begin
      ListVirtuel := TStringList.Create;       { on creer une liste virtuelle }
      TayChain    := Length(Chaine);           { taille de la chainne à chercher }
      ListCont    := ListBox.Count-1;          { nb d'items -1}

    For i:= 0 to ListCont do
     begin
      s := ListBox.Items.Strings[i]; { on recup la ligne }
       s2 := '';
       if Length(s) > TayChain Then    { si la taille de l'item est la meme que celle de la chaine on ne fait rien }
        begin
          for j := 1 to TayChain do    { sinon on le met à la meme taille }
           begin
             s2 := s2 + s[j]; { On met cette ligne à la meme taille que la recherche }
           end;
        end
        else s2 := s;

      ListVirtuel.Add(s2); {on ajoute les items ds la liste virtuelle }
     end;

      result := ListVirtuel.IndexOf(Chaine); { le résultat en integer }

      ListVirtuel.Destroy;
end;

end.