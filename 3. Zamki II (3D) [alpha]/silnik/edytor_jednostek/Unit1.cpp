//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

        //DEBUG
  int pozycja=1;
  int pozycja_max=1;
  AnsiString baza_nazwa = "";
  AnsiString baza_sciezka = "";
  AnsiString wersja_bazy = "1.0";
       // KONIEC DEBUG
  AnsiString wersja_programu = "1.0";
void aktualizuj_pasek_stanu()
{
 Form1->StatusBar1->Panels->Items[0]->Text = "Baza: "+baza_nazwa+" v"+wersja_bazy;
 Form1->StatusBar1->Panels->Items[1]->Text = "Pozycja: "+IntToStr(pozycja)+"/"+IntToStr(pozycja_max);
}

void zmiana_rodzaju_ataku()
{
 if (Form1->RadioButton1->Checked==true)
 {
  Form1->LabeledEdit6->Enabled=true;
  Form1->LabeledEdit7->Enabled=true;
  Form1->LabeledEdit8->Enabled=true;
 }
}
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------



void __fastcall TForm1::WYj1Click(TObject *Sender)
{
        Form1->Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Nowa2Click(TObject *Sender)
{
  pozycja_max++;
  pozycja++;
  aktualizuj_pasek_stanu();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button2Click(TObject *Sender)
{
        if( SaveDialog1->Execute() == True )
        {
         Form1->Edit1->Text = Form1->SaveDialog1->FileName;

         pozycja=1;
         pozycja_max=1;
         baza_nazwa = ExtractFileName(SaveDialog1->FileName);
         baza_sciezka = Form1->SaveDialog1->FileName;
         wersja_bazy = "1.0";

         Button1->Enabled=True;

         aktualizuj_pasek_stanu();
        };
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
Panel1->Visible=False;
Form1->kontent_glowny->Visible=true;
Form1->Caption = "Kreator jednostek v"+wersja_programu;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
      if( OpenDialog1->Execute() == True )
        {
         Form1->Edit1->Text = Form1->OpenDialog1->FileName;

         baza_nazwa = ExtractFileName(OpenDialog1->FileName);
         baza_sciezka = Form1->OpenDialog1->FileName;
         wersja_bazy = "DO_ODCZYTANIA";

         pozycja=1;    //DO ODCZYTANIA
         pozycja_max=1;//DO ODCZYTANIA

         Button1->Enabled=True;

         aktualizuj_pasek_stanu();
        };
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
  Form1->Panel1->Left=200;
  Form1->Panel1->Top=160;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::ComboBox1Change(TObject *Sender)
{
        switch (ComboBox1->ItemIndex)
        {
         case 0:
          Form1->Edit2->Text = "unekX";
         break;     
         case 1:
          Form1->Edit2->Text = "uelfX";
         break;
         case 2:
          Form1->Edit2->Text = "ustwX";
         break;
         case 3:
          Form1->Edit2->Text = "upieX";
         break;
         case 4:
          Form1->Edit2->Text = "ukraX";
         break;
         case 5:
          Form1->Edit2->Text = "uneuX";
         break;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RadioButton1Click(TObject *Sender)
{
 zmiana_rodzaju_ataku();        
}
//---------------------------------------------------------------------------

