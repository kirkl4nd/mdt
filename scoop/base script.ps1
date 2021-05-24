# Scoop install script
# Lab software
scoop install git
scoop bucket add extras
scoop bucket add java
scoop bucket add jetbrains
scoop update *
scoop install git sudo nano vlc winrar obs-studio sharex neofetch sublime-text googlechrome audacity python openjdk --global
scoop update *
scoop uninstall lessmsi --global
# Copy shortcuts
Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Scoop Apps\*" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs" -force -recurse