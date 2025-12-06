; ClassicDOS v1.0.1 Inno Setup Script
; Auto-generated for ClassicDOS v1.0.1

[Setup]
AppName=ClassicDOS
AppVersion=1.0.1
DefaultDirName={pf}\ClassicDOS
DefaultGroupName=ClassicDOS
OutputBaseFilename=ClassicDOS_v1.0.1_Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; Flags: unchecked

[Files]
Source: "C:\Users\janja\Desktop\ClassicDOS v.1.0.1\InstallerWorkspace\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs


[Icons]
Name: "{group}\ClassicDOS"; Filename: "{app}\ClassicDOS.bat"
Name: "{commondesktop}\ClassicDOS"; Filename: "{app}\ClassicDOS.bat"; Tasks: desktopicon

[Run]
Filename: "{app}\ClassicDOS.bat"; Description: "Launch ClassicDOS"; Flags: nowait postinstall skipifsilent
