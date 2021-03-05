unit Vettori;

{$mode objfpc}{$H+}

interface

uses
   Mytype;
   procedure Vettori_boubledec(var vet:MyType_arrayQword);
   procedure Vettori_boublecre(var vet:MyType_arrayQword);
   procedure Vettori_stampavet(var vet:MyType_arrayQword);
   procedure Vettori_azzeradoppivet(var vet:MyType_arrayQword);
   procedure Vettori_azzera(var vet:MyType_arrayQword; max:Qword);
implementation
procedure Vettori_boubledec(var vet:MyType_arrayQword);
var
  scambio : boolean;
  i,temp:Qword;
begin
  repeat
scambio:=false;
for i:=1 to MyType_Max_Numero-1 do
begin
   if vet[i] < vet[i+1] then
      begin
        temp := vet[i];
        vet[i] := vet[i+1];
         vet[i+1] := temp;
         scambio := true;
      end;
end;

until (scambio = false);
end;
 procedure Vettori_boublecre(var vet:MyType_arrayQword);
var
  scambio : boolean;
  i,temp:Qword;
begin
  repeat
scambio:=false;
for i:=1 to MyType_Max_Numero-1 do
begin
   if vet[i] > vet[i+1] then
      begin
        temp := vet[i];
        vet[i] := vet[i+1];
         vet[i+1] := temp;
         scambio := true;
      end;
end;

until (scambio = false);
end;
procedure Vettori_stampavet(var vet:MyType_arrayQword);
var
  n:Qword;
  begin
    for n:=1 to MyType_Max_Numero do writeln(vet[n]);
  end;
   procedure Vettori_azzeradoppivet(var vet:MyType_arrayQword);
   var
     i,j:Qword;
     begin
   i:=2;
j:=1;
repeat
if vet[i]=vet[j] then vet[i]:=0 else j:=i;
i:=i+1;
until i>MyType_Max_Numero;
     end;
  procedure Vettori_azzera(var vet:MyType_arrayQword; max:Qword);
  var
    i:Qword;
    begin
    for i:=1 to max do vet[i]:=0;
    end;

end.

