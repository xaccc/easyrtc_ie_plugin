; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={your_appId
AppName=EasyWebRTC_IEPlugin
AppVersion=0.9
AppPublisher=Priologic
AppPublisherURL=http://www.easyrtc.com
AppSupportURL=http://www.easyrtc.com
AppUpdatesURL=http://www.easyrtc.com
DefaultDirName={userappdata}\WebRTCIEPlugin
DisableDirPage=yes
DefaultGroupName=EasyWebRTC_IEPlugin
DisableProgramGroupPage=yes
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes
Uninstallable=yes
UninstallDisplayIcon={userappdata}\WebRTCIEPlugin\uninstall.ico
; http://blog.ksoftware.net/tag/ksign/
SignTool=kSign /d $qEasyRTC IE Plugin$q /du $qhttp://www.easyrtc.com$q $f

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\..\trunk\build\Release\crnspr.dll"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion
Source: "..\..\trunk\build\Release\crnss.dll"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion
Source: "..\..\trunk\build\Release\crssl.dll"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion
Source: "..\..\trunk\build\Release\icui18n.dll"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion
Source: "..\..\trunk\build\Release\icuuc.dll"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion
Source: "..\..\trunk\build\Release\protobuf_lite.dll"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion
Source: "..\..\trunk\build\Release\WebRTC_ATL.dll"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion
Source: "msvcp120.dll"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion
Source: "msvcr120.dll"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "register_webrtc_plugin.bat"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion
Source: "unregister_webrtc_plugin.bat"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion
Source: "uninstall.ico"; DestDir: "{userappdata}\WebRTCIEPlugin"; Flags: ignoreversion

[Run]
Filename: "{userappdata}\WebRTCIEPlugin\register_webrtc_plugin.bat"

[UninstallRun]
Filename: "{userappdata}\WebRTCIEPlugin\unregister_webrtc_plugin.bat"; WorkingDir: "{userappdata}\WebRTCIEPlugin"; Flags: skipifdoesntexist

