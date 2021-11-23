#!/usr/bin/python
import os
import time
import requests
import json
import requests
from requests.structures import CaseInsensitiveDict

BRANCO='\033[1;29m'
VermelhoAll='\033[01;37;41m'
NADA='\033[0m'
CINZA='\033[02;37m'
DESTACAR='\033[01;37m'
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
SCOLOR='\033[0m'
SEMCOR='\033[8m'
BrancoAll='\033[03;37;47m'
LETRAPRETA='\033[02;30;47m'
PURPULA='\033[35m'
AZUL='\033[36m'
AMARELO='\033[33m'
OLAMAE =f"ㅤﾠㅤ⣿⣿⣿⣿⣿⠁⢰⠂⠐⠋⠊⠄⠂⢰⣆⠄⠂⠤⠄⡨⡀⠄⠄⠄⠄⠄⠠⠠\nﾠㅤㅤ⣿⣿⣿⣿⣿⠇⠄⠈⠄⠄⠄⠄⠄⠄⢸⣿⠄⠄⠄⠄⠄⠁⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⣿⡟⠄⠄⠄⠄⡀⡄⠠⢀⣤⣿⣿⠄⠄⠄⠄⠄⢐⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⣿⠁⠄⠸⠄⠄⢿⣷⣬⣿⣿⣿⣿⣀⣹⡤⡀⠄⢰⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⠇⠄⠄⠄⠄⠄⠘⣿⣿⣿⡿⢼⣿⣿⣿⠁⠄⠄⢸⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⠏⠄⠄⠄⠄⠄⠄⠄⠈⠻⣿⣆⣾⡿⠛⠁⠄⠄⠄⠄⡄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⡏⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠛⠁⠄⠄⠄⠄⠄⠄⠄⢃⠄⠄⠄⠄⠄ \nㅤㅤﾠ⡟⠄⣀⣤⣤⣄⠄⣠⣀⣀⣀⣀⠄⠄⠄⠄⠄⠄⡀⠄⣀⣀⣘⠄⠄⠄⠄⠄ \nㅤㅤﾠ⠄⣾⣿⣿⣿⡟⢰⣿⣿⣿⣿⣷⣷⣶⣿⣾⣿⣿⡇⢻⣿⣿⣿⣿⡄⠄⠄⠄ \nㅤㅤﾠ⠄⣿⣿⣿⡏⠃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⢟⡯⡟⣿⣷⠄⠄⠄ \nㅤㅤﾠ⠄⢹⣿⣿⢁⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣜⠿⠂⠄⠄ \nㅤㅤﾠ⠄⠄⢿⠇⣼⣿⣿⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⡷⡀⠄⠄ \nㅤㅤﾠ⠄⠄⠘⢐⣿⣿⠄⠄⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠄⢰⠘⡀ \nㅤㅤﾠ⠄⠄⠄⢸⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⢻⣟⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⠄⠄ \nㅤㅤﾠ⠄⠄⠄⠄⠻⣿⣿⣿⣿⣿⣿⣿⡿⣻⣿⣟⣾⠿⣿⣿⣿⣿⣿⣿⡿⠃⠠⠄ \nㅤㅤﾠ⢀⢐⡀⣤⣤⣬⣝⣛⣻⣟⣿⢭⣿⣿⡿⣿⣿⣿⣮⣼⣟⠻⣿⡝⠄⠄⠄⠠"

