Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install common.fireeye -y

winget install -e --id Git.Git
winget install -e --id Oracle.JavaRuntimeEnvironment
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Docker.DockerDesktop
winget install -e --id HexRays.IDA.Free
winget install -e --id Microsoft.dotNetFramework
winget install -e sysinternals
winget install -e --id NirSoft.ShellExView
winget install -e --id Oracle.VirtualBox
winget install -e --id 7zip.7zip
winget install -e --id DBBrowserForSQLite.DBBrowserForSQLite

git clone https://github.com/mentebinaria/retoolkit
git clone https://github.com/mac4n6/APOLLO
git clone https://github.com/abrignoni/ALEAPP
git clone https://github.com/abrignoni/iLEAPP
Invoke-WebRequest https://f001.backblazeb2.com/file/EricZimmermanTools/net6/All_6.zip -usebasicparsing