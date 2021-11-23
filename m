#!/bin/bash
yes| termux-setup-storage > /dev/null 2>&1
clear
MSGS=("⣿⣿⣯⠉⠄⠄⠄⠄⠄⠄⡄⠄⠄⠄⠄⠄⠄⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⡟⠁⠄⠄⠄⠄⠄⢀⢀⠃⠄⠄⠄⠄⠄⠄⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⡇⠄⠄⣾⣳⠄⠄⢀⣄⣦⣶⣴⠂⢒⠄⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⡄⠄⠈⠚⡆⠄⢸⣿⣿⣿⣯⠋⡏⠄⠄⢸⣿⣿⣿⠿⠛⠛⠿⣿⣿⣿⣿⣿
⣿⣿⠟⣂⣀⣀⣀⡀⠠⠻⣷⣎⡼⠞⠓⠦⣤⣛⣋⣭⣴⣾⣿⣿⣷⣌⠻⣿⣿⣿
⣿⠋⣼⣿⣿⣿⣿⣿⣷⣦⣍⣙⠻⠳⠄⠄⠈⠙⠿⢿⣿⣿⣿⣿⣿⡟⣰⣿⣿⣿
⡟⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⣀⠄⠄⢀⣤⣤⣭⡛⠛⣩⣴⣿⣿⣿⣿
⣷⠸⠿⠛⠉⠙⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⠷⠦⣹⣿⣿⣿⣿
⣿⣧⠄⠄⠄⢀⣴⣷⣶⣦⣬⣭⣉⣙⣛⠛⠿⠿⠿⠟⠁⡀⠄⠄⠄⢁⣿⣿⣿⣿
⣿⣿⡅⠄⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣍⠲⣶⣤⣄⡀⠄⣴⣿⣿⣿⣿⣿
⣿⣿⣷⠄⣾⡏⢿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠄⠹⣷⡌⢿⣿⣿⣷⣦⡙⢿⣿⣿⣿
⣿⣿⣿⣷⡌⢷⡘⣿⣿⣿⣿⣿⣿⣧⣀⣀⡀⠄⠈⠹⡈⣿⣿⣿⣿⣿⣦⡙⣿⣿
⣿⣿⣿⣿⣿⣎⢷⡘⢿⣿⣿⣿⣿⣿⣿⣿⠃⠄⣼⣶⡇⣿⣿⣿⣿⣿⣿⠓⠜⣿
⣿⣿⣿⣿⣿⣿⣎⢻⣦⡙⠿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠄⣿⣿⣿⣿⣿⣿⣄⡀⢸
⣿⣿⣿⣿⣿⡿⢃⢼⣿⣿⣷⣤⣍⣉⣙⣛⣛⣉⣥⡄⠄⢿⣿⣿⣿⣿⡿⠟⣥⣿
⣿⣿⣿⡿⢋⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⢁⣷⣤⣍⣉⣉⣭⣴⣾⣿⣿")
IMG2=("⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⠋⠉⠙⠻⠿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⠄⠹⣿⣿⣶⣶⣦⣬⢹⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠄⠄⠄⣰⣧⡀⠄⠄⠄⠄⠈⢙⡋⣿⣿⣿⢸⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⠰⠼⢯⣿⣿⣦⣄⠄⠄⠄⠈⢡⣿⣿⣿⢸⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⠸⠤⠕⠛⠙⠷⣿⡆⠄⠄⠄⣸⣿⣿⡏⣼⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣴⣿⣿⣿⢡⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄⠄⠄⠄⠄⣄⠄⢀⠄⠄⢀⣤⣾⣿⣿⣿⢃⣾⣿⣿⣿
⣿⣿⣿⣿⣿⣿⠿⣛⣡⣄⣀⠄⠠⢴⣿⣿⡿⣄⣴⣿⣿⣿⣿⣿⢃⣾⣿⣿⣿⣿
⣿⣿⣿⣿⣿⡏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣩⡽⡁⢸⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⢃⣿⣿⢟⣿⣿⣿⣿⣿⣮⢫⣿⣿⣿⣿⣿⣟⢿⠃⠄⢻⣿⣿⣿⣿
⣿⣿⣿⣿⡿⣸⠟⣵⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣷⣄⢰⡄⢿⣿⣿⣿
⣿⣿⣿⣿⡇⠏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠹⡎⣿⣿⣿
⣭⣍⠛⠿⠄⢰⠋⡉⠹⣿⣿⣿⣿⣿⣿⠙⣿⣿⣿⣿⣿⣿⡟⢁⠙⡆⢡⣿⣿⣿
⠻⣿⡆⠄⣤⠈⢣⣈⣠⣿⣿⣿⣿⣿⠏⣄⠻⣿⣿⣿⣿⣿⣆⣈⣴⠃⣿⣿⣿⣿
⡀⠈⢿⠄⣿⡇⠄⠙⠿⣿⡿⠿⢋⣥⣾⣿⣷⣌⠻⢿⣿⣿⡿⠟⣡⣾⣿⣿⠿⢋
⠛⠳⠄⢠⣿⠇⠄⣷⡑⢶⣶⢿⣿⣿⣿⣽⣿⣿⣿⣶⣶⡐⣶⣿⠿⠛⣩⡄⠄⢸")
IMG3=("⠄⠄⠄⣀⣞⣵⢣⣩⣚⣞⠿⢍⡧⡻⡿⠟⠗⣄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⢴⢿⢸⢘⢽⢓⢺⣷⣦⣯⣽⠪⢃⡄⡞⡇⢿⣦⡀⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠸⠈⠄⠄⠈⠢⠻⣫⣯⣯⠯⠝⢈⣷⡂⣽⡆⡿⠃⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⢀⡀⣤⣤⣦⣶⣿⢸⣿⢋⣢⣯⣯⣓⣼⣼⣯⠞⣫⠄⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⣵⣿⣿⣿⣿⣿⠿⣣⡅⣟⢽⠟⢵⣾⣾⣶⣦⣉⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠙⠿⠿⢟⣫⣶⣿⣿⡇⢯⠲⣁⣈⣹⣽⣿⣿⣿⣷⣦⡀⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠈⣿⠿⢟⣫⣽⣶⣾⣿⣿⣿⣿⣿⠿⠿⠛⠉⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⣠⣴⣶⣿⡿⢟⣛⣭⣭⣯⣶⣶⣦⣤⣀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⣠⣾⢿⡿⠿⣛⣥⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⣷⣿⣿⣾⣶⣤⣄⠄⠄⠄
⢀⡞⠅⡜⣼⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣵⣿⣿⣿⣿⣿⣿⣿⣷⣆⠄
⠄⣼⣧⡑⠑⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⣽⠷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆
⢸⣿⣷⣶⣷⣶⣶⣮⣭⣿⣿⣭⣯⢋⣵⡾⢃⣾⢊⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇
⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡘⠛⣐⣭⣶⣿⣿⣾⣛⣻⣿⣿⣿⣿⣿⡟⠄
⠐⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣲⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠄⠄
⠄⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠄⠄⠄")
IMG4=("⣿⣿⡻⠿⣳⠸⢿⡇⢇⣿⡧⢹⠿⣿⣿⣿⣿⣾⣿⡇⣿⣿⣿⣿⡿⡐⣯⠁ ⠄⠄
⠟⣛⣽⡳⠼⠄⠈⣷⡾⣥⣱⠃⠣⣿⣿⣿⣯⣭⠽⡇⣿⣿⣿⣿⣟⢢⠏⠄ ⠄
⢠⡿⠶⣮⣝⣿⠄⠄⠈⡥⢭⣥⠅⢌⣽⣿⣻⢶⣭⡿⠿⠜⢿⣿⣿⡿⠁⠄⠄
⠄⣼⣧⠤⢌⣭⡇⠄⠄⠄⠭⠭⠭⠯⠴⣚⣉⣛⡢⠭⠵⢶⣾⣦⡍⠁⠄⠄⠄⠄
⠄⣿⣷⣯⣭⡷⠄⠄⢀⣀⠩⠍⢉⣛⣛⠫⢏⣈⣭⣥⣶⣶⣦⣭⣛⠄⠄⠄⠄⠄
⢀⣿⣿⣿⡿⠃⢀⣴⣿⣿⣿⣎⢩⠌⣡⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠄⠄⠄
⢸⡿⢟⣽⠎⣰⣿⣿⣿⣿⣿⣿⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠄⠄
⣰⠯⣾⢅⣼⣿⣿⣿⣿⣿⣿⡇⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠄
⢰⣄⡉⣼⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠄
⢯⣌⢹⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄
⢸⣇⣽⣿⣿⣿⣿⣿⣿⣿⣿⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄
⢸⣟⣧⡻⣿⣿⣿⣿⣿⣿⣿⣧⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄
⠈⢹⡧⣿⣸⠿⢿⣿⣿⣿⣿⡿⠗⣈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄
⠄⠘⢷⡳⣾⣷⣶⣶⣶⣶⣶⣾⣿⣿⢀⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠄
⠄⠄⠈⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄
⠄⠄⠄⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠄⠄")
IMG5=("⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⠋⠉⠙⠻⠿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⠄⠹⣿⣿⣶⣶⣦⣬⢹⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠄⠄⠄⣰⣧⡀⠄⠄⠄⠄⠈⢙⡋⣿⣿⣿⢸⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⠰⠼⢯⣿⣿⣦⣄⠄⠄⠄⠈⢡⣿⣿⣿⢸⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⠸⠤⠕⠛⠙⠷⣿⡆⠄⠄⠄⣸⣿⣿⡏⣼⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣴⣿⣿⣿⢡⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄⠄⠄⠄⠄⣄⠄⢀⠄⠄⢀⣤⣾⣿⣿⣿⢃⣾⣿⣿⣿
⣿⣿⣿⣿⣿⣿⠿⣛⣡⣄⣀⠄⠠⢴⣿⣿⡿⣄⣴⣿⣿⣿⣿⣿⢃⣾⣿⣿⣿⣿
⣿⣿⣿⣿⣿⡏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣩⡽⡁⢸⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⢃⣿⣿⢟⣿⣿⣿⣿⣿⣮⢫⣿⣿⣿⣿⣿⣟⢿⠃⠄⢻⣿⣿⣿⣿
⣿⣿⣿⣿⡿⣸⠟⣵⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣷⣄⢰⡄⢿⣿⣿⣿
⣿⣿⣿⣿⡇⠏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠹⡎⣿⣿⣿
⣭⣍⠛⠿⠄⢰⠋⡉⠹⣿⣿⣿⣿⣿⣿⠙⣿⣿⣿⣿⣿⣿⡟⢁⠙⡆⢡⣿⣿⣿
⠻⣿⡆⠄⣤⠈⢣⣈⣠⣿⣿⣿⣿⣿⠏⣄⠻⣿⣿⣿⣿⣿⣆⣈⣴⠃⣿⣿⣿⣿
⡀⠈⢿⠄⣿⡇⠄⠙⠿⣿⡿⠿⢋⣥⣾⣿⣷⣌⠻⢿⣿⣿⡿⠟⣡⣾⣿⣿⠿⢋
⠛⠳⠄⢠⣿⠇⠄⣷⡑⢶⣶⢿⣿⣿⣿⣽⣿⣿⣿⣶⣶⡐⣶⣿⠿⠛⣩⡄⠄⢸")
IMG6=("ㅤﾠㅤ⣿⣿⣿⣿⣿⠁⢰⠂⠐⠋⠊⠄⠂⢰⣆⠄⠂⠤⠄⡨⡀⠄⠄⠄⠄⠄⠠⠠\nﾠㅤㅤ⣿⣿⣿⣿⣿⠇⠄⠈⠄⠄⠄⠄⠄⠄⢸⣿⠄⠄⠄⠄⠄⠁⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⣿⡟⠄⠄⠄⠄⡀⡄⠠⢀⣤⣿⣿⠄⠄⠄⠄⠄⢐⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⣿⠁⠄⠸⠄⠄⢿⣷⣬⣿⣿⣿⣿⣀⣹⡤⡀⠄⢰⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⠇⠄⠄⠄⠄⠄⠘⣿⣿⣿⡿⢼⣿⣿⣿⠁⠄⠄⢸⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⠏⠄⠄⠄⠄⠄⠄⠄⠈⠻⣿⣆⣾⡿⠛⠁⠄⠄⠄⠄⡄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⡏⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠛⠁⠄⠄⠄⠄⠄⠄⠄⢃⠄⠄⠄⠄⠄ \nㅤㅤﾠ⡟⠄⣀⣤⣤⣄⠄⣠⣀⣀⣀⣀⠄⠄⠄⠄⠄⠄⡀⠄⣀⣀⣘⠄⠄⠄⠄⠄ \nㅤㅤﾠ⠄⣾⣿⣿⣿⡟⢰⣿⣿⣿⣿⣷⣷⣶⣿⣾⣿⣿⡇⢻⣿⣿⣿⣿⡄⠄⠄⠄ \nㅤㅤﾠ⠄⣿⣿⣿⡏⠃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⢟⡯⡟⣿⣷⠄⠄⠄ \nㅤㅤﾠ⠄⢹⣿⣿⢁⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣜⠿⠂⠄⠄ \nㅤㅤﾠ⠄⠄⢿⠇⣼⣿⣿⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⡷⡀⠄⠄ \nㅤㅤﾠ⠄⠄⠘⢐⣿⣿⠄⠄⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠄⢰⠘⡀ \nㅤㅤﾠ⠄⠄⠄⢸⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⢻⣟⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⠄⠄ \nㅤㅤﾠ⠄⠄⠄⠄⠻⣿⣿⣿⣿⣿⣿⣿⡿⣻⣿⣟⣾⠿⣿⣿⣿⣿⣿⣿⡿⠃⠠⠄ \nㅤㅤﾠ⢀⢐⡀⣤⣤⣬⣝⣛⣻⣟⣿⢭⣿⣿⡿⣿⣿⣿⣮⣼⣟⠻⣿⡝⠄⠄⠄⠠")
echo -e "$MSGS"; sleep .2; clear
echo -e "$IMG2"; sleep .2; clear
echo -e "$IMG3"; sleep .2; clear
echo -e "$IMG4"; sleep .2; clear
echo -e "$IMG5"; sleep .2; clear
echo -e "$IMG6"; sleep .2; clear
echo -e "$MSGS"; sleep .2; clear
echo -e "$IMG2"; sleep .2; clear
echo -e "$IMG3"; sleep .2; clear
echo -e "$IMG4"; sleep .2; clear
echo -e "$IMG5"; sleep .2; clear
echo -e "$IMG6"; sleep .2; clear
echo -e "$MSGS"; sleep .2; clear
echo -e "$IMG2"; sleep .2; clear
echo -e "$IMG3"; sleep .2; clear
echo -e "$IMG4"; sleep .2; clear
echo -e "$IMG5"; sleep .2; clear
echo -e "$IMG6"; sleep .2; clear
echo -e "$IMG5"; sleep .2
echo -e "\e[33;01mEsse é meu tio, Maiar\e[0m"
sleep 1
echo -e "\e[33;01mLegal, eu vou ser sua tia!\e[0m"
sleep 1.5
clear
tit0=$"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⠋⠉⠙⠻⠿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⠄⠹⣿⣿⣶⣶⣦⣬⢹⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠄⠄⠄⣰⣧⡀⠄⠄⠄⠄⠈⢙⡋⣿⣿⣿⢸⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⠰⠼⢯⣿⣿⣦⣄⠄⠄⠄⠈⢡⣿⣿⣿⢸⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⠸⠤⠕⠛⠙⠷⣿⡆⠄⠄⠄⣸⣿⣿⡏⣼⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣴⣿⣿⣿⢡⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄⠄⠄⠄⠄⣄⠄⢀⠄⠄⢀⣤⣾⣿⣿⣿⢃⣾⣿⣿⣿
⣿⣿⣿⣿⣿⣿⠿⣛⣡⣄⣀⠄⠠⢴⣿⣿⡿⣄⣴⣿⣿⣿⣿⣿⢃⣾⣿⣿⣿⣿
⣿⣿⣿⣿⣿⡏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣩⡽⡁⢸⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⢃⣿⣿⢟⣿⣿⣿⣿⣿⣮⢫⣿⣿⣿⣿⣿⣟⢿⠃⠄⢻⣿⣿⣿⣿
⣿⣿⣿⣿⡿⣸⠟⣵⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣷⣄⢰⡄⢿⣿⣿⣿
⣿⣿⣿⣿⡇⠏⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠹⡎⣿⣿⣿
⣭⣍⠛⠿⠄⢰⠋⡉⠹⣿⣿⣿⣿⣿⣿⠙⣿⣿⣿⣿⣿⣿⡟⢁⠙⡆⢡⣿⣿⣿
⠻⣿⡆⠄⣤⠈⢣⣈⣠⣿⣿⣿⣿⣿⠏⣄⠻⣿⣿⣿⣿⣿⣆⣈⣴⠃⣿⣿⣿⣿
⡀⠈⢿⠄⣿⡇⠄⠙⠿⣿⡿⠿⢋⣥⣾⣿⣷⣌⠻⢿⣿⣿⡿⠟⣡⣾⣿⣿⠿⢋
⠛⠳⠄⢠⣿⠇⠄⣷⡑⢶⣶⢿⣿⣿⣿⣽⣿⣿⣿⣶⣶⡐⣶⣿⠿⠛⣩⡄⠄⢸"

tit=$"ㅤﾠㅤ⣿⣿⣿⣿⣿⠁⢰⠂⠐⠋⠊⠄⠂⢰⣆⠄⠂⠤⠄⡨⡀⠄⠄⠄⠄⠄⠠⠠\nﾠㅤㅤ⣿⣿⣿⣿⣿⠇⠄⠈⠄⠄⠄⠄⠄⠄⢸⣿⠄⠄⠄⠄⠄⠁⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⣿⡟⠄⠄⠄⠄⡀⡄⠠⢀⣤⣿⣿⠄⠄⠄⠄⠄⢐⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⣿⠁⠄⠸⠄⠄⢿⣷⣬⣿⣿⣿⣿⣀⣹⡤⡀⠄⢰⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⣿⠇⠄⠄⠄⠄⠄⠘⣿⣿⣿⡿⢼⣿⣿⣿⠁⠄⠄⢸⠄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⣿⠏⠄⠄⠄⠄⠄⠄⠄⠈⠻⣿⣆⣾⡿⠛⠁⠄⠄⠄⠄⡄⠄⠄⠄⠄⠠\nㅤㅤﾠ⣿⡏⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠛⠁⠄⠄⠄⠄⠄⠄⠄⢃⠄⠄⠄⠄⠄ \nㅤㅤﾠ⡟⠄⣀⣤⣤⣄⠄⣠⣀⣀⣀⣀⠄⠄⠄⠄⠄⠄⡀⠄⣀⣀⣘⠄⠄⠄⠄⠄ \nㅤㅤﾠ⠄⣾⣿⣿⣿⡟⢰⣿⣿⣿⣿⣷⣷⣶⣿⣾⣿⣿⡇⢻⣿⣿⣿⣿⡄⠄⠄⠄ \nㅤㅤﾠ⠄⣿⣿⣿⡏⠃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⢟⡯⡟⣿⣷⠄⠄⠄ \nㅤㅤﾠ⠄⢹⣿⣿⢁⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣜⠿⠂⠄⠄ \nㅤㅤﾠ⠄⠄⢿⠇⣼⣿⣿⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⡷⡀⠄⠄ \nㅤㅤﾠ⠄⠄⠘⢐⣿⣿⠄⠄⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠄⢰⠘⡀ \nㅤㅤﾠ⠄⠄⠄⢸⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⢻⣟⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⠄⠄ \nㅤㅤﾠ⠄⠄⠄⠄⠻⣿⣿⣿⣿⣿⣿⣿⡿⣻⣿⣟⣾⠿⣿⣿⣿⣿⣿⣿⡿⠃⠠⠄ \nㅤㅤﾠ⢀⢐⡀⣤⣤⣬⣝⣛⣻⣟⣿⢭⣿⣿⡿⣿⣿⣿⣮⣼⣟⠻⣿⡝⠄⠄⠄⠠"
Menu() {
    clear
    echo -e '\n'
    echo -e "          \033[01;32mMB FREE\033[0m    "
    echo -e "\n"
    echo -e "$tit0"
    echo -e "\n"
    echo -e "       \033[01;41mnível hardcore\033[0m "		
    echo -e "\n"
    echo -e "\033[01;36m[ 1 ]\033[0m \033[01;35mVivo\033[0m \033[01;32minternetgratis\033[0m\n"
    echo -e "\033[01;36m[ 2 ]\033[0m \033[01;35mVivo\033[0m \033[01;41mclubefacil\033[0m\n"
    echo -e "\033[01;36m[ 3 ]\033[0m \033[01;35mVivo\033[0m \033[01;33mddivulga\033[0m\n"
    echo -e "\033[01;36m[ 4 ]\033[0m \033[01;35mVivo\033[0m \033[01;44mnavegue\033[0m\n"
    echo -e "\033[01;36m[ 5 ]\033[0m \033[05;33mOi\033[0m \033[01;46mwap\033[0m\n"
    echo -e "\033[01;36m[ 6 ]\033[0m \033[07;33mOi\033[0m \033[01;33mddivulga\033[0m\n"
    echo -e "\033[01;36m[ 7 ]\033[0m \033[05;33mOi\033[0m \033[01;41mclubefacil\033[0m\n"
    echo -e "\033[01;36m[ 0 ]\033[0m \033[01;31mSair, tenho medo\033[0m"
    echo -e '\033[01;36m\n'	
    read -n1 -p "Raj, escolhe uma carta " App
    case $App in  
    1)App1;;
    2)App2;;
    3)App3;;
    4)App4;;
    5)App5;;
    6)App6;;
    7)App7;;
    0)Sair;;
    *) echo -e "\033[01;31m Calma Barboleta 🦋\033[0m"; sleep .5 ; Menu;;
    esac
}
Sair (){
clear
exit
}

