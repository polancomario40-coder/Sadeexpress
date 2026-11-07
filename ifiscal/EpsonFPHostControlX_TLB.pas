unit EpsonFPHostControlX_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 12/07/2013 12:14:26 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\EpsonFPHostControlX\EpsonFPHostControlX.ocx (1)
// LIBID: {706C3604-A82B-4400-9EE4-3433F1D8DB08}
// LCID: 0
// Helpfile: C:\Program Files\EpsonFPHostControlX\EPSONFPHOST.HLP
// HelpString: EpsonFPHostControlX Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  EpsonFPHostControlXMajorVersion = 1;
  EpsonFPHostControlXMinorVersion = 8;

  LIBID_EpsonFPHostControlX: TGUID = '{706C3604-A82B-4400-9EE4-3433F1D8DB08}';

  IID_IEpsonFPHostControl: TGUID = '{04D31B58-5E5C-4AAC-B57F-16856940D60D}';
  DIID_IEpsonFPHostControlEvents: TGUID = '{3886B3F5-A08D-440A-AEA3-3305A034DB41}';
  CLASS_EpsonFPHostControl: TGUID = '{E04D042E-01D5-4550-A050-77E8768E22DF}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TxCommPort
type
  TxCommPort = TOleEnum;
const
  Com1 = $00000000;
  Com2 = $00000001;
  Com3 = $00000002;
  Com4 = $00000003;

// Constants for enum TxBaudRate
type
  TxBaudRate = TOleEnum;
const
  br1200 = $00000000;
  br2400 = $00000001;
  br4800 = $00000002;
  br9600 = $00000003;
  br19200 = $00000004;
  br38400 = $00000005;

// Constants for enum TxProtocolType
type
  TxProtocolType = TOleEnum;
const
  protocol_Compatible = $00000000;
  protocol_Extended = $00000001;

// Constants for enum TxFiscalState
type
  TxFiscalState = TOleEnum;
const
  EFP_S_Close = $00000000;
  EFP_S_Idle = $00000001;
  EFP_S_Busy = $00000002;

// Constants for enum TxErrorType
type
  TxErrorType = TOleEnum;
const
  EFP_Success = $00000000;
  EFP_E_ComInUse = $00000001;
  EFP_E_InvalidCom = $00000002;
  EFP_E_ComAlreadyOpen = $00000003;
  EFP_E_ComAlreadyClose = $00000004;
  EFP_E_BadInitialization = $00000005;
  EFP_E_ComClose = $00000006;
  EFP_E_MaxDataLengthReached = $00000007;
  EFP_E_InvalidDataInField = $00000008;
  EFP_E_OperationInProgress = $00000009;
  EFP_E_WriteError = $0000000A;
  EFP_E_ReadTimeOut = $0000000B;
  EFP_E_NackReceived = $0000000C;
  EFP_E_InvalidIndex = $0000000D;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IEpsonFPHostControl = interface;
  IEpsonFPHostControlDisp = dispinterface;
  IEpsonFPHostControlEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  EpsonFPHostControl = IEpsonFPHostControl;


// *********************************************************************//
// Interface: IEpsonFPHostControl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {04D31B58-5E5C-4AAC-B57F-16856940D60D}
// *********************************************************************//
  IEpsonFPHostControl = interface(IDispatch)
    ['{04D31B58-5E5C-4AAC-B57F-16856940D60D}']
    function Get_CommPort: TxCommPort; safecall;
    procedure Set_CommPort(Value: TxCommPort); safecall;
    function Get_BaudRate: TxBaudRate; safecall;
    procedure Set_BaudRate(Value: TxBaudRate); safecall;
    function Get_ProtocolType: TxProtocolType; safecall;
    procedure Set_ProtocolType(Value: TxProtocolType); safecall;
    function Get_State: TxFiscalState; safecall;
    function Get_LastError: TxErrorType; safecall;
    function Get_ExtraFieldsCount: Integer; safecall;
    function Get_FiscalStatus: Smallint; safecall;
    function Get_PrinterStatus: Smallint; safecall;
    function Get_ReturnCode: Smallint; safecall;
    function OpenPort: WordBool; safecall;
    function ClosePort: WordBool; safecall;
    procedure Purge; safecall;
    function AddDataField(const DataField: WideString): WordBool; safecall;
    function SendCommand: WordBool; safecall;
    function GetExtraField(FieldNumber: Integer): WideString; safecall;
    procedure AboutBox; safecall;
    property CommPort: TxCommPort read Get_CommPort write Set_CommPort;
    property BaudRate: TxBaudRate read Get_BaudRate write Set_BaudRate;
    property ProtocolType: TxProtocolType read Get_ProtocolType write Set_ProtocolType;
    property State: TxFiscalState read Get_State;
    property LastError: TxErrorType read Get_LastError;
    property ExtraFieldsCount: Integer read Get_ExtraFieldsCount;
    property FiscalStatus: Smallint read Get_FiscalStatus;
    property PrinterStatus: Smallint read Get_PrinterStatus;
    property ReturnCode: Smallint read Get_ReturnCode;
  end;

// *********************************************************************//
// DispIntf:  IEpsonFPHostControlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {04D31B58-5E5C-4AAC-B57F-16856940D60D}
// *********************************************************************//
  IEpsonFPHostControlDisp = dispinterface
    ['{04D31B58-5E5C-4AAC-B57F-16856940D60D}']
    property CommPort: TxCommPort dispid 1;
    property BaudRate: TxBaudRate dispid 2;
    property ProtocolType: TxProtocolType dispid 3;
    property State: TxFiscalState readonly dispid 4;
    property LastError: TxErrorType readonly dispid 5;
    property ExtraFieldsCount: Integer readonly dispid 6;
    property FiscalStatus: Smallint readonly dispid 7;
    property PrinterStatus: Smallint readonly dispid 8;
    property ReturnCode: Smallint readonly dispid 9;
    function OpenPort: WordBool; dispid 10;
    function ClosePort: WordBool; dispid 11;
    procedure Purge; dispid 12;
    function AddDataField(const DataField: WideString): WordBool; dispid 13;
    function SendCommand: WordBool; dispid 14;
    function GetExtraField(FieldNumber: Integer): WideString; dispid 15;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  IEpsonFPHostControlEvents
