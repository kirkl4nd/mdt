# Scoop install script
# Lab software
mkdir c:\logs\scoop
echo "Begin base-script" >> c:\logs\scoop\log.txt
scoop install git
scoop bucket add extras
scoop bucket add java
scoop bucket add jetbrains
scoop update *
scoop install git sudo nano vlc winrar 7zip obs-studio sharex neofetch sublime-text googlechrome firefox audacity python openjdk --global
scoop update *
scoop uninstall lessmsi --global
# Copy shortcuts
Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Scoop Apps\*" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs" -force -recurse
echo "End base-script" >> c:\logs\scoop\log.txt