#!/usr/bin/python
import os
import time
import requests
import json
import requests
from requests.structures import CaseInsensitiveDict

BRANCO='\033[1;29m'
VermelhoAll='\e[01;37;41m'
NADA='\033[0m'
CINZA='\e[02;37m'
DESTACAR='\e[01;37m'
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
SCOLOR='\033[0m'
SEMCOR='\033[8m'
AZUL='\033[36m'
PURPULA='\033[35m'
AMARELO='\033[33m'
BrancoAll='\e\033[03;37;47m'
LETRAPRETA='\e\033[02;30;47m'



os.system('clear')
print()
print("         {PURPULA}=================================")
print("                {GREEN}MB Free @EhisOpeNer    ")
print("        ===================================")
print("               {AZUL}Qual brinquedo para hoje")
print("        ===================================")
print("            {DESTACAR}[ 1 ] - {YELLOW}Ganhar MB Vivo")
print("            {DESTACAR}[ 2 ] - {AMARELO}Ganhar MB Oi")
print("            {DESTACAR}[ 0 ] - {RED}Sair, tenho medo"{AZUL})
print("        ===================================")
print()
option = input("Raj, escolhe uma carta: ")

print()
print()

if( option == '1' or option == '01'):
 os.system('clear')
 OPERADORA = "VIVO"
 BANNER = f"============================================{NADA}\n{LETRAPRETA}                  MBS {OPERADORA}                  {NADA}\n============================================{NADA}"
 print(f"{BANNER}")
 print("1 - Ganhar MB automático (usar chip diretamente)")
 print("2 - Ganhar MB para crush")
 print("0 - Sair, tenho medo")
 print()
   
 passi = input("Raj, escolhe uma carta ")
 
 if passi == "1":
   os.system('clear')
   print(f"{BANNER}")
   print(f"{RED}Não use Wi-Fi, não use VPN, simplesmente use o chip alvo\nok?{NADA} daí seus {GREEN}número{NADA}será lido\ne então os ads da diversão liberados\n\n")
   peo = input(f"{NADA}Tecle no Enter do seu teclado xing ling")
   print()
   
   try:    
    access = json.loads(requests.post('http://i.vivo.ddivulga.com/i/gp' , data = {'version' : '2'}).text)
    sctoken = access['sctoken']
   except:
    os.system('clear')
    print(f"{BANNER}\n{RED}nada de trapaças{NADA}")
    time.sleep(5)
    exit()

 elif passi == "2":
    os.system('clear')
    print(f"{BANNER}")
    sctoken = input("Cole o AccessPass ")
 else:
    exit()
   
 
 UrlReward="http://e.vivo.ddivulga.com/api/clickEvent"
 data = f"slotId=%5B%7B%22slotId%22%3A%22101%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22102%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22103%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22104%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%5D&pageId=660224&insertionId=&insertionUUID=&insertionType=&referer=http%3A%2F%2Finternetgratis.vivo.com.br%2F&accessPass={sctoken}"
 url = "http://e.vivo.ddivulga.com/api/v2.1/fetch"
 headers = CaseInsensitiveDict()
 headers["Origin"] = "http://a.vivo.ddivulga.com"
 headers["Content-Type"] = "application/x-www-form-urlencoded"
 reapit=60
   
  
  
