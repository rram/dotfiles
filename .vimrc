" This must be first, because it changes other options as a side effect.
set nocompatible

execute pathogen#infect()

set laststatus=2 " Always show the statusline
set ruler " show the cursor position all the time
set showmode " display current mode
set showcmd " display incomplete commands
set incsearch " do incremental searching

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2
  syntax on
  set hlsearch
endif

" have command-line completion <Tab> (for filenames, help topics, option
" name) first list the available options and complete the longest common part,
" then have further <Tabs>s cycle through the possibilities:
set wildmode=list:longest,full

" don't make it look like there are line breaks where there aren't:
set nowrap

" use indents of 2 spaces, and have them copied down lines:
set shiftwidth=2
set shiftround
set expandtab
set autoindent
set autowrite
set textwidth=78

" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc>
" by default), and ~ covert case over line breaks; also have the cursor keys
" wrap in insert mode:
set whichwrap=h,l,~,[,]

" page down with <Space>; page up with <BackSpace>
noremap <Space> <PageDown>
noremap <BS> <PageUp>

" Make .jsim files look like Spice files for 6.004
au BufRead,BufNewFile *.jsim setfiletype spice

" The future!
set encoding=utf-8

" Line Numbers
set number
