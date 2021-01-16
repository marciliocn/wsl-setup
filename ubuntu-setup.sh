#!/bin/sh

# Atualização dos respositórios do sistema
apt update -y

# Adicionar senha ao usuário root
passwd

# Adiciona usuário sem GECOS (finger infos)
adduser --gecos '' t480s

# Adiciona usuário ao grupo root
usermod -a -G sudo t480s

# Desabilita interação com o pacote `tzdata` e disponibiliza o conteúdo de `DEBIAN_FRONTEND` para o script
export DEBIAN_FRONTEND=noninteractive

# Instalação de softwares
apt install -y git \
               curl \
               sudo \
               locales \
               tzdata \
               zsh \
               neovim

# Altera o fuso horário para São Paulo
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# Atribui o shell ZSH ao usuário criado
chsh -s /bin/zsh t480s
