#-*-coding:utf8;-*-
#qpy:2
#qpy:console

# Desenvolvido por Adriel Freud!
# Contato: usuariocargo2016@gmail.com 
# FB: http://www.facebook.com/xrn401
#   =>DebutySecTeamSecurity<=

import sys, os, androidhelper
from os import system
from os import chdir
from time import sleep

def impr():
    droid = androidhelper.Android()
    s = "[+] Cleanning Successfully.!"
    droid.makeToast(s)
    print(s)
    sys.exit(0)
    pass

pl = os.uname()
def clear():
    print('\n')
    print('Your System: '+pl[0])
    print('Using: '+pl[1])
    print('Info: '+pl[2])
    print('Info: '+pl[3])
    print('Arquitetura: '+pl[4])
    print('\n')
    chdir('/storage/emulated/0/DCIM')
    system('rm -rf .thumbnails')
    print('[+] Limpando .thumbnails...')
    chdir('/storage/emulated/0/WhatsApp')
    system('rm -rf databases')
    print('[+] Databases limpadas!')
    system('rm -rf .Shared')
    system('rm -rf .trash')
    print('[+] Crash limpadas!')
    chdir('/storage/emulated/0')
    system('rm -rf com.facebook.orca')
    system('rm -rf .face')
    sleep(2)
    print('[+] Arquivos Temporarios do FB Limpados!')
    chdir('/data/log')
    system('rm -rf *')
    print('[+] Limpando logs do sistema...')
    sleep(1)
    chdir('/storage/emulated/0/Android/obb')
    system('rm -rf *')
    chdir('/storage/emulated/0/Android/data/')
    system('rm -rf eu.thedarken.sdm')
    system('rm -rf com.meitu.pomelo')
    system('rm -rf com.google.android.youtube')
    system('rm -rf com.google.android.music')
    system('rm -rf com.google.android.apps.maps')
    system('rm -rf com.facebook.katana')
    system('rm -rf com.google.android.gms')
    system('rm -rf com.android.vending')
    system('rm -rf com.android.browser')
    chdir('/storage/emulated/0/')
    system('rm -rf Facebook\ Messenger')
    system('rm -rf .face')

def seg():  
    try:
        chdir('/data/tombstones')
        system('rm -rf *')
        chdir('/data/system/usagestats')
        system('rm -rf *')
        chdir('/cache')
        system('rm -rf *')
        chdir('/data/system/dropbox')
        system('rm -rf *')
        chdir('/data/anr')
        system('rm -rf *')
        chdir('/data/data/com.google.android.gms/files/AppDataSearch/main')
        system('rm -rf *')
        chdir('/data/data/com.google.youtube/cache')
        system('rm -rf *')
        chdir('/data/data/com.facebook.orca/cache')
        system('rm -rf *')
        chdir('/storage/emulated/0/Android/data/com.sec.android.gallery3d/cache')
        system('rm -rf *')
        clear()
    except:
        clear()

st = raw_input('Deseja Limpar os Status do WPP Armazenado no seu Dispositivo S/N? ')
if st == 'S' or 's':
    chdir('/storage/emulated/0/WhatsApp/media')
    system('rm -rf .Statuses')
    seg()
    impr()
    
elif st == 'N' or 'n':
    seg()
    impr()
else:
    print('\n[!] Nenhuma Das Opcoes e valida.!')
    pass
    