def Main():
 os.system('clear')
 print(f"{OLAMAE}")
 print(f"              {GREEN}MB Free     {NADA}")
 print(f"{DESTACAR}{AZUL}[ 1 ] - {PURPULA}Vivo{NADA}")
 print(f"{DESTACAR}{AZUL}[ 2 ] - {YELLOW}Oi{NADA}")
 print(f"{DESTACAR}{AZUL}[ 0 ] - {RED}Sair, tenho medo{AZUL}")
 print()
 option = input(f"Raj, escolhe uma carta{NADA} ")

 print()
 print()

 if( option == '1' or option == '01'):
  os.system('clear')
  OPERADORA = "VIVO"
  BANNER = f"ㅤﾠㅤ⣿⣿⣿⣿⣿⠁⢰⠂⠐⠋⠊⠄⠂⢰⣆⠄⠂⠤⠄⡨⡀⠄⠄⠄⠄⠄⠠⠠\nﾠㅤㅤ⣿⣿⣿⣿⣿⠇⠄⠈⠄⠄⠄⠄⠄⠄⢸⣿⠄⠄⠄⠄⠄⠁⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⣿⡟⠄⠄⠄⠄⡀⡄⠠⢀⣤⣿⣿⠄⠄⠄⠄⠄⢐⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⣿⠁⠄⠸⠄⠄⢿⣷⣬⣿⣿⣿⣿⣀⣹⡤⡀⠄⢰⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⠇⠄⠄⠄⠄⠄⠘⣿⣿⣿⡿⢼⣿⣿⣿⠁⠄⠄⢸⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⠏⠄⠄⠄⠄⠄⠄⠄⠈⠻⣿⣆⣾⡿⠛⠁⠄⠄⠄⠄⡄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⡏⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠛⠁⠄⠄⠄⠄⠄⠄⠄⢃⠄⠄⠄⠄⠄ \nㅤㅤﾠ⡟⠄⣀⣤⣤⣄⠄⣠⣀⣀⣀⣀⠄⠄⠄⠄⠄⠄⡀⠄⣀⣀⣘⠄⠄⠄⠄⠄ \nㅤㅤﾠ⠄⣾⣿⣿⣿⡟⢰⣿⣿⣿⣿⣷⣷⣶⣿⣾⣿⣿⡇⢻⣿⣿⣿⣿⡄⠄⠄⠄ \nㅤㅤﾠ⠄⣿⣿⣿⡏⠃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⢟⡯⡟⣿⣷⠄⠄⠄ \nㅤㅤﾠ⠄⢹⣿⣿⢁⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣜⠿⠂⠄⠄ \nㅤㅤﾠ⠄⠄⢿⠇⣼⣿⣿⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⡷⡀⠄⠄ \nㅤㅤﾠ⠄⠄⠘⢐⣿⣿⠄⠄⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠄⢰⠘⡀ \nㅤㅤﾠ⠄⠄⠄⢸⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⢻⣟⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⠄⠄ \nㅤㅤﾠ⠄⠄⠄⠄⠻⣿⣿⣿⣿⣿⣿⣿⡿⣻⣿⣟⣾⠿⣿⣿⣿⣿⣿⣿⡿⠃⠠⠄ \nㅤㅤﾠ⢀⢐⡀⣤⣤⣬⣝⣛⣻⣟⣿⢭⣿⣿⡿⣿⣿⣿⣮⣼⣟⠻⣿⡝⠄⠄⠄⠠{NADA}\n{PURPULA}              MBS {OPERADORA}{NADA}\n"
  print(f"{BANNER}")
  print(f"{DESTACAR}{AZUL}[ 1 ] - {GREEN}Ganhar{NADA} {AMARELO}MB{NADA} {GREEN}automático{NADA}")
  print(f"{DESTACAR}{AZUL}[ 2 ] - {GREEN}Ganhar{NADA} {AMARELO}MB com{NADA} {GREEN}sctoken{NADA} {PURPULA}Vivo{NADA}")
  print(f"{DESTACAR}{AZUL}[ 0 ] - {RED}Voltar {AZUL}")
  print()
   
  passi = input(f"Raj, escolhe uma carta{NADA} ")
 
  if passi == "1":
    os.system('clear')
    print(f"{BANNER}")
    print(f"{AMARELO} Ganhar MB automático é{NADA} {RED}somente com Chip escolhido{NADA}\n {AMARELO}para receber os MB,\nportanto,{NADA} {RED}não use{NADA} {GREEN}Wi-Fi{NADA} {AMARELO}e{NADA} {GREEN}VPN{NADA} {AMARELO}\npara que possa ser lido seu{NADA} {GREEN}sctoken{NADA} {AMARELO}e\n prosseguir para verificação de{NADA} {GREEN}ads{NADA} {AMARELO}no{NADA} {GREEN}número{NADA}\n\n")
    time.sleep(2)
    peo = input(f"{NADA}Tecle {GREEN}ENTER{NADA} do seu celular Xing Ling")
    print()
   
    try:    
     access = json.loads(requests.post('http://i.vivo.ddivulga.com/i/gp' , data = {'version' : '2'}).text)
     sctoken = access['sctoken']
    except:
     os.system('clear')
     print(f"{BANNER}\n{RED}sctoken vencido{NADA}")
     time.sleep(2)
     Main()

  elif passi == "2":
     os.system('clear')
     print(f"{BANNER}")
     sctoken = input(f"{AZUL}Cole um{NADA} {AMARELO}accessPass{NADA} {AZUL}da{NADA} {PURPULA}Vivo{NADA} {GREEN}")
  elif passi == "0":
     Main()
  else:
     Main()
    
  op = "VIVO"
  UrlReward="http://e.vivo.ddivulga.com/api/clickEvent"
  data = f"slotId=%5B%7B%22slotId%22%3A%22101%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22102%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22103%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22104%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22105%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22106%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22107%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22108%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%2C%7B%22slotId%22%3A%22109%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%5D&pageId=660224&insertionId=&insertionUUID=&insertionType=&referer=http%3A%2F%2Finternetgratis.vivo.com.br%2F&accessPass={sctoken}"
  url = "http://e.vivo.ddivulga.com/api/v2.1/fetch"
  headers = CaseInsensitiveDict()
  headers["Origin"] = "http://a.vivo.ddivulga.com"
  headers["Content-Type"] = "application/x-www-form-urlencoded"
  reapit=60
   
 elif( option == '2' or option == '02'):
  OPERADORA = "OI  "
  BANNER = f"ㅤﾠㅤ⣿⣿⣿⣿⣿⠁⢰⠂⠐⠋⠊⠄⠂⢰⣆⠄⠂⠤⠄⡨⡀⠄⠄⠄⠄⠄⠠⠠\nﾠㅤㅤ⣿⣿⣿⣿⣿⠇⠄⠈⠄⠄⠄⠄⠄⠄⢸⣿⠄⠄⠄⠄⠄⠁⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⣿⡟⠄⠄⠄⠄⡀⡄⠠⢀⣤⣿⣿⠄⠄⠄⠄⠄⢐⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⣿⠁⠄⠸⠄⠄⢿⣷⣬⣿⣿⣿⣿⣀⣹⡤⡀⠄⢰⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⠇⠄⠄⠄⠄⠄⠘⣿⣿⣿⡿⢼⣿⣿⣿⠁⠄⠄⢸⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⠏⠄⠄⠄⠄⠄⠄⠄⠈⠻⣿⣆⣾⡿⠛⠁⠄⠄⠄⠄⡄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⡏⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠛⠁⠄⠄⠄⠄⠄⠄⠄⢃⠄⠄⠄⠄⠄ \nㅤㅤﾠ⡟⠄⣀⣤⣤⣄⠄⣠⣀⣀⣀⣀⠄⠄⠄⠄⠄⠄⡀⠄⣀⣀⣘⠄⠄⠄⠄⠄ \nㅤㅤﾠ⠄⣾⣿⣿⣿⡟⢰⣿⣿⣿⣿⣷⣷⣶⣿⣾⣿⣿⡇⢻⣿⣿⣿⣿⡄⠄⠄⠄ \nㅤㅤﾠ⠄⣿⣿⣿⡏⠃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⢟⡯⡟⣿⣷⠄⠄⠄ \nㅤㅤﾠ⠄⢹⣿⣿⢁⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣜⠿⠂⠄⠄ \nㅤㅤﾠ⠄⠄⢿⠇⣼⣿⣿⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⡷⡀⠄⠄ \nㅤㅤﾠ⠄⠄⠘⢐⣿⣿⠄⠄⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠄⢰⠘⡀ \nㅤㅤﾠ⠄⠄⠄⢸⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⢻⣟⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⠄⠄ \nㅤㅤﾠ⠄⠄⠄⠄⠻⣿⣿⣿⣿⣿⣿⣿⡿⣻⣿⣟⣾⠿⣿⣿⣿⣿⣿⣿⡿⠃⠠⠄ \nㅤㅤﾠ⢀⢐⡀⣤⣤⣬⣝⣛⣻⣟⣿⢭⣿⣿⡿⣿⣿⣿⣮⣼⣟⠻⣿⡝⠄⠄⠄⠠{NADA}\n{YELLOW}              MBS {OPERADORA}{NADA}\n"
  os.system('clear')
  print(f"{BANNER}")
  print(f"{DESTACAR}{AZUL}[ 1 ] - {GREEN}Ganhar{NADA} {AMARELO}MB{NADA} {GREEN}automático{NADA}")
  print(f"{DESTACAR}{AZUL}[ 2 ] - {GREEN}Ganhar{NADA} {AMARELO}MB com{NADA} {GREEN}sctoken{NADA} {YELLOW}OI")
  print(f"{DESTACAR}{AZUL}[ 0 ] - {RED}Voltar {AZUL}")
  print()
   
  passi = input(f"Raj, escolhe uma carta{NADA} ")
 
  if passi == "1":
    os.system('clear')
    print(f"{BANNER}")
    print(f"{AMARELO} Ganhar MB automático é{NADA} {RED}somente com Chip escolhido{NADA}\n {AMARELO}para receber os MB,\nportanto,{NADA} {RED}não use{NADA} {GREEN}Wi-Fi{NADA} {AMARELO}e{NADA} {GREEN}VPN{NADA} {AMARELO}\npara que possa ser lido seu{NADA} {GREEN}sctoken{NADA} {AMARELO}e\n prosseguir para verificação de{NADA} {GREEN}ads{NADA} {AMARELO}no{NADA} {GREEN}número{NADA}\n\n")
    time.sleep(2)
    peo = input(f"{NADA}Tecle {GREEN}ENTER{NADA} do seu celular Xing Ling")
    print()
    UrlReward="http://e.oi.ddivulga.com/api/clickEvent"

    try:    
     access = json.loads(requests.post('http://e.oi.ddivulga.com/api/gp' , data = {'version' : '2'}).text)
     sctoken = access['sctoken']
     
    except:
     os.system('clear')     
     print(f"{BANNER}\n{RED}sctoken vencido{NADA}")
     time.sleep(2)
     Main()
 
  elif passi == "2":
     os.system('clear')
     print(f"{BANNER}")
     sctoken = input(f"{AZUL}Cole um{NADA} {GREEN}sctoken{NADA} {NADA} {AZUL}da{NADA} {AMARELO}Oi{NADA} {GREEN}")
  elif passi == "0":
     Main()
  else:
     Main()
  op = "OI"
  UrlReward="http://e.oi.ddivulga.com/api/clickEvent"
  data = f"slotId=%5B%7B%22slotId%22%3A301%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%5D&pageId=822068&insertionId=&insertionUUID=&insertionType=ANY&referer=&accessPass={sctoken}"
  url = "http://e.oi.ddivulga.com/api/v2.1/fetch"
  headers = CaseInsensitiveDict()
  headers["Origin"] = "http://e.oi.ddivulga.com"
  headers["Referer"] = "http://e.oi.ddivulga.com"
  headers["Content-Type"] = "application/x-www-form-urlencoded"
  reapit=60
   
 elif option == "0":
     os.system('clear')
     exit()
 else:
   os.system('clear')
   Main()
      
 advid = [ ]
 impressionid = [ ]
 tokens_on = 0
 iu = 0
 AdvName = [ ]
 adsON = "Mercedes"
 
 buscar(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, tokens_on, AdvName, iu, op, adsON)