App1 () {
clear
               echo -e "\033[01;33mCole um\033[0m \033[01;32maccessPass\033[0m, \033[01;32msctoken\033[0m, \033[01;32maPass\033[0m \033[01;33mda\033[0m \033[01;45mVivo\033[0m "
while :; do
read -p "$veri2" NUMERO; sleep .5
limite=$(echo $NUMERO | wc -m)
                  case $limite in
                       87) break;;
                        *) echo -e "\033[01;33m Por padrão, são\033[0m \033[01;36m86\033[0m \033[01;33mcaracteres, na\033[0m \033[01;45mVivo\033[0m, \033[01;33mum\033[0m \033[01;32maccessPass\033[0m, \033[01;32msctoken\033[0m, \033[01;32maPass\033[0m, \033[01;33mcole o conteúdo corretamente\033[0m"; sleep 5 ; clear
                  esac
           done
           clear && echo -e $tit
                      
echo -e "\033[01;32mㅤㅤMB até o talo, quantas vezes quer?\033[1;37m"
read vzs
echo ""
echo -e "\033[0m\033[01;33mㅤㅤㅤE lá vamos nós \033[03;037m"

for i in $(seq $vzs); do
case $i in
1) 
esac
curl -d "slotId=%5B%7B%22slotId%22%3A%22101%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A%22102%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A%22103%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A%22104%22%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%5D&pageId=660224&insertionId=&insertionUUID=&insertionType=&referer=http%3A%2F%2Finternetgratis.vivo.com.br%2F&accessPass=$accessPass" http://e.vivo.ddivulga.com/api/v2.1/fetch -H "Origin: http://a.vivo.ddivulga.com" -v
done
Menu
accessPass=$(curl -s http://i.vivo.ddivulga.com/i/gp -H "Origin: http://vivo.ddivulga.com" -d "version=2" | cut -d '"' -f4)
}
App2 () {
clear
               echo -e "\033[01;33mCole um\033[0m \033[01;32maccessPass\033[0m, \033[01;32msctoken\033[0m, \033[01;32maPass\033[0m \033[01;33mda\033[0m \033[01;45mVivo\033[0m "
while :; do
read -p "$veri2" NUMERO; sleep .5
limite=$(echo $NUMERO | wc -m)
                  case $limite in
                       87) break;;
                        *) echo -e "\033[01;33m Por padrão, são\033[0m \033[01;36m86\033[0m \033[01;33mcaracteres, na\033[0m \033[01;45mVivo\033[0m, \033[01;33mum\033[0m \033[01;32maccessPass\033[0m, \033[01;32msctoken\033[0m, \033[01;32maPass\033[0m, \033[01;33mcole o conteúdo corretamente\033[0m"; sleep 5 ; clear
                  esac
           done
           clear && echo -e $tit
                      
