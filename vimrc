""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nathan's .vimrc.  Like it or lump it.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General behavioral settings
set nocompatible        " vi sucks, long live vim
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching

" statusline nicked from bberg
"set statusline=%F%m%r%h%w\ [ff=%{&ff}]\ [ft=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [LEN=%L]
set statusline=%F%m%r%h%w\ %{&ff}\ %{&ft}\ %P\ (%l,%v)
set laststatus=2  " always show status line

" need this for vim-outliner on hardy
set runtimepath+=/usr/share/vim/addons

let g:haddock_browser = "/usr/bin/konqueror"
let g:haddock_indexfiledir = "~/.vim/"

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
let &guioptions = substitute(&guioptions, "t", "", "g")
" also just ditch the toolbar, since it adds nothing to a keyboard-driven app
let &guioptions = substitute(&guioptions, "T", "", "g")

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on

    " always set cwd to wherever the current buffer file is
"    function! CHANGE_CURR_DIR()
"        exec "cd %:p:h"
"    endfunction

"    autocmd BufEnter * call CHANGE_CURR_DIR()

    " Put these in an autocmd group, so that we can delete them easily.
    augroup vimrcEx
        au!

        " For all text files set 'textwidth' to 78 characters.
        autocmd FileType text setlocal textwidth=78

        " When editing a file, always jump to the last known cursor position.
        " Don't do it when the position is invalid or when inside an event handler
        " (happens when dropping a file on gvim).
        autocmd BufReadPost *
                    \ if line("'\"") > 0 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif
    augroup END

    "http://www.cs.kent.ac.uk/people/staff/cr3/toolbox/haskell/Vim/vim.html
    au BufEnter *.hs compiler ghc
else
    set autoindent      " always set autoindenting on
endif " has("autocmd")

" works better than the autocommand above
set autochdir

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis

" huzzah for doxygen
:let g:load_doxygen_syntax=1

" keep *~ out of .
set backupdir=./.backup,.,~/tmp
" if . is not writable, put *.swp elsewhere.
set directory=.,./.backup,~/tmp/



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Keystrokes

" nice tab navigation  (these need work...)
nmap <s-left> :tabprevious<cr>
nmap <s-right> :tabnext<cr>

" emacs nav keys (a crutch i don't seem to need anymore)
"imap <C-a> <Esc>0i
"imap <C-e> <Esc>$a
"map <C-a> <c-n>0
"map <C-e> <c-n>$

" f4 and shift-f4 to go forward and backards in errors/greps
nmap <f4> :cn<cr>
nmap <s-f4> :cp<cr>

" <c-]> jumps to the tag under the cursor;
" <c-\> is my analogue for using :ptag
nmap <c-\> :exe "silent! ptag " . expand("<cword>")<cr>

" i find this clipboard access more convenient
nmap \y "+y
nmap \p "+p

" cycle thru preview tags
" inspired by http://www.ashberg.de/vim/vimrc.html
map <C-PageUp> :ptp<cr>
map <C-PageDown> :ptn<cr>
imap <C-PageUp> <esc>:silent! ptp<cr>a
imap <C-PageDown> <esc>:silent! ptn<cr>a

" Don't use Ex mode, use Q for formatting
map Q gq

" Insert a blank line below the current line in normal mode.
" Handy because it won't continue code comments.
nmap <space> :put =''<cr>

" IDE-ish plugins
nmap <F1>  :TrinityToggleNERDTree<cr>
nmap <F2>  :TrinityToggleTagList<cr>
nmap <F3>  :TrinityToggleSourceExplorer<cr>

" mouse is more annoying than helpful for the terminal
set mouse=

" dons' haskell typeOf script
map ty yy:.!typeOf -fbang-patterns -ignore-dot-ghci %

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" external scripts
" lovely script to make indentation levels act as text objects
if filereadable(expand('$HOME/scripts/vim/innerindent.vim'))
    source $HOME/scripts/vim/innerindent.vim
endif

" quickly alternate between .c and .h
if filereadable(expand('$HOME/scripts/vim/a.vim'))
    source $HOME/scripts/vim/a.vim
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" visual settings

" may consider:
" set t_Co=256
" colorscheme gardener
" gardener is pretty but the hlsearch color needs to be red imho
" but beware of how it would interact with cygwin or other crap terminals
colorscheme koehler

" this looks good on my x11 on hugin at least.
"set guifont=Monospace\ Bold\ 11
set guifont=DejaVu\ Sans\ Mono\ Bold\ 12

" switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

" show a listing of wildcard completions
set wildmenu
" make completion more bash-like
set wildmode=longest,full

" highlight the current line
" hmm, only seems to look good in the gui.
set cursorline

" highlight chars that go over the 80-column limit
" inspired by http://drupal.org/node/29325#comment-213746
"highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
"match OverLength '\%81v.*'
" (turned out to be more annoying than helpful)

" interface with gui clipboard if possible
set clipboard=unnamed

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" formatting defaults

" python, haskell, and vim's softtabstop all conspired to change me to a
" spaces guy.
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set foldmethod=syntax
set foldlevel=99
set matchpairs+=<:>
