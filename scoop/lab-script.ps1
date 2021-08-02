# Scoop install script
# Lab software
scoop install git
scoop bucket add extras
scoop bucket add java
scoop bucket add jetbrains
scoop update *
scoop install rust eclipse-java vscode sweethome3d blender pycharm webstorm intellij-idea nodejs notepadplusplus --global
scoop update *
scoop uninstall lessmsi --global
# Copy shortcuts
Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Scoop Apps\*" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs" -force -recurse