echo -e "\033[01;32mㅤㅤMB até o talo, quantas vezes quer?\033[1;37m"
read vzs
echo ""
echo -e "\033[0m\033[01;33mㅤㅤㅤE lá vamos nós \033[03;037m"

for i in $(seq $vzs); do
case $i in
1)
esac
curl -d "slotId=%5B%7B%22slotId%22%3A%22101%22%2C%22target%22%3A%22os%3Dandroid%3B%22%7D%5D&pageId=999534&insertionId=&insertionUUID=&insertionType=&referer=http%3A%2F%2Fclubefacil.com%2F&accessPass=$accessPass" http://e.vivo.ddivulga.com/api/v2.1/fetch -H "Origin: http://a.vivo.ddivulga.com" -H "Referer: http://a.vivo.ddivulga.com/" -v
done
Menu
accessPass=$(curl -s http://i.vivo.ddivulga.com/i/gp -H "Origin: http://vivo.ddivulga.com" -d "version=2" | cut -d '"' -f4)
}
App3 () {
clear
               echo -e "\033[01;33mCole um\033[0m \033[01;32maccessPass\033[0m, \033[01;32msctoken\033[0m, \033[01;32maPass\033[0m \033[01;33mda\033[0m \033[01;45mVivo\033[0m "
while :; do
read -p "$veri2" NUMERO; sleep .5
limite=$(echo $NUMERO | wc -m)
                  case $limite in
                       87) break;;
                        *) echo -e "\033[01;33m Por padrão, são\033[0m \033[01;36m86\033[0m \033[01;33mcaracteres, na\033[0m \033[01;45mVivo\033[0m, \033[01;33mum\033[0m \033[01;32maccessPass\033[0m, \033[01;32msctoken\033[0m, \033[01;32maPass\033[0m, \033[01;33mcole o conteúdo corretamente\033[0m"; sleep 5 ; clear
                  esac
           done
           clear && echo -e $tit
                      