def buscar(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, tokens_on, AdvName, iu, op, adsON):
 os.system('clear')
 print(f"{NADA}{BANNER}\n{YELLOW}Mães solteiras a 39m{NADA} ")
 time.sleep(2)
 try:
  X9deToken = json.loads(requests.post(url, headers=headers, data=data).text)

 except:
  os.system('clear')
  print(f"{BANNER}\n{RED}sctoken vencido{NADA}")
  time.sleep(2)
  Main()

 tokensnovos = 0
 while iu < 9:
  iu = iu + 1
  try:
   advidchecar = (X9deToken[f'10{iu}']['advId'])
   
   if advidchecar in advid:
    pass
   else:
    advid.append(X9deToken[f'10{iu}']['advId'])
   
   impressionidcheck = (X9deToken[f'10{iu}']['impressionEventId'])
   
   if impressionidcheck in impressionid:
    pass
   else:
    impressionid.append(X9deToken[f'10{iu}']['impressionEventId'])
   
   AdvNamecheck = (X9deToken[f'10{iu}']['advName'])
   
   if AdvNamecheck in AdvName:
    pass
   
   else:   
    AdvName.append(X9deToken[f'10{iu}']['advName'])
   
   tokens_on = tokens_on + 1
   tokensnovos = tokensnovos + 1
   adsON = "Audi"
  except:
   pass
   
 Numero = X9deToken['msisdn']
 FreeFire(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, AdvName, iu, op, tokensnovos, tokens_on, Numero, adsON)

