class people::webdizz::applications::vim {

    include vim

    vim::bundle { [
        'scrooloose/syntastic',
        'sjl/gundo.vim',
        'tpope/vim-sensible',
        'tpope/vim-endwise',
        'tpope/vim-fugitive',
        'tpope/vim-markdown',
        'tpope/vim-tbone',
        'tpope/vim-obsession',
        'tpope/vim-commentary',
        'tpope/vim-surround',
        'altercation/vim-colors-solarized',
        'promisedlandt/vim-colors-ir_black'
    ]: }

}