echo -e "\033[01;32mㅤㅤMB até o talo, quantas vezes quer?\033[1;37m"
read vzs
echo ""
echo -e "\033[0m\033[01;33mㅤㅤㅤE lá vamos nós \033[03;037m"

for i in $(seq $vzs); do
case $i in
1)
esac
curl -d "slotId=%5B%7B%22slotId%22%3A101%2C%22target%22%3A%22slot%3D101%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A102%2C%22target%22%3A%22slot%3D102%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A103%2C%22target%22%3A%22slot%3D103%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A104%2C%22target%22%3A%22slot%3D104%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A107%2C%22target%22%3A%22slot%3D107%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A108%2C%22target%22%3A%22slot%3D108%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A105%2C%22target%22%3A%22slot%3D105%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A106%2C%22target%22%3A%22slot%3D106%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A100%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1001%2C%22target%22%3A%22slot%3D1001%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1002%2C%22target%22%3A%22slot%3D1002%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1003%2C%22target%22%3A%22slot%3D1003%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1004%2C%22target%22%3A%22slot%3D1004%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1005%2C%22target%22%3A%22slot%3D1005%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1006%2C%22target%22%3A%22slot%3D1006%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1007%2C%22target%22%3A%22slot%3D1007%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1008%2C%22target%22%3A%22slot%3D1008%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1009%2C%22target%22%3A%22slot%3D1009%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1010%2C%22target%22%3A%22slot%3D1010%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%2C%7B%22slotId%22%3A1114%2C%22target%22%3A%22slot%3D1114%3Bndcqndn%3DS2QX6UDXdeyPLLzEGbDoUcHHUnaIo27jjpDOlH59c4FY9NGiclGva8BWBBfemY1TFjG6ZpMvbmEI5Hw%3Bga%3DGA129593804421636663585%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%22%7D%5D&pageId=655437&insertionId=&insertionUUID=&insertionType=NATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CANY%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE&referer=&accessPass=$accessPass" http://e.vivo.ddivulga.com/api/v2.1/fetch -H "Origin: http://vivo.ddivulga.com" -H "Referer: http://vivo.ddivulga.com/" -v
done
Menu
accessPass=$(curl -s http://i.vivo.ddivulga.com/i/gp -H "Origin: http://vivo.ddivulga.com" -d "version=2" | cut -d '"' -f4)
}
App4 () {
clear
               echo -e "\033[01;33mCole um\033[0m \033[01;32maccessPass\033[0m, \033[01;32msctoken\033[0m, \033[01;32maPass\033[0m \033[01;33mda\033[0m \033[01;45mVivo\033[0m "
while :; do
read -p "$veri2" NUMERO; sleep .5
limite=$(echo $NUMERO | wc -m)
                  case $limite in
                       87) break;;
                        *) echo -e "\033[01;33m Por padrão, são\033[0m \033[01;36m86\033[0m \033[01;33mcaracteres, na\033[0m \033[01;45mVivo\033[0m, \033[01;33mum\033[0m \033[01;32maccessPass\033[0m, \033[01;32msctoken\033[0m, \033[01;32maPass\033[0m, \033[01;33mcole o conteúdo corretamente\033[0m"; sleep 5 ; clear
                  esac
           done
           clear && echo -e $tit
                      
