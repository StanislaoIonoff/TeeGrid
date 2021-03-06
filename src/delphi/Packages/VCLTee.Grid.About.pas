{*********************************************}
{  TeeGrid Software Library                   }
{  VCL About TeeGrid...                       }
{  Copyright (c) 2016 by Steema Software      }
{  All Rights Reserved                        }
{*********************************************}
unit VCLTee.Grid.About;
{$I Tee.inc}

interface

uses
  {Winapi.}Windows, {Winapi.}Messages, {System.}SysUtils, {System.}Variants,
  {System.}Classes, {Vcl.}Graphics,
  {Vcl.}Controls, {Vcl.}Forms, {Vcl.}Dialogs, {Vcl.}StdCtrls, {Vcl.}ExtCtrls,
  VCLTee.Control, VCLTee.Grid,

  Tee.Grid.Data.Strings, Tee.Grid.Ticker;

type
  TVCLGridAbout = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    LVersion: TLabel;
    TeeGrid1: TTeeGrid;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }

    Data : TStringsData;
    Ticker : TGridTicker;

    procedure ColumnTextAlign;
    procedure CustomFormat;
    procedure FillNames;
    procedure FillRandomValues;
    procedure RandomCell(out ACol,ARow:Integer);
  public
    { Public declarations }

    class procedure Show(const AOwner:TComponent); static;
  end;

const
  TeeGrid_Version='v0.4 beta';
  TeeGrid_Version_Numeric=004;

implementation
