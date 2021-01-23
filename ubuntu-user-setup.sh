#!/bin/sh

# ASDF: gerenciador de pacotes universal
# https://asdf-vm.com/
# Instala apenas se não existir pasta
if [ ! -d ~/.asdf ]
then
	git clone https://github.com/asdf-vm/asdf ~/.asdf --branch v0.8.0
	echo '\n. ~/.asdf/asdf.sh\n' >> ~/.zshrc
fi

# Adiciona ao ZSH atalho Ctrl+Z para controle de Jobs
curl -sL https://raw.githubusercontent.com/Peeja/ctrl-zsh/master/ctrl-zsh.plugin.zsh > ~/.ctrlz
cat ~/.ctrlz >> ~/.zshrc && rm ~/.ctrlz
echo '\n' >> ~/.zshrc

# ASDF: NodeJS
# asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
# bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

