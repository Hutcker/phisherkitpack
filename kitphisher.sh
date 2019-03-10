#!/system/bin/sh

#баннер
clear
echo -e "\e[31m
           ╔══╦══╗╔════╦══╗──╔═════╦╗╔╦╗╔╗╔╦═══╦═══╗
           ║╔╗║╔╗║╚═╗╔═╣╔╗║──║─╔╦╗─║║║║║║║║║╔══╣╔═╗║
           ║╚╝║╚╝╚╗─║║─║║║╠══╣─║║║─║║║║║║║║║╚══╣╚═╝║
           ║╔╗║╔═╗║─║║─║║║╠══╣─╚╩╝─║║║║║║║║║╔══╣╔══╝
           ║║║║╚═╝║─║║─║╚╝║──╚═╗─╔═╣╚╝║╚╝╚╝║╚══╣║
           ╚╝╚╩═══╝─╚╝─╚══╝────╚═╝─╚══╩════╩═══╩╝
|----------------|               
| ©Артём Бородин |
|----------------|              
\e[0m"

#менюшка выбора
echo "------------------------------------------------------------------              
                              ФИШ-МЕНЮ       
------------------------------------------------------------------"
VIBOR=(
"•Установить социал-фиш•"
"•Установить ВиМен•"
"•Установить Фишер•"
"•Установить ngrok•"
"•Выход•" )

select menu in "${VIBOR[@]}" ; do
  case $REPLY in

#функция установки shellphish   
1) cd $HOME
apt update -y
apt upgrade -y
apt install git -y 
pkg install python -y
pkg install wget -y
pkg install php -y
pkg install curl -y
git clone https://github.com/thelinuxchoice/shellphish
cd $HOME
cd shellphish
bash shellphish.sh
break ;;

#функция установки weeman
2) cd $HOME
apt update -y
apt upgrade -y 
apt install -y
apt install git -y
apt install python2 -y 
git clone https://github.com/evait-security/weeman
cd $HOME
chmod +x weeman
cd weeman
chmod +x weeman.py
python2 weeman.py
break ;;

#функция установки фишера
3) cd $HOME
pkg update -y
pkg upgrade -y
pkg install git -y
pkg install python -y
pkg install python2 -y
pkg install wget -y
pkg install curl -y
pkg install php -y
git clone https://github.com/foxlitegor/fisher
cd $HOME
cd fisher
chmod 777 install.sh
sh install.sh
fish
run
break ;;

#функция установки нгрока
4) cp -r ngrok $HOME
chmod +x ngrok
break ;;

#функция выхода
5) break ;;

esac 
done

#кодил Артём Бородин.
