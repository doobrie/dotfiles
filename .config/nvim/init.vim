" VIM SETTINGS
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'yaegassy/coc-pydocstring', {'do': 'yarn install --frozen-lockfile'}
Plug 'airblade/vim-gitgutter'
Plug 'preservim/tagbar'
Plug 'folke/tokyonight.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'aurum77/live-server.nvim'
Plug 'ap/vim-css-color'

call plug#end()

nnoremap <SPACE> <Nop>
let mapleader=" "
set backspace=indent,eol,start
set encoding=utf-8
set nobackup
set nowritebackup
set updatetime=500
set signcolumn=yes
set nu
set relativenumber
set noshowmode
syntax on
set mouse=a
let g:tagbar_autofocus = 1
set background=dark
colorscheme tokyonight
set tabstop=2
set shiftwidth=3
set expandtab

nmap <F8> :TagbarToggle<CR>

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
nnoremap <C-a> <Plug>(coc-codeaction-line)
nnoremap <A-Left> <C-o>
nnoremap <A-Right> <C-i>

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nnoremap <c-o> :Telescope find_files<cr>

nnoremap <F5> :buffers<CR>:buffer<Space>
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

nnoremap <C-b> :NvimTreeFindFileToggle<CR>

nnoremap <C-e> :Telescope oldfiles<CR>

lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

lua << EOF
require("nvim-tree").setup()
EOF

lua << EOF
require'live_server.util'.install()
cmd={'LiveServer', 'LiveServerStart', 'LiveServerStop'}
EOF