def FreeFire(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, AdvName, iu, op, tokensnovos, tokens_on, Numero, adsON):

 os.system('clear')
 print(f"{BANNER}")
 print(f"{GREEN}{tokensnovos} ads dando sopa{NADA}")
 print()
 print(f"{GREEN}ads encontrados: {NADA} {GREEN}{tokens_on}{NADA}")
 print(f"{GREEN}Número{NADA} {GREEN}{Numero}{NADA}")
 print()
 print(f"{DESTACAR}{AZUL}[ 1 ] Encontrar mais ads {GREEN} estocar MB{NADA}")
 print(f"{DESTACAR}{AZUL}[ 2 ] Ganhar MB nos ads encontrados {GREEN} ( ͡° ͜ʖ ͡°){NADA}")
 print(f"{DESTACAR}{AZUL}[ 3 ] Ganhar MB no ads de preferência {GREEN}socar a {op} até o talo{NADA}")
 print(f"{DESTACAR}{AZUL}[ 0 ] Voltar {RED}acho que já estoquei MB demais{NADA}")
 print()
 resl = input(f"{AZUL}Raj, escolhe uma carta{NADA} ")
 
 if resl == '2':
  if "Audi" in adsON:
   pass
  else:
   print()
   print(f"{RED}sem ads no sctoken usado{NADA}")
   time.sleep(4)
   FreeFire(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, AdvName, iu, op, tokensnovos, tokens_on, Numero, adsON)
   
 elif resl == '1':
  buscar(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, tokens_on, AdvName, iu, op, adsON)    
  
 elif resl == '3':
 
  if "Audi" in adsON:
   TestagemIndividual(BANNER, NADA, LETRAPRETA, advid, impressionid, GREEN, RED, Numero, sctoken, reapit, headers, AdvName, UrlReward, url, op, iu, data, tokensnovos, tokens_on, adsON)
   
  else:
   print()
   print(f"{RED}sem ads no sctoken usado{NADA}")
   time.sleep(2)
   FreeFire(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, AdvName, iu, op, tokensnovos, tokens_on, Numero, adsON)
 
 elif resl == '0':
  Main()
 else:
  FreeFire(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, AdvName, iu, op, tokensnovos, tokens_on, Numero, adsON)
 
 print()
 headersi = CaseInsensitiveDict()
 headersi["Content-Type"] = "application/x-www-form-urlencoded"

 testador = 0
 testestokens = 0

 Envio(BANNER, NADA, LETRAPRETA, advid, impressionid, GREEN, RED, Numero, tokens_on, testador, testestokens, sctoken, reapit, headers, AdvName, UrlReward, url, op, iu, data, adsON)

