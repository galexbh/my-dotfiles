 #!/bin/bash
 
 echo Script para actualizar golang
 
 sudo rm -rf /usr/local/go
 
 curl -O https://dl.google.com/go/go1.17.2.linux-amd64.tar.gz # Cambiar la versión a lastest
 
 tar -xvf go1.17.2.linux-amd64.tar.gz
 sudo mv go /usr/local
 
 export GOROOT=/usr/local/go

 echo Finalizado con exito.
 
 go --version
