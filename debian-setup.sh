#!/bin/sh

# Atualização dos respositórios do sistema
apt update -y

# Adicionar senha ao usuário root
passwd

# Adiciona usuário sem GECOS (finger infos)
adduser --gecos '' t480s

# Adiciona usuário ao grupo root
usermod -a -G sudo t480s

# Instalação de softwares
apt install -y git \
               curl \
               sudo \
               zsh \
               neovim \
               apt-transport-https \
               dirmngr

# Atribui o shell ZSH ao usuário criado
chsh -s /bin/zsh t480s