echo -e "\033[01;32mㅤㅤMB até o talo, quantas vezes quer?\033[1;37m"
read vzs
echo ""
echo -e "\033[0m\033[01;33mㅤㅤㅤE lá vamos nós \033[03;037m"

for i in $(seq $vzs); do
case $i in
1)
esac
curl -d "slotId=%5B%7B%22slotId%22%3A101%2C%22target%22%3A%22slot%3D101%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A102%2C%22target%22%3A%22slot%3D102%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A103%2C%22target%22%3A%22slot%3D103%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A104%2C%22target%22%3A%22slot%3D104%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A107%2C%22target%22%3A%22slot%3D107%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A108%2C%22target%22%3A%22slot%3D108%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A105%2C%22target%22%3A%22slot%3D105%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A106%2C%22target%22%3A%22slot%3D106%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A100%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1001%2C%22target%22%3A%22slot%3D1001%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1002%2C%22target%22%3A%22slot%3D1002%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1003%2C%22target%22%3A%22slot%3D1003%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1004%2C%22target%22%3A%22slot%3D1004%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1005%2C%22target%22%3A%22slot%3D1005%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1006%2C%22target%22%3A%22slot%3D1006%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1007%2C%22target%22%3A%22slot%3D1007%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1008%2C%22target%22%3A%22slot%3D1008%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1009%2C%22target%22%3A%22slot%3D1009%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1010%2C%22target%22%3A%22slot%3D1010%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%2C%7B%22slotId%22%3A1114%2C%22target%22%3A%22slot%3D1114%3BrxVisitor%3D16345215526457EONG2VG807S5KTDMQPOAV36RHGNJL83%3Bgclau%3D114714667771634521558%3Bvivoprettycity%3DUmlvK2RlK0phbmVpcm8%3D%3Bvivoregcity%3Driodejaneiro%3Bvivoregstate%3DRJ%3Bregional%3DRJ%3Bvivoregddd%3D21%3Bcsc%3D1%3Baamuuid%3D27685766665890242114049105093968756205%3Bfbp%3Dfb21634521577737262863839%3BCTRS%3DRecording%3BWRUIDCD%3D3513568116425706%3Bmbox%3DPC1be46f1e3c1442dfbbc8a8a4593f91323401698353470session0c7a0d3d4f3c463f9e1fc1e0e7d3082a1635110530%3Bcsid%3D053c63b32864ad5ea27571e8361496d3163452157721635108686163510868615871178651668685577983%3BCTData%3Dgpv%3D2ckp%3Dcddm%3Dvivocombrapv15www44%3D3cpv15www44%3D2rpv15www44%3D2%3BgaZX7D4NYJHK%3DGS11163510867621163510896960%3Badobeaamcookie%3DpossePre3D16397888%3Bttu%3D0100007F1702D06035074B250275D907%3Bttuus%3D1637000680871%3Bgid%3DGA138785019941637016243%3BgatgtagUA1640616781%3D1%3Bttcvmt%3D1637016244%3Bttcc%3Ddirect%3Bttcs%3Ddirect%3Bttcm%3Ddirect%3Bos%3Dandroid%3BtailCity%3Dsalvador%3BtailtState%3Dbahia%3BtailCountry%3Dbr%3BtailEquipment%3D9%3BtailAge%3D3%3BtailCustom%3D3%3BtailGender%3D2%3BtailProfiles%3D24%22%7D%5D&pageId=655437&insertionId=&insertionUUID=&insertionType=NATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CANY%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE%2CNATIVE&referer=&accessPass=$accessPass" http://e.vivo.ddivulga.com/api/v2.1/fetch -H "Origin: http://navegue.vivo.com.br" -H "Referer: http://navegue.vivo.com.br/" -v
done
Menu
accessPass=$(curl -s http://i.vivo.ddivulga.com/i/gp -H "Origin: http://vivo.ddivulga.com" -d "version=2" | cut -d '"' -f4)
}
App5 () {
clear
               echo -e "\033[01;33mCole um \033[01;32msctoken \033[01;33mda\033[0m \033[01;33mOi\033[0m "
while :; do
read -p "$veri2" NUMERO; sleep .5
limite=$(echo $NUMERO | wc -m)
                  case $limite in
                       87) break;;
                        *) echo -e "\033[01;33m Por padrão, são\033[0m \033[01;36m86\033[0m \033[01;33mcaracteres, na\033[0m \033[01;33mOi\033[0m, \033[01;33mum \033[01;32msctoken\033[0m, \033[01;33mcole o conteúdo corretamente\033[0m"; sleep 5 ; clear
                  esac
           done
           clear && echo -e $tit
                      
