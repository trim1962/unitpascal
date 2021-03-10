unit MyMath;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
  function Matematica_Collatz(n:Qword):Qword;
     function MyMathSigma(n:longint):longint;
     function MyMathThau(n:longint):longint;
implementation
   function MyMathSigma(n:longint):longint;
   var
     somma,i:longint;
     begin
      somma:=1;
  i:=2;
  if n<1 then MyMathSigma:=0;
    while i <n do
      begin
        If(n mod i = 0) Then Somma:=Somma+i;
        i:= i+1;
      end;
    MyMathSigma:=somma;
     end;

    function MyMathThau(n:longint):longint;
   var
     conta,i:longint;
     begin
      conta:=1;
  i:=2;
  if n<1 then MyMathThau:=0;
    while i <=n do
      begin
        If(n mod i = 0) Then conta:=conta+1;
        //writeln('n= ',n,'i= ',i,'conta= ',conta);
        i:= i+1;
      end;
    MyMathThau:=conta;
     end;
    function Matematica_Collatz(n:Qword):Qword;
begin
   If(n mod 2 = 0) Then
         Matematica_Collatz:=n Div 2
      Else
        Matematica_Collatz:=3*n+1;
end;
end.

