" Configurações melhor aproveitadas no Neovim
"===========
"= PLUGINS =
"===========
" Plugin Manager = Vim-Plug
call plug#begin()

" Lista de Plugins usados
Plug 'dracula/vim', {'name':'dracula'}
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'

call plug#end()

"===========
"= CONFIGS =
"===========
" Exibe números das linhas de forma reversa a partir da linha atual
set rnu

" Exibe número da linha real onde estiver o cursor
set nu

" Força arquivos a estarem no formato Unix
set fileformats=unix

" Identação automática SMART (ao invés da antiga `smartindent`)
filetype plugin indent on

" Habilita configuração correta de Temas
" if you have Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

" Número de espaços inseridos quando TAB for usado
set tabstop=4

" Largura da identação no código
set shiftwidth=4

" Para TAB, Ctrl-V<Tab>
set expandtab

" Ativa marcação da linha que o cursor está
set cursorline

" Brilha a tela ao invés de sinalizar por som quando ocorrem erros
set visualbell

" Define título da janela de acordo com o arquivo aberto
set title

" Ignorar CASE nas buscas...
set ignorecase
" ... a não ser que informe letra maiúscula
set smartcase

" Pergunta se deseja fechar um arquivo não salvo
set confirm

" Desativa recurso `modeline` e adota as configurações desse arquivo
set nomodeline

" = V Pagar.me V: https://www.youtube.com/watch?v=kZDT10nFiTY =

" Permite abrir novos arquivos mesmo com arquivo em edição sem salvar
set hidden

" Habilita suporte a mouse
set mouse=a

" [NeoVim] Permite visualizar alterações de substituições no arquivo em tempo real
set inccommand=split

"= netrw - native file manager =
" Exibir arquivos com layout tree
let g:netrw_liststyle = 3
" Abrir arquivos à direita, dividindo a janela verticalmente
let g:netrw_browse_split = 2
" Define em 20% do tamanho do netrw na janela do Vim
let g:netrw_winsize = 20

"===========
"= ATALHOS =
"===========
" Definir tecla de comando para início dos atalhos
let mapleader="\<space>"

" Atalhos para modo NORMAL
" n = NORMAL mode
" nore = NO REcursive (sem expansão em outras macros já definidas)
" map = definição de atalho
" <leader>; = padrão com sequência para ativar o comando
" A;<esc> = comando que será executado após ativação do atalho

" Adiciona um ; no final da linha
nnoremap <leader>; A;<esc><cr>
" Edita o arquivo de configuração
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
" Recarrega o arquivo de configuração
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" = ^ Pagar.me ^ =

"== EMMET ==
" Alteração da tecla trigger para o Emmet
let g:user_emmet_leader_key=','

"== Airline ==
" Ativa símbolos `powerline` na barra Airline
let g:airline_powerline_fonts = 1

"===========
"= VISUAIS =
"===========
" Habilita coloração de syntax para arquivos de códigos fonte
syntax enable

" Quebra de linhas (wrap) conveniente - e não no meio das palavras
set linebreak

" Linhas para manter acima e abaixo do cursor
set scrolloff=3

" Colunas para manter a esquerda e direita do cursor
set sidescrolloff=5

" Ocultar o --INSERT-- no final da tela
set noshowmode

" Ativa o tema Drácula
colorscheme dracula
