#!/bin/sh

# Volta para o $HOME
cd

# ASDF: gerenciador de pacotes universal
# https://asdf-vm.com/
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc

# ASDF: NodeJS
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'