echo -e "\033[01;32mㅤㅤMB até o talo, quantas vezes quer?\033[1;37m"
read vzs
echo ""
echo -e "\033[0m\033[01;33mㅤㅤㅤE lá vamos nós \033[03;037m"

for i in $(seq $vzs); do
case $i in
1)
esac
curl -d "slotId=%5B%7B%22slotId%22%3A%22100%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22101%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22102%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22103%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22104%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22105%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22106%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22107%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22108%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22109%22%2C%22target%22%3A%22%3B%22%7D%5D&pageId=651200&insertionId=&insertionUUID=&insertionType=&referer=http%3A%2F%2Fwap.oi.com.br%2F&accessPass=$sctoken" e.oi.ddivulga.com/api/v2.1/fetch -H "Origin: http://oi.ddivulga.com" -H "Referer: http://oi.ddivulga.com/" -v
done
Menu
sctoken=$(curl -s http://e.oi.ddivulga.com/api/gp -H "Origin: http://oi.ddivulga.com" -d "version=2" | cut -d '"' -f4)
}
App6 () {
clear
               echo -e "\033[01;33mCole um \033[01;32msctoken \033[01;33mda\033[0m \033[01;33mOi\033[0m "
while :; do
read -p "$veri2" NUMERO; sleep .5
limite=$(echo $NUMERO | wc -m)
                  case $limite in
                       87) break;;
                        *) echo -e "\033[01;33m Por padrão, são\033[0m \033[01;36m86\033[0m \033[01;33mcaracteres, na\033[0m \033[01;33mOi\033[0m, \033[01;33mum \033[01;32msctoken\033[0m, \033[01;33mcole o conteúdo corretamente\033[0m"; sleep 5 ; clear
                  esac
           done
           clear && echo -e $tit
                      