def Envio(BANNER, NADA, LETRAPRETA, advid, impressionid, GREEN, RED, Numero, tokens_on, testador, testestokens, sctoken, reapit, headers, AdvName, UrlReward, url, op, iu, data, adsON):
  
 os.system('termux-wake-lock')
 for token in range(tokens_on):
  
  testador = testador + 1
  print()
  print(f"{NADA}{LETRAPRETA}           TESTADOR {testador}           {NADA}")
  print(f"{YELLOW}Adv Name: {AdvName[token]}")
  print(f"ImpressionID: {impressionid[token]}")
  print(f"AdvID: {advid[token]}{NADA}")
   
  try:
    contagem = 0
    while contagem < reapit:
      
      time.sleep(0.7)
      contagem = contagem + 1
      
      resp = requests.post(UrlReward, headers=headers, data=f"advId={advid[token]}&eventImpressionId={impressionid[token]}&apass={sctoken}").text
      
      if 'evtClickId' in resp:
        print(f"{GREEN}Ganhando MB ( ͡° ͜ʖ ͡°) - {contagem}{NADA}")
      
      else:
        print(f"{RED}sem ads no sctoken usado{NADA}")
        time.sleep(2)
        contagem = reapit
  except:
    pass
    
 testestokens = testestokens + 1
 Acabou(BANNER, NADA, LETRAPRETA, advid, impressionid, GREEN, RED, Numero, tokens_on, testador, testestokens, sctoken, reapit, headers, AdvName, UrlReward, url, op, iu, data, adsON)

