 #!/bin/bash

echo Ubuntu

echo Script para actualizar visual studio code .deb

sudo apt-get update

wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest_AMD64.deb

sudo dpkg -i /tmp/code_latest_AMD64.deb

echo Finalizado con exito.
