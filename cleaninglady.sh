# Desenvolvido por Adriel Freud!
# Contato: usuariocargo2016@gmail.com 
# FB: http://www.facebook.com/xrn401
#   =>DebutySecTeamSecurity<=

read -p "Voce esta logado como root S/N? " root
case $root in
    "N")
    echo "info ;" | busybox uname -a 
    echo ""
    cd /storage/emulated/0/DCIM
    rm -rf .thumbnails
    echo "[+] Limpando .thumbnails..."
    cd /storage/emulated/0/WhatsApp
    rm -rf databases
    echo "[+] Databases limpadas!"
    rm -rf .Shared
    rm -rf .trash
    echo "[+] Crash limpadas!"
    cd /storage/emulated/0
    rm -rf com.facebook.orca
    rm -rf .face
    sleep 2
    echo "[+] Arquivos Temporarios do FB Limpados!"
    echo "[+] Limpando logs do sistema..."
    sleep 1
    cd /storage/emulated/0/Android/obb
    rm -rf *
    cd /storage/emulated/0/Android/data/
    rm -rf eu.thedarken.sdm
    rm -rf com.meitu.pomelo
    rm -rf com.google.android.youtube
    rm -rf com.google.android.music
    #rm -rf com.google.android.apps.maps
    rm -rf com.facebook.katana
    rm -rf com.google.android.gms
    rm -rf com.android.browser
    cd /storage/emulated/0/
    rm -rf Facebook Messenger
    rm -rf .face
    cd /storage/emulated/0/WhatsApp/.Shared
    rm -rf *.tmp
    ;;

    "S")
    echo "info ;" | busybox uname -a 
    echo ""
    cd /data/log
    rm -rf *
    cd /data/tombstones
    rm -rf *
    cd /data/system/usagestats
    rm -rf *
    cd /data/system/dropbox
    rm -rf *
    cd /data/anr
    rm -rf *
    cd /data/data/com.google.android.gms/files/AppDataSearch/main
    rm -rf *
    cd /data/data/com.facebook.orca/cache
    rm -rf *
    cd /storage/emulated/0/Android/data/com.sec.android.gallery3d/cache
    rm -rf *
    cd /storage/emulated/0/DCIM
    rm -rf .thumbnails
    echo "[+] Limpando .thumbnails..."
    cd /storage/emulated/0/WhatsApp
    rm -rf databases
    echo "[+] Databases limpadas!"
    rm -rf .Shared
    rm -rf .trash
    echo "[+] Crash limpadas!"
    cd /storage/emulated/0
    rm -rf com.facebook.orca
    rm -rf .face
    sleep 2
    echo "[+] Arquivos Temporarios do FB Limpados!"
    cd /data/log
    rm -rf *
    echo "[+] Limpando logs do sistema..."
    sleep 1
    cd /storage/emulated/0/Android/obb
    rm -rf *
    cd /storage/emulated/0/Android/data/
    rm -rf eu.thedarken.sdm
    rm -rf com.meitu.pomelo
    rm -rf com.google.android.youtube
    rm -rf com.google.android.music
    #rm -rf com.google.android.apps.maps
    rm -rf com.facebook.katana
    rm -rf com.google.android.gms
    rm -rf com.android.browser
    cd /storage/emulated/0/
    rm -rf Facebook Messenger
    rm -rf .face
    ;;
esac
