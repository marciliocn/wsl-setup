#!/bin/sh

clear
echo ''
echo '= Atualizando Repositórios do Sistema ='
echo ''
apt update -y

clear
echo ''
echo '= Adiciona senha ao usuário root ='
echo ''
passwd

# Adiciona usuário sem GECOS (finger infos)
clear
echo ''
echo '= Adiciona usuário t480s ='
echo ''
adduser --gecos '' t480s

# Adiciona usuário ao grupo root
usermod -a -G sudo t480s

# Desabilita interação com o pacote `tzdata` e disponibiliza o conteúdo de `DEBIAN_FRONTEND` para o script
export DEBIAN_FRONTEND=noninteractive

clear
echo ''
echo '= Instalação de softwares - Aguarde... ='
echo ''
sleep 2

apt install -y git \
               curl \
               sudo \
               locales \
               tzdata \
               zsh \
               neovim

clear
echo ''
echo '= Definindo configurações locais (Inglês) ='
echo ''
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
locale
clear

# Altera o fuso horário para São Paulo
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# Atribui o shell ZSH ao usuário criado
chsh -s /bin/zsh t480s

clear
echo ''
echo '= Configurações adicionais concluídas! ='
echo ''
