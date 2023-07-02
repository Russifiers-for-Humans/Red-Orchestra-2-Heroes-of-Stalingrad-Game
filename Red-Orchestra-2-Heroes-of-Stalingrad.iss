; Инструкция https://jrsoftware.org/ishelp/index.php

; Всегда меняются
#define GameName "Red Orchestra 2 Heroes of Stalingrad"                                          ; Название игры
#define GameNameDash "Red-Orchestra-2-Heroes-of-Stalingrad"                                          ; Название игры без пробелов
#define GameNameEXE "ROgame"                                                              ; Название exe файла игры
#define GameVer "1.0"                                                                     ; Версия игры
#define GameAppIdSteam "35450"                                                             ; Ид игры в стиме
; От ситуации зависит
#define AppDescription "Одиноный режим игры Red Orchestra 2: Герои Сталинграда"                                     ; Описание программы
#define Typ "Game"                                                                    ; Тип приложения
; Практически никогда не меняется
#define AppVer "1"                                                                        ; Версия установщика
#define Platz "C:\Users\TeMeR\Documents\GitHub\"                                                    ; Место
; Константы
#define Copyright "Folk"                                                                  ; (констант)Копирайт
#define AppPublisher "Russifiers for Humans"                                              ; (констант)Название инициативы
#define AppPublisherDash "Russifiers-for-Humans"                                              ; (констант)Название инициативы
#define PublisherURL "https://steamcommunity.com/id/TeMeR55"                              ; (констант)Ссылка на автора
#define AppURL "https://github.com/" + AppPublisherDash + "/" +GameNameDash + "-" + Typ +"/releases"        ; Ссылка на руководство
; Сложные переменные  
#define Location Platz + "\" + GameNameDash + "-" + Typ                                       ; Место нахождение соурса
#define OriginalNameSetup Typ + "-" + GameNameDash                        ; Оригинальное наименование приложения
#define AppNameAndDescript GameName + " - " + AppDescription                              ; Название программы и описание
#define ProductVerName AppNameAndDescript + " версии " + GameVer                             ; Название программы для какой версии игры в системе

#define UnArcivProg "7zG.EXE"
#define FolderUnArcivProg "7z"