elif( option == '2' or option == '02'):
 OPERADORA = "OI  "
 BANNER = f"============================================{NADA}\n{LETRAPRETA}                  MBS {OPERADORA}                  {NADA}\n============================================{NADA}"
 os.system('clear')
 print(f"{BANNER}")
 print("1 - Ganhar MB automático (usar chip diretamente)")
 print("2 - Ganhar MB para crush")
 print("0 - Sair, tenho medo")
 print()
   
 passi = input("Raj, escolhe uma carta ")
 
 if passi == "1":
   os.system('clear')
   print(f"{BANNER}")
   print(f"{RED}Não use Wi-Fi, não use VPN, simplesmente use o chip alvo\nok?{NADA} daí seus {GREEN}número{NADA}será lido\ne então os ads da diversão liberados\n\n")
   peo = input(f"{NADA}Tecle no Enter do seu teclado xing ling")
   print()
   UrlReward="http://e.oi.ddivulga.com/api/clickEvent"

   try:    
    access = json.loads(requests.post('http://e.oi.ddivulga.com/api/gp' , data = {'version' : '2'}).text)
    sctoken = access['sctoken']
   except:
    os.system('clear')
    print(f"{BANNER}\n{RED}nada de trapaças{NADA}")
    time.sleep(5)
    exit()
 
 elif passi == "2":
    os.system('clear')
    print(f"{BANNER}")
    sctoken = input("Cole o sctoken ")
 else:
    exit()
    
 data = f"slotId=%5B%7B%22slotId%22%3A301%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%5D&pageId=822068&insertionId=&insertionUUID=&insertionType=ANY&referer=&accessPass={sctoken}"
 url = "http://e.oi.ddivulga.com/api/v2.1/fetch"
 headers = CaseInsensitiveDict()
 headers["Origin"] = "http://e.oi.ddivulga.com"
 headers["Content-Type"] = "application/x-www-form-urlencoded"
 reapit=9999
   
   


else:
  os.system('clear')
  exit()

os.system('clear')
print(f"{BANNER}\{DESTACAR}{AMARELO}Mães solteiras a 39m...{NADA}")
time.sleep(3)
try:
 fetch = requests.post(url, headers=headers, data=data).text
 X9deToken = json.loads(fetch)

except:
 os.system('clear')
 print(f"{BANNER}\n{RED}nada de trapaças{NADA}")
 time.sleep(5)
 exit()

advid = [ ]
impressionid = [ ]
tokens_on = 0
iu = 0

while iu < 18:
 iu = iu + 1
 
 try:
  advid.append(X9deToken[f'10{iu}']['advId'])
  
  impressionid.append(X9deToken[f'10{iu}']['impressionEventId'])
  
  tokens_on = tokens_on + 1
  
 except:
  pass
Numero = X9deToken['msisdn']
if tokens_on == '0':
   os.system('clear')
   print(f"{BANNER}")
   print(f"Número: {GREEN}{Numero}{NADA}")
   print(f"Ads: {GREEN}{tokens_on}{NADA}")
   print()
   print(f"0 - Sair {RED}Chega de merenda por hoje{NADA}")
   print()
   resl = input("Raj, escolhe uma carta ")
   exit()
else:
   os.system('clear')
   print(f"{BANNER}")
   print(f"Número: {GREEN}{Numero}{NADA}")
   print(f"Ads: {GREEN}{tokens_on}{NADA}")
   print()
   print(f"1 - É hora do show {GREEN}Ganhar MB{NADA}")
   print(f"0 - Sair {RED}Chega de merenda por hoje{NADA}")
   print()
   resl = input("Raj, escolhe uma carta ")
   
   if resl == '1':
     print()
     
   else:
     exit()

headers = CaseInsensitiveDict()
headers["Content-Type"] = "application/x-www-form-urlencoded"

for ih in range(999):
 for token in range(tokens_on):
  testador = 0
  testador = testador + 1
  print()
  print(f"{NADA}{LETRAPRETA}           Localizar Pai {testador}           {NADA}")
  
  try:
    contagem = 0
    while contagem < reapit:
      
      time.sleep(0.8)
      contagem = contagem + 1
      
      resp = requests.post("http://e.vivo.ddivulga.com/api/clickEvent", headers=headers, data=f"advId={advid[token]}&eventImpressionId={impressionid[token]}&apass={sctoken}").text
      
      if 'evtClickId' in resp:
        print(f"{GREEN}aumentando intensidade - {contagem}{NADA}")
      
      else:
        print(f"{RED}Pai não encontrado{NADA}")
        time.sleep(2)
        contagem = reapit
  except:
    pass

 os.system('clear')
 testestokens = 0
 testestokens = testestokens + 1
 print(f"{BANNER}")
 print(f"Número: {GREEN}{Numero}{NADA}")
 print(f"Ganhar MB nestes ads{GREEN}{testestokens}{NADA}")
 print()
 print(f"1 - Repetir a dose{GREEN}Ganhar mais MB{NADA}")
 print()
 optio = input("Raj, escolhe uma carta ")
 
 if option == '1':
    print()
 else:
    print()
   
