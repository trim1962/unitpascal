unit Mytype;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
  const
  MioType_C_FNAME = 'Collatz.tex';
  MioType_CSVNUM_FNAME = 'CollatzNUM.csv';
  MioType_CSVTOP_FNAME = 'CollatzTOP.csv';
  MyType_Tex_Fname_Primi = 'PRIMI.tex';
  MyType_Tex_Fname_Num_Divisori = 'numerodivisori.tex';
  MyType_Max_Numero =2400 ;
 // MioType_t_max =120000;
  MyType_Max_Riga=24;
  MyType_Max_Rigamezza=10;
   type
   MyType_arrayQword=array[1..MyType_Max_Numero] of Qword;
   MyType_arrayInteger=array[1..MyType_Max_Numero] of integer;
implementation

end.

