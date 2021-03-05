unit MyUtility;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
   function MyUtility_lineatabella(indice:integer):string;
implementation
   function MyUtility_lineatabella(indice:integer):string;
   var
     i:integer;
     temp:string;
 begin
 temp:='';
   for i:=1 to indice do
   AppendStr(temp,'&');
 AppendStr(temp,'\\');
 MyUtility_lineatabella:=temp;
 end;

end.