def Acabou(BANNER, NADA, LETRAPRETA, advid, impressionid, GREEN, RED, Numero, tokens_on, testador, testestokens, sctoken, reapit, headers, AdvName, UrlReward, url, op, iu, data, adsON):

 os.system('clear')
 print(f"{BANNER}")
 print(f"{GREEN}Número {GREEN}{Numero}{NADA}")
 print(f"{GREEN}Ganhar MB com estes ads {testestokens}{NADA}")
 print()
 print(f"{DESTACAR}{AZUL}[ 1 ] Encontrar novos ads {GREEN}estocar MB{NADA}")
 print(f"{DESTACAR}{AZUL}[ 2 ] Tentar encontrar mais ads {GREEN}socar MB na {op} até o talo{NADA}")
 print(f"{DESTACAR}{AZUL}[ 0 ] Voltar {RED}acho que já estoquei MB demais{NADA}")
 print()
 option = input(f"{AZUL}Raj, escolhe uma carta{NADA} ")
 
 if option == '2':
    testador = 0
    Envio(BANNER, NADA, LETRAPRETA, advid, impressionid, GREEN, RED, Numero, tokens_on, testador, testestokens, sctoken, reapit, headers, AdvName, UrlReward, url, op, iu, data, adsON)
 
 if option == '1':
  advid = [ ]
  impressionid = [ ]
  tokens_on = 0
  iu = 0
  AdvName = [ ]
  buscar(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, tokens_on, AdvName, iu, op, adsON)
 elif option == "0":
    testador = 0
    Main()    
    
 else:
    Acabou(BANNER, NADA, LETRAPRETA, advid, impressionid, GREEN, RED, Numero, tokens_on, testador, testestokens, sctoken, reapit, headers, AdvName, UrlReward, url, op, iu, data, adsON)

def TestagemIndividual(BANNER, NADA, LETRAPRETA, advid, impressionid, GREEN, RED, Numero, sctoken, reapit, headers, AdvName, UrlReward, url, op, iu, data, tokensnovos, tokens_on, adsON):
 os.system('clear')
 print(f"{BANNER}")
 print(f"{GREEN}Número {GREEN}{Numero}{NADA}")
 print()
 try:
  contar = 0
  for i in range(tokens_on):
   contar = contar + 1
   print(f"ads {contar}")
   print(f"{YELLOW}Adv Name: {AdvName[i]}")
   print(f"ImpressionID: {impressionid[i]}")
   print(f"AdvID: {advid[i]}{NADA}")
   print()
 except:
  buscar(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, tokens_on, AdvName, iu, op, adsON)
 
 print(f"{DESTACAR}{AZUL}[ 0 ] {AMARELO}Voltar") 
 print()
 try:
  Escolha = int(input(f"{AZUL}Raj, escolhe uma carta{NADA} "))
  if Escolha == 0:
   FreeFire(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, AdvName, iu, op, tokensnovos, tokens_on, Numero, adsON)

  else:
   pass
 except:
  TestagemIndividual(BANNER, NADA, LETRAPRETA, advid, impressionid, GREEN, RED, Numero, sctoken, reapit, headers, AdvName, UrlReward, url, op, iu, data, tokensnovos, tokens_on, adsON)
  
 print()
 print(f"{NADA}{LETRAPRETA}           Verificando ads ( ͡° ͜ʖ ͡°)           {NADA}")
 try:
  contagem = 0
  Escolha = Escolha - 1
  while contagem < reapit:
      
   time.sleep(0.7)
   contagem = contagem + 1
      
   resp = requests.post(UrlReward, headers=headers, data=f"advId={advid[Escolha]}&eventImpressionId={impressionid[Escolha]}&apass={sctoken}").text
      
   if 'evtClickId' in resp:
    print(f"{GREEN}Ganhando MB ( ͡° ͜ʖ ͡°) - {contagem}{NADA}")
      
   else:
    print(f"{RED}sem ads no sctoken usado{NADA}")
    time.sleep(2)
    contagem = reapit
 except:
   pass  
  
 os.system('clear')
 print(f"{BANNER}")
 print(f"{GREEN}Número {GREEN}{Numero}{NADA}")
 print()
 print(f"{DESTACAR}{AZUL}[ 1 ] Ganhar MB em um ads de preferência {GREEN}vai brasiliam{NADA}")
 print(f"{DESTACAR}{AZUL}[ 2 ] Encontrar mais ads {GREEN}socar a {op} até o talo{NADA}")
 print(f"{DESTACAR}{AZUL}[ 0 ] Voltar {RED}acho que já estoquei MB demais{NADA}")
 print()
 option = input("Raj, escolhe uma carta ")
 
 if option == '1':
  TestagemIndividual(BANNER, NADA, LETRAPRETA, advid, impressionid, GREEN, RED, Numero, sctoken, reapit, headers, AdvName, UrlReward, url, op, iu, data, tokensnovos, tokens_on, adsON)
 
 elif option == '2':
  buscar(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, tokens_on, AdvName, iu, op, adsON)
 
 elif option == '3':
  Main()
  
 else: 
  FreeFire(BANNER, url, headers, data, RED, GREEN, NADA, sctoken, reapit, UrlReward, impressionid, advid, AdvName, iu, op, tokensnovos, tokens_on, Numero, adsON)
 
Main()