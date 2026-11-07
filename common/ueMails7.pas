unit ueMails7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdMessage, StdCtrls;

type
  TeMail = class(TForm)
    StatusBar1: TStatusBar;
    xMail: TIdSMTP;
    msg: TIdMessage;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure xMailConnected(Sender: TObject);
    procedure xMailDisconnected(Sender: TObject);
    procedure xMailStatus(axSender: TObject; const axStatus: TIdStatus;
      const asStatusText: String);
    procedure xMailWork(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
  private
    Body : TStringList;
    Files : TStringList;
    SendTo : TStringList;
    Subject : String;
    Tipo :    String;
    Error : boolean;
    Function Send() : integer;
  public
    function MailSend(xSendTo, xSubject, xBody, xFiles, xTipo : String; noUsarOutLook: Boolean = false): Integer; OverLoad;
    function MailSend(xSendTo, xSubject : String; xBody, xFiles : TStringList; xTipo: String ): Integer; OverLoad;
  end;

var
  eMail: TeMail;

implementation

uses Udata, UUtiles;

{$R *.DFM}


procedure TeMail.FormCreate(Sender: TObject);
begin
   Body := TStringList.Create ;
   Files := TStringList.Create ;
   SendTo := TStringList.Create ;
   Error := False;
   msg.clear;
   try
      xmail.Host :=  dm.GetParamIni('HOST');
      xmail.Port :=  StrToIntDef(dm.GetParamIni('PORT'),110);
      xmail.Username := dm.GetParamIni('USERID');
      xmail.Password := dm.GetParamIni('PASSWORD');
      if dm.GetParamIni('AUTENTICAR') <> 'SI' then
        xmail.AuthenticationType := atNone
      else
        xmail.AuthenticationType := atLogin;
   except
     on e: Exception do begin
      raise exception.create('Error de Parmetros ini :'+ e.Message);
     end;
   end
end;


function TeMail.MailSend(xSendTo, xSubject : String; xBody, xFiles : TStringList; xTipo: String ): Integer;
begin
  If (xSendto = '') or (xSubJect = '') or ((xBody.Text = '') or (xFiles.Text ='')) or (xTipo='') then
  begin
    abort;
  end;
  // recibe direcciones separada por ";"
  SendTo.Delimiter := ';';
  SendTo.DelimitedText := xSendTo;
  Subject := xSubject;
  Files := xFiles;
  Body := xBody;


  if xTipo = 'HTM' then Tipo := 'text/html'
  else if xTipo = 'RTF' then Tipo := 'text/enhanced'
  else if xTipo = 'XML' then Tipo := 'text/xml'
  else Tipo := 'text/plain';

  Result := Send;
end;

function TeMail.MailSend(xSendTo, xSubject, xBody, xFiles, xTipo : String; noUsarOutLook: Boolean = false): Integer;
begin
  if (dm.GetDefaultStr('USAR_OUTLOOK') = '1') and (not noUsarOutlook) then begin
    SendOutlookMail(xSendTo, xSubject, xBody, xFiles,true);
    Result := 0;
  end
  else begin
    If (xSendto = '') or (xSubJect = '') or ((xBody='') and (xFiles='')) or (xTipo='') then
    begin
      ShowMessage('Faltan parametros en el archivo de configuracion y no se esta usando Outlook para enviar correos');
      abort;
    end;
    // recibe direcciones separada por ";"
    SendTo.Delimiter := ';';
    SendTo.QuoteChar := #0;
    // debug mientras tanto...
    SendTo.DelimitedText := xSendTo; //'jorgemontas@verizon.net.do'; //xSendTo;
    SendTo.Delimiter := ',';
    Subject := xSubject;
    Files.Delimiter :=  ';';
    Files.DelimitedText := xFiles;
    Body.Text := xBody;

    if xTipo = 'HTM' then Tipo := 'text/html'
    else if xTipo = 'RTF' then Tipo := 'text/enhanced'
    else if xTipo = 'XML' then Tipo := 'text/xml'
    else Tipo := 'text/plain';

    Result := Send;
  end;
end;

Function TeMail.Send : integer;
var
  i : integer;
begin
  Result := 0;
  Show;
 try
    try
    
      msg.Sender.Address := dm.GetParamIni('LOCALEMAIL');
      msg.Sender.Name    := dm.GetParamIni('LOCALNAME');
      msg.From.Address := dm.GetParamIni('LOCALEMAIL');
      msg.From.Name    := dm.GetParamIni('LOCALNAME');
      msg.Subject := Subject;
      msg.Date := Now();
      msg.Recipients.EMailAddresses := SendTo.DelimitedText;
      for i := 0 to Files.Count -1 do
      begin
        TIdAttachment.Create(msg.MessageParts, files.Strings[i]);
       // agregar los adjuntos
      end;
      msg.ContentType := Tipo;
      msg.Body := Body;
      xmail.Connect;
      xmail.Send(msg);
    except
      on e: Exception do begin
         Result := 1;
         raise exception.create('Error enviando : ' + e.Message);
      end;
    end;
  finally
    msg.Clear;
    msg.MessageParts.Clear;
    xmail.Disconnect;
    Hide;
  end;

end;


procedure TeMail.xMailConnected(Sender: TObject);
begin
  StatusBar1.SimpleText := 'Connected';
end;

procedure TeMail.xMailDisconnected(Sender: TObject);
begin
  StatusBar1.SimpleText := 'Disconnected';
end;

procedure TeMail.xMailStatus(axSender: TObject; const axStatus: TIdStatus;
  const asStatusText: String);
begin
  If StatusBar1 <> nil then StatusBar1.SimpleText := asStatusText;
end;

procedure TeMail.xMailWork(Sender: TObject; AWorkMode: TWorkMode;
  const AWorkCount: Integer);
begin
  StatusBar1.SimpleText := IntToStr(AWorkCount)+' bytes';
end;

end.