// Flags:     (4096) Dispatchable
// GUID:      {3886B3F5-A08D-440A-AEA3-3305A034DB41}
// *********************************************************************//
  IEpsonFPHostControlEvents = dispinterface
    ['{3886B3F5-A08D-440A-AEA3-3305A034DB41}']
    procedure OnOpen; dispid 1;
    procedure OnClose; dispid 2;
    procedure OnAck; dispid 3;
    procedure OnNack; dispid 4;
    procedure OnIntermediateAnswer; dispid 5;
    procedure OnFinalAnswer; dispid 6;
    procedure OnError; dispid 7;
    procedure OnWrite(const Value: WideString); dispid 8;
    procedure OnRead(const Value: WideString); dispid 9;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TEpsonFPHostControl
// Help String      : EpsonFPHostControl Control
// Default Interface: IEpsonFPHostControl
// Def. Intf. DISP? : No
// Event   Interface: IEpsonFPHostControlEvents
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TEpsonFPHostControlOnWrite = procedure(ASender: TObject; const Value: WideString) of object;
  TEpsonFPHostControlOnRead = procedure(ASender: TObject; const Value: WideString) of object;

  TEpsonFPHostControl = class(TOleControl)
  private
    FOnOpen: TNotifyEvent;
    FOnClose: TNotifyEvent;
    FOnAck: TNotifyEvent;
    FOnNack: TNotifyEvent;
    FOnIntermediateAnswer: TNotifyEvent;
    FOnFinalAnswer: TNotifyEvent;
    FOnError: TNotifyEvent;
    FOnWrite: TEpsonFPHostControlOnWrite;
    FOnRead: TEpsonFPHostControlOnRead;
    FIntf: IEpsonFPHostControl;
    function  GetControlInterface: IEpsonFPHostControl;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function OpenPort: WordBool;
    function ClosePort: WordBool;
    procedure Purge;
    function AddDataField(const DataField: WideString): WordBool;
    function SendCommand: WordBool;
    function GetExtraField(FieldNumber: Integer): WideString;
    procedure AboutBox;
    property  ControlInterface: IEpsonFPHostControl read GetControlInterface;
    property  DefaultInterface: IEpsonFPHostControl read GetControlInterface;
    property State: TOleEnum index 4 read GetTOleEnumProp;
    property LastError: TOleEnum index 5 read GetTOleEnumProp;
    property ExtraFieldsCount: Integer index 6 read GetIntegerProp;
    property FiscalStatus: Smallint index 7 read GetSmallintProp;
    property PrinterStatus: Smallint index 8 read GetSmallintProp;
    property ReturnCode: Smallint index 9 read GetSmallintProp;
  published
    property Anchors;
    property CommPort: TOleEnum index 1 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property BaudRate: TOleEnum index 2 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property ProtocolType: TOleEnum index 3 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property OnOpen: TNotifyEvent read FOnOpen write FOnOpen;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnAck: TNotifyEvent read FOnAck write FOnAck;
    property OnNack: TNotifyEvent read FOnNack write FOnNack;
    property OnIntermediateAnswer: TNotifyEvent read FOnIntermediateAnswer write FOnIntermediateAnswer;
    property OnFinalAnswer: TNotifyEvent read FOnFinalAnswer write FOnFinalAnswer;
    property OnError: TNotifyEvent read FOnError write FOnError;
    property OnWrite: TEpsonFPHostControlOnWrite read FOnWrite write FOnWrite;
    property OnRead: TEpsonFPHostControlOnRead read FOnRead write FOnRead;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TEpsonFPHostControl.InitControlData;
const
  CEventDispIDs: array [0..8] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000005, $00000006,
    $00000007, $00000008, $00000009);
  CControlData: TControlData2 = (
    ClassID: '{E04D042E-01D5-4550-A050-77E8768E22DF}';
    EventIID: '{3886B3F5-A08D-440A-AEA3-3305A034DB41}';
    EventCount: 9;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$80004002*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnOpen) - Cardinal(Self);
end;

procedure TEpsonFPHostControl.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IEpsonFPHostControl;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TEpsonFPHostControl.GetControlInterface: IEpsonFPHostControl;
begin
  CreateControl;
  Result := FIntf;
end;

function TEpsonFPHostControl.OpenPort: WordBool;
begin
  Result := DefaultInterface.OpenPort;
end;

function TEpsonFPHostControl.ClosePort: WordBool;
begin
  Result := DefaultInterface.ClosePort;
end;

procedure TEpsonFPHostControl.Purge;
begin
  DefaultInterface.Purge;
end;

function TEpsonFPHostControl.AddDataField(const DataField: WideString): WordBool;
begin
  Result := DefaultInterface.AddDataField(DataField);
end;

function TEpsonFPHostControl.SendCommand: WordBool;
begin
  Result := DefaultInterface.SendCommand;
end;

function TEpsonFPHostControl.GetExtraField(FieldNumber: Integer): WideString;
begin
  Result := DefaultInterface.GetExtraField(FieldNumber);
end;

procedure TEpsonFPHostControl.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TEpsonFPHostControl]);
end;

end.