[Setup]
;Номер приложения для его удаление лучше все время не забывать разный совать. Проверка уникальный для: Red Orchestra 2: Heroes of Stalingrad GAME
AppId={{25E33F8C-4C43-405B-93D1-CBAD592A9B18}
//--------------------------------------App's information and version--------------------------------------\\
;Свойства приложения
AppName={#AppNameAndDescript}                                                   
AppVersion={#AppVer}
AppVerName={#ProductVerName}
AppCopyright={#Copyright}
AppContact={#PublisherURL}
AppComments={#Typ}
AppPublisher={#AppPublisher}
AppPublisherURL={#PublisherURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
AppReadmeFile={#AppURL}
VersionInfoCompany={#AppPublisher}
VersionInfoCopyright={#Copyright}
VersionInfoDescription={#AppDescription}
VersionInfoOriginalFileName={#OriginalNameSetup}  
VersionInfoProductName={#ProductVerName}
VersionInfoProductTextVersion={#AppVer}
VersionInfoVersion={#AppVer}     
//--------------------------------------Options--------------------------------------\\
; Если установлено значение «да», программа установки отобразит флажок «Не создавать папку в меню «Пуск»
AllowNoIcons=yes
; Имя папки в меню «Пуск»
DefaultGroupName={#AppPublisher}
; Путь по умолчанию
DefaultDirName={code:GetInstallationPath}
; Название установщика
OutputBaseFilename={#OriginalNameSetup}
; Если установлено значение «нет», отключает уведомление об "Существующей папке"
DirExistsWarning=no
; Если установлено значение «да», включает уведомление об "Не существующей папке"
EnableDirDoesntExistWarning=yes
;Если установлено значение «нет», включает страницу "Мастер приветствует"
DisableWelcomePage=no    
;Если установлено значение «нет», включает страницу "Спасибо за установку"
DisableFinishedPage=no
//--------------------------------------Compression--------------------------------------\\
; Метод сжатия
Compression=lzma2/ultra64
; Если установлено значение «да»,включает сжатие в один поток(лучше сжимает, но проблем больше) 
SolidCompression=yes
LZMAUseSeparateProcess=yes
LZMADictionarySize=1048576
LZMANumFastBytes=273
//--------------------------------------Files--------------------------------------\\
;Путь к фалу Лицензии
LicenseFile={#Location}\Licence.rtf
;Путь к фалу Описание
InfoBeforeFile={#Location}\Description.rtf                      
;InfoAfterFile=infoafter.txt
;Путь к фалу Иконка
SetupIconFile={#Location}\Icon.ico
;Путь к фалу Сетап
OutputDir={#Location}\
;Путь к фалу Картинки
WizardImageFile={#Location}\Pic.bmp
;Путь к фалу Картинки
WizardSmallImageFile={#Location}\Pic.bmp

;[Components]
;Name: "crack"; Description: "Crack"; Flags: checkablealone; Types: full compact
;Name: "dlc"; Description: "DLC";                                Flags: checkablealone; Types: full

[Files]
; Ресурсы  ExternalSize - cmd dir
Source: {#Location}\{#FolderUnArcivProg}\*; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: {#Location}\{#GameNameDash}\*;          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{tmp}\Red_Orchestra_2SP.zip.001";        DestDir: "{tmp}"; Flags: external deleteafterinstall; ExternalSize:  1992294400
Source: "{tmp}\Red_Orchestra_2SP.zip.002";        DestDir: "{tmp}"; Flags: external deleteafterinstall; ExternalSize:  1992294400
Source: "{tmp}\Red_Orchestra_2SP.zip.003";        DestDir: "{tmp}"; Flags: external deleteafterinstall; ExternalSize:  1992294400
Source: "{tmp}\Red_Orchestra_2SP.zip.004";        DestDir: "{tmp}"; Flags: external deleteafterinstall; ExternalSize:  1932428521

[Icons]
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:ProgramOnTheWeb,{#ProductVerName}}"; Filename: "{#AppURL}"
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:UninstallProgram,{#ProductVerName}}"; Filename: "{uninstallexe}"
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{#GameName}"; Filename: "{app}\{#GameNameEXE}.exe"; WorkingDir: "{app}";

;[Tasks]
;Name: "DesktopIcon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Components: crack

[Run]
Filename: "{app}\SP.cmd"; Parameters: "install"; Flags: runhidden
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\Red_Orchestra_2SP.zip.001  -y -o""{app}\"""
[UninstallDelete]
;Type: files; 		  Name: "{app}\binaries\cream_api.ini";                                   Components: crack  
;Type: filesandordirs; Name: "{app}\Binaries"
;Type: filesandordirs; Name: "{app}\Engine"
;Type: filesandordirs; Name: "{app}\ROGame"
[UninstallRun]
Filename: "{app}\MP.cmd"; Flags: runhidden; RunOnceId: "Uninstall"

[Code]
var
  InstallationPath: string;

function GetInstallationPath(Param: string): string;
    
begin
  { Обнаруженный путь кэшируется, так как он вызывается несколько раз }
  
  if InstallationPath = '' then
  begin
    if RegQueryStringValue(
         HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App {#GameAppIdSteam}',
         'InstallLocation', InstallationPath) then
    begin
      Log('Detected Steam installation: ' + InstallationPath);
    end
      else
    begin
      if IsWin64 then InstallationPath := ExpandConstant('{commonpf64}')
      else InstallationPath := ExpandConstant('{commonpf32}');
      InstallationPath:=InstallationPath +'/{#GameName}';
      Log('No installation detected, using the default path: ' + InstallationPath);
    end;
  end;
  Result := InstallationPath;
end;

//Downloader
var
  DownloadPage: TDownloadWizardPage;

function OnDownloadProgress(const Url, FileName: String; const Progress, ProgressMax: Int64): Boolean;
begin
  if Progress = ProgressMax then
    Log(Format('Successfully downloaded file to {tmp}: %s', [FileName]));
  Result := True;
end;

procedure InitializeWizard;
begin
  DownloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), @OnDownloadProgress);
end;
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if CurPageID = wpReady then begin
    DownloadPage.Clear;// sha256 7z
    DownloadPage.Add('https://github.com/Russifiers-for-Humans/Red-Orchestra-2-Heroes-of-Stalingrad-Game/releases/download/Final/Red_Orchestra_2SP.zip.001', 'Red_Orchestra_2SP.zip.001', '3f44de8f4a9e9d42daa12d2628cec164e1aed427f198dae5a073d1715d2f7ae9');
    DownloadPage.Add('https://github.com/Russifiers-for-Humans/Red-Orchestra-2-Heroes-of-Stalingrad-Game/releases/download/Final/Red_Orchestra_2SP.zip.002', 'Red_Orchestra_2SP.zip.002', 'dae347189a923d50387d933643204eecb7f8e7afa56a253bead9e16ee45c6fa4');
    DownloadPage.Add('https://github.com/Russifiers-for-Humans/Red-Orchestra-2-Heroes-of-Stalingrad-Game/releases/download/Final/Red_Orchestra_2SP.zip.003', 'Red_Orchestra_2SP.zip.003', '0d0a67b8058ef51c0a4dfb5ecb7025e141b4068e628ad07d6c70b8aed8159fd4');
    DownloadPage.Add('https://github.com/Russifiers-for-Humans/Red-Orchestra-2-Heroes-of-Stalingrad-Game/releases/download/Final/Red_Orchestra_2SP.zip.004', 'Red_Orchestra_2SP.zip.004', '344bf220898b3af4633db83f9e19fcaf070278fc93a88ad10c9a7aa93f722709');
    DownloadPage.Show;
    try
      try
        DownloadPage.Download; // This downloads the files to {tmp}
        Result := True;
      except
        if DownloadPage.AbortedByUser then
          Log('Aborted by user.')
        else
          SuppressibleMsgBox(AddPeriod(GetExceptionMessage), mbCriticalError, MB_OK, IDOK);
        Result := False;
      end;
    finally
      DownloadPage.Hide;
    end;
  end else
    Result := True;
end;

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl";
;Name: "english"; MessagesFile: "compiler:Default.isl";