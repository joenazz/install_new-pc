rem Hibernating off
powercfg -h off
shutdown /r

rem Dell Treiber Update
"\\em-fs-1\install\driver\DELL Command Update\Systems-Management_Application_H2CN6_WN_2.0.0_A00.EXE" /s
"%ProgramFiles(x86)%\Dell\CommandUpdate\dcu-cli.exe /silent"

rem Symantec Virenschutz
"\\EM-FS-1\install\Symantec Endpoint Protection\SymRedistributable.exe" -silent

rem Chocolatey
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
\\EM-FS-1\install\NDP451-KB2859818-Web.exe /q /norestart

cinst javaruntime
cinst flashplayeractivex
cinst flashplayerplugin
cinst adobereader-de
cinst IrfanView
cinst Opera
cinst GoogleChrome
cinst Firefox
cinst PDFCreator
cinst 7zip.install
cinst notepadplusplus.install
cinst sublime

cinst phpstorm
move "%appdata%\Microsoft\Windows\Start Menu\JetBrians" "%allusersprofile%\Microsoft\Windows\Start Menu\Programs"

cinst winmerge
cinst putty.install
cinst filezilla
cinst winscp
cinst tortoisesvn
cinst TortoiseGit

cinst TotalCommander
copy "\\EM-FS-1\install\Ghisler - Total Commander\wincmd.key" C:\totalcmd
move "%appdata%\Microsoft\Windows\Start Menu\Programs\Total Commander" "%allusersprofile%\Microsoft\Windows\Start Menu\Programs"

cinst freefilesync
cinst windirstat
cinst wincdemu

cinst pidgin
"%ProgramFiles(x86)%\7-Zip\7z" x \\EM-FS-1\install\pidgin\purple-plugin-pack-2.7.0.zip -o"%ProgramFiles(x86)%"\Pidgin * -r -x!README.txt

cinst libreoffice
cinst gimp
cinst InkScape

rem Hibernating on
powercfg -h on
shutdown /r