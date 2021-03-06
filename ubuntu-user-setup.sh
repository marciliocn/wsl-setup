#!/bin/sh

# Adiciona ao ZSH atalho Ctrl+Z para controle de Jobs
# curl -sL https://raw.githubusercontent.com/Peeja/ctrl-zsh/master/ctrl-zsh.plugin.zsh > ~/.ctrlz
curl -sL https://raw.githubusercontent.com/mdumitru/fancy-ctrl-z/master/fancy-ctrl-z.zsh > ~/.ctrlz
cat ~/.ctrlz >> ~/.zshrc && rm ~/.ctrlz
echo '\n' >> ~/.zshrc

# Define permissões de escrita em ~/.ssh apenas para $USUARIO
[ ! -d ~/.ssh ] && mkdir ~/.ssh
chmod 700 ~/.ssh

# Se exitir arquivos na pasta, alterar permissão para melhorar segurança
# chmod 600 ~/.ssh/*

# ASDF: gerenciador de pacotes universal
# https://asdf-vm.com/
# Instala apenas se não existir pasta
if [ ! -d ~/.asdf ]
then
    git clone https://github.com/asdf-vm/asdf ~/.asdf --branch v0.8.0
    echo '\n. ~/.asdf/asdf.sh\n' >> ~/.zshrc
fi

# ASDF: NodeJS
# asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
# bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

# Adiciona Plugin Manager Vim-Plug para o NeoVim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# [Opcional] Instala pacote para formação de arquivos XML
sudo apt install -y libxml2-utils

