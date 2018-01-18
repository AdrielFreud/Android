# setup.sh is PythoNux
# Desenvolvido por Adriel Freud!
# Contato: businessc0rp2k17@gmail.com
# FB: http://www.facebook.com/xrn401
#   =>DebutySecTeamSecurity<=

#!/bin/bash
echo """
 ____        _   _           _   _
|  _ \ _   _| |_| |__   ___ | \ | |_   ___  __
| |_) | |_| | __| '_ \ / _ \|  \| | | | \ \/ /
|  __/|___  | |_| | | | (_) | |\  | |_| |>  <
|_|       |_|\__|_| |_|\___/|_| \_|\__,_/_/\_\

Powered by Adriel Freud, Giu DBS.

                [1] Menu.
                [2] Creditos.
		[3] Exit;

        [+] Escolha algumas da Opcoes acima.
"""

read -p "Interact>> " first

case $first in
"1")
echo ""
echo "######################"
echo "##                  ##"
echo "##   Ferramentas!   ##"
echo "##                  ##"
echo "######################"
echo ""
echo " [1] Scan de Portas"
echo " [2] netcat (nc)"
echo " [3] Whois"
echo " [4] Unzip"
echo " [5] Tar"
echo " [6] Localizar Hexadecimal"
echo " [7] Rede"
echo " [8] sha512sum encrypt"
echo " [9] wget"
echo " [10]"
echo ""
read -p "Interact>> " tool
case $tool in
	"1")
	echo ""
	read -p "Host a ser Scaneado: " ip
	echo ""
	busybox pscan -cb $ip | grep open
	echo ""
	echo "[+] Scan Finalizado !"
	busybox sh setup.sh
	;;
	"2")
	read -p "Deseja se conectar? ou iniciar o modo LISTEN  |  [1] for connect [2] for LISTEN: " net
	case $net in
  	"1")
    echo "############################"
    read -p "Host: " h
  	read -p "Port: " p
  	busybox nc $h $p
    echo "############################"
    sleep 2
    busybox sh setup.sh
    ;;
  	"2")
    echo "############################"
  	read -p "Your Port: " out
  	busybox nc -lp $out
    echo "############################"
    sleep 2
  	busybox sh setup.sh
  	;;
  	esac
	;;
  "3")
  echo "############################"
  echo ""
  read -p "Host: " remoteHost
  busybox whois $remoteHost
  echo "############################"
  sleep 2
  busybox sh setup.sh
  ;;
  "4")
  read -p "File to unzip: " file
  busybox unzip $file
  sleep 2
  busybox sh setup.sh
  ;;
  "5")
  echo "Exemple; Parameters and File: -vzxf arquivo.tar.gz for -vxjpf arq.tar.bz2"
  echo ""
  read -p "Parameters and File: " parametros
  busybox tar $parametros
  sleep 2
  busybox sh setup.sh
  ;;
  "6")
  echo "############################"
  read -p "Text: " texto
  echo $texto | busybox hd
  echo "############################"
  sleep 2
  busybox sh setup.sh
  ;;
  "7")
  echo "############################"
  echo ""
  read -p "[2] Deseja listar as configuraçoes de rede or tentar um toubleshooting [1]: " var
  case $var in
  	"1")
  	read -p "[1] for down [2] for UP: " dec
  	case $dec in
	  	"1")
	 	 ifconfig wlan0 down
	 	 ;;
	  	"2")
	 	 ifconfig wlan0 up
	 	 ;;
	 	 esac
	  sleep 2
  	busybox sh setup.sh
	  ;;
		"2")
    echo "############################"
		busybox ifconfig
		echo ""
		busybox route
	  echo ""
		busybox iproute
		echo "############################"
		sleep 2
  	busybox sh setup.sh
		;;
		esac
  ;;
  "8")
  echo "############################"
  read -p "Text: " text
  echo $text | busybox sha512sum
  echo ""
  echo "############################"
  sleep 2
  busybox sh setup.sh
  ;;
  "9")
  echo "############################"
  echo ""
  read -p "Url for wget: " url
  busybox wget $url
  echo ""
  echo "############################"
  sleep 2
  busybox sh setup.sh
  ;;
	esac
;;
"2")
echo""
echo """
##############################################
##                                          ##
##  Uma Ferramenta desenvolvida em Python!  ##
##    Para Fins Lucrativos e Didaticos      ##
##                                          ##
##          [-] PythonNux  V2.0 [-]         ##
##                                          ##
##############################################
"""
echo""
sleep 2
busybox sh setup.sh
;;
"3")
exit
;;
esac

