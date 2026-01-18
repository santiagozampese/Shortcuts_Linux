#!/bin/bash

caminho_relativo_app=$(find . -name "Shortcut")
caminho_relativo_icon=$(find . -name "shortcut.png")
caminho_app=$(readlink -f $caminho_relativo_app)
caminho_icon=$(readlink -f $caminho_relativo_icon)
chmod +x $caminho_app

echo "[Desktop Entry]
Name=Shortcut
Type=Application
Terminal=true
Exec=$caminho_app
Icon=$caminho_icon
Categories=" > Shortcut.desktop
