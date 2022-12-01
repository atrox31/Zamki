//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Menus.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Dialogs.hpp>
#include <ExtDlgs.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TMainMenu *MainMenu1;
        TMenuItem *Edycja1;
        TMenuItem *Plik1;
        TMenuItem *Nowa1;
        TMenuItem *Zapiszbaze1;
        TMenuItem *WYj1;
        TMenuItem *Nowa2;
        TMenuItem *Usu1;
        TMenuItem *Nowanapodstawie1;
        TMenuItem *Ustawienia1;
        TMenuItem *Opcjegeneratora1;
        TMenuItem *Rodzajgry1;
        TMenuItem *ZamkiIIv101;
        TMenuItem *inna1;
        TStatusBar *StatusBar1;
        TPanel *kontent_glowny;
        TPanel *Panel1;
        TButton *Button1;
        TOpenDialog *OpenDialog1;
        TSaveDialog *SaveDialog1;
        TLabel *Label1;
        TEdit *Edit1;
        TButton *Button2;
        TButton *Button3;
        TImage *Image1;
        TOpenPictureDialog *OpenPictureDialog1;
        TMenuItem *Wersjabazy1;
        TLabeledEdit *LabeledEdit1;
        TGroupBox *GroupBox1;
        TLabeledEdit *LabeledEdit2;
        TLabeledEdit *LabeledEdit3;
        TLabeledEdit *LabeledEdit4;
        TLabeledEdit *LabeledEdit5;
        TRadioButton *RadioButton1;
        TLabeledEdit *LabeledEdit6;
        TLabeledEdit *LabeledEdit7;
        TLabeledEdit *LabeledEdit8;
        TComboBox *ComboBox1;
        TEdit *Edit2;
        void __fastcall WYj1Click(TObject *Sender);
        void __fastcall Nowa2Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button3Click(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall ComboBox1Change(TObject *Sender);
        void __fastcall RadioButton1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
