 #!/bin/bash
 
 ###
 
    # ! Mantenimiento
    # * Realizar un mantenimiento en SO linux Ubuntu
    # @author galexbh@protonmail.com
    # @version 0.1
 
 ###
 
 ###
 # set -e si falla un comando, set -e hará que todo el script salga, en lugar de simplemente continuar en la siguiente línea.
 
 # set -o para producir un código de retorno de falla si hay algún error de comando.
 
 # set -u trate las variables no definidas como un error e inmediatamente salga.
 ###
 
 set -eou pipefail
 
 IFS=$'\n\t' # El shell lo utiliza para determinar cómo dividir palabras
 
 setterm --reset # Muestra la cadena de reinicio del terminal, que normalmente restablece el terminal a su estado de encendido.
 
 clear
 
 setterm -background black # Terminal de color negro puede variar (red, blue, etc)
 
 if [["$(id -u)" !="0"]]; then # comprobar si se ejecuta como root
 echo "Este script debe ser ejecutado como root"
 sleep 3
 clear
 else
 echo "Este script sera ejecutado como SUPER ROOT"
 sleep 3
 clear
 fi
 
sudo apt update; sudo update-apt-xapian-index;
sudo apt install -f;sudo dpkg --configure -a;
sudo apt --fix-broken install

sudo update-grub; sudo update-grub2;
sudo apt-get autoremove; sudo apt autoremove; 
sudo apt purge; sudo apt remove

sudo rm -f /var/log/*.old /var/log/*.gz /var/log/apt/* /var/log/auth* /var/log/daemon* /var/log/debug* /var/log/dmesg* /var/log/dpkg* /var/log/kern* /var/log/messages* /var/log/syslog* /var/log/user* /var/log/Xorg* /var/crash/* # remover logs

sudo echo "" > ~/.bash_history

echo "Finalizado con Exito"
