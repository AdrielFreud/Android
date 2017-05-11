#-*-coding:utf8;-*-
#qpy:2
#qpy:console

# Desenvolvido por Adriel Freud!
# Contato: usuariocargo2016@gmail.com 
# FB: http://www.facebook.com/xrn401
#   =>DebutySecTeamSecurity<=

from os import system
from os import chdir
import sys, os
from time import sleep

pl = os.uname()
def clear():
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

try:
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
    clear()
except:
    clear()


print('\n[!] Limpeza Concluida!')
sys.exit(0)
