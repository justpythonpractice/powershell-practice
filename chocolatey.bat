@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install chocolatey-core.extension --force
choco install adobereader --force
choco install googlechrome --force
choco install firefox --force
choco install 7zip.install --force
choco install notepadplusplus.install --force
choco install vlc --force
choco install git.install --force
choco install nodejs.install --force
choco install putty.install --force
choco install sysinternals --force
choco install autohotkey.portable --force
choco install python3 --force
choco install curl --force
choco install treesizefree --force
choco install atom --force
choco install winscp.insta --forcell
choco install ruby --force
choco install spotify --force