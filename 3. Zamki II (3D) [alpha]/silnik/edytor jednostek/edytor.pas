unit edytor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, PNGImage;

type
  TForm1 = class(TForm)
    Rasa: TGroupBox;
    pole_nacja: TComboBox;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    pole_lista: TListBox;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    pole_nazwa: TLabeledEdit;
    pole_code: TLabeledEdit;
    pole_graf: TLabeledEdit;
    pole_koszt: TLabeledEdit;
    pole_koszt_ulepszenia: TLabeledEdit;
    pole_szykosc: TLabeledEdit;
    pole_zasieg: TLabeledEdit;
    pole_walka1: TRadioButton;
    pole_walka2: TRadioButton;
    pole_wyglad_poc: TLabeledEdit;
    pole_walka3: TRadioButton;
    pole_zycie: TLabeledEdit;
    pole_atak: TLabeledEdit;
    pole_czas_atak: TLabeledEdit;
    pole_czar: TLabeledEdit;
    pole_chodzenie: TComboBox;
    GroupBox3: TGroupBox;
    but_zapisz: TButton;
    but_wyjscie: TButton;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    Label2: TLabel;
    pole_cel: TCheckBox;
    Label3: TLabel;
    procedure but_wyjscieClick(Sender: TObject);
    procedure pole_walka1Click(Sender: TObject);
    procedure pole_walka2Click(Sender: TObject);
    procedure pole_walka3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure but_zapiszClick(Sender: TObject);
    procedure pole_listaClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dane:array of string;
  jednostek_w_bazie,aktualna_jednostka:integer;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  jednostek_w_bazie:=0;
  setlength(dane, jednostek_w_bazie);
  aktualna_jednostka:=0;
end;

procedure TForm1.but_wyjscieClick(Sender: TObject);
begin
close
end;

procedure aktualizuj_baze;
begin
dane[aktualna_jednostka]:=
   Form1.pole_code.Text+'!'+
   inttostr(Form1.pole_chodzenie.ItemIndex)+'!'+
   Form1.pole_nazwa.Text+'!'+
   Form1.pole_graf.Text+'!'+
   Form1.pole_koszt.Text+'!'+
   Form1.pole_koszt_ulepszenia.Text+'!'+
   Form1.pole_szykosc.Text+'!'+
   Form1.pole_zasieg.Text+'!'+
   Form1.pole_wyglad_poc.Text+'!'+
   Form1.pole_zycie.Text+'!'+
   Form1.pole_atak.Text+'!'+
   Form1.pole_czas_atak.Text+'!'+
   Form1.pole_czar.Text;
end;

procedure aktualizuj_pola;
var str:array of string; i:integer; znak:string; pos:integer;
begin
 setlength(str, 13);
 for i:=0 to 13 do
 begin
  str[i]:='';
  znak:='';
  pos:=1;
  while not (znak='!') do
   begin
   str[i]:=str[i]+znak;
   znak:=dane[aktualna_jednostka,pos];
   pos:=pos+1;
   end;
 end;

   Form1.pole_code.Text:=str[0];
   Form1.pole_chodzenie.ItemIndex:=strtoint(str[1]);
   Form1.pole_nazwa.Text:=str[2];
   Form1.pole_graf.Text:=str[3];
   Form1.pole_koszt.Text:=str[4];
   Form1.pole_koszt_ulepszenia.Text:=str[5];
   Form1.pole_szykosc.Text:=str[6];
   Form1.pole_zasieg.Text:=str[7];
   Form1.pole_wyglad_poc.Text:=str[8];
   Form1.pole_zycie.Text:=str[9];
   Form1.pole_atak.Text:=str[10];
   Form1.pole_czas_atak.Text:=str[11];
   Form1.pole_czar.Text:=str[12];
end;

procedure TForm1.pole_walka1Click(Sender: TObject);
begin
pole_zasieg.Text:='1';
pole_wyglad_poc.Text:='';
pole_czar.Text:='';

pole_zasieg.enabled:=false;
pole_wyglad_poc.enabled:=false;
pole_czar.Enabled:=false;

end;

procedure TForm1.pole_walka2Click(Sender: TObject);
begin
pole_czar.Text:='';

pole_zasieg.enabled:=true;
pole_wyglad_poc.enabled:=true;
pole_czar.Enabled:=false;
end;

procedure TForm1.pole_walka3Click(Sender: TObject);
begin
pole_wyglad_poc.Text:='';

pole_zasieg.enabled:=true;
pole_wyglad_poc.enabled:=false;
pole_czar.Enabled:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  inc(jednostek_w_bazie);
  setlength(dane,1+ jednostek_w_bazie);
  pole_lista.Items.Add('<nowa_jednostka>');

 case (pole_nacja.ItemIndex) of
 0:begin pole_code.Text:='nek_'+inttostr(pole_lista.Items.Count); end;
 1:begin pole_code.Text:='elf_'+inttostr(pole_lista.Items.Count); end;
 2:begin pole_code.Text:='stw_'+inttostr(pole_lista.Items.Count); end;
 3:begin pole_code.Text:='pie_'+inttostr(pole_lista.Items.Count); end;
 4:begin pole_code.Text:='kra_'+inttostr(pole_lista.Items.Count); end;
 5:begin pole_code.Text:='neu_'+inttostr(pole_lista.Items.Count); end;
 end;

   pole_chodzenie.ItemIndex:=0;
   pole_nazwa.Text:='';
   pole_graf.Text:='';
   pole_koszt.Text:='';
   pole_koszt_ulepszenia.Text:='';
   pole_szykosc.Text:='';
   pole_zasieg.Text:='';
   pole_walka1.Checked:=false;
   pole_walka2.Checked:=false;
   pole_wyglad_poc.Text:='';
   pole_walka3.Checked:=false;
   pole_zycie.Text:= '';
   pole_atak.Text:='';
   pole_czas_atak.Text:='';
   pole_czar.Text:='';
   pole_zasieg.enabled:=false;
   pole_wyglad_poc.enabled:=false;
   pole_czar.Enabled:=false;


end;

procedure TForm1.but_zapiszClick(Sender: TObject);
var plik:textfile;
i:integer;
begin
aktualizuj_baze;
 assignfile(plik,'scripts_normal\status.srt');

 rewrite(plik);

 for i:=1 to jednostek_w_bazie do
 begin
  writeln(plik,dane[i]);
 end;

 closefile(plik);
end;

procedure TForm1.pole_listaClick(Sender: TObject);
begin
aktualizuj_baze;

aktualna_jednostka:=pole_lista.ItemIndex;     // zmienia zaznaczenie

//

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 aktualizuj_pola;
end;

end.