echo -e "\033[01;32mㅤㅤMB até o talo, quantas vezes quer?\033[1;37m"
read vzs
echo ""
echo -e "\033[0m\033[01;33mㅤㅤㅤE lá vamos nós \033[03;037m"

for i in $(seq $vzs); do
case $i in
1)
esac
curl -d "slotId=%5B%7B%22slotId%22%3A301%2C%22target%22%3A%22os%3Dandroid%3BtailCity%3Dmanaus%3BtailtState%3Damazonas%3BtailCountry%3Dbr%22%7D%5D&pageId=822068&insertionId=&insertionUUID=&insertionType=ANY&referer=&accessPass=$sctoken" e.oi.ddivulga.com/api/v2.1/fetch -H "Origin: http://e.oi.ddivulga.com" -H "Referer: http://e.oi.ddivulga.com/" -v
done
Menu
sctoken=$(curl -s http://e.oi.ddivulga.com/api/gp -H "Origin: http://oi.ddivulga.com" -d "version=2" | cut -d '"' -f4)
}
App7 () {
clear
               echo -e "\033[01;33mCole um \033[01;32msctoken \033[01;33mda\033[0m \033[01;33mOi\033[0m "
while :; do
read -p "$veri2" NUMERO; sleep .5
limite=$(echo $NUMERO | wc -m)
                  case $limite in
                       87) break;;
                        *) echo -e "\033[01;33m Por padrão, são\033[0m \033[01;36m86\033[0m \033[01;33mcaracteres, na\033[0m \033[01;33mOi\033[0m, \033[01;33mum \033[01;32msctoken\033[0m, \033[01;33mcole o conteúdo corretamente\033[0m"; sleep 5 ; clear
                  esac
           done
           clear && echo -e $tit
                      
echo -e "\033[01;32mㅤㅤMB até o talo, quantas vezes quer?\033[1;37m"
read vzs
echo ""
echo -e "\033[0m\033[01;33mㅤㅤㅤE lá vamos nós \033[03;037m"

for i in $(seq $vzs); do
case $i in
1)
esac
curl -d "slotId=%5B%7B%22slotId%22%3A%22100%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22101%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22102%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22103%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22104%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22105%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22106%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22107%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22108%22%2C%22target%22%3A%22%3B%22%7D%2C%7B%22slotId%22%3A%22109%22%2C%22target%22%3A%22%3B%22%7D%5D&pageId=999534&insertionId=&insertionUUID=&insertionType=&referer=http%3A%2F%2Fclubefacil.com%2F&accessPass=$sctoken" e.oi.ddivulga.com/api/v2.1/fetch -H "Origin: http://oi.ddivulga.com" -H "Referer: http://oi.ddivulga.com/" -v
done
Menu
sctoken=$(curl -s http://e.oi.ddivulga.com/api/gp -H "Origin: http://oi.ddivulga.com" -d "version=2" | cut -d '"' -f4)
}
Menu