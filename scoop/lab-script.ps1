# Scoop install script
# Lab software
scoop install git
scoop bucket add extras
scoop bucket add java
scoop bucket add jetbrains
scoop update *
scoop install rust vscode intellij-idea pycharm webstorm eclipse-java nodejs notepadplusplus blender sweethome3d --global
scoop update *
scoop uninstall lessmsi --global
# Copy shortcuts
Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Scoop Apps\*" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs" -force -recurse