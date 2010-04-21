" User .vimrc file for MacVim
"
" Maintainer:	Indrajit Raychaudhuri <irc@indrajit.com>
" Last Change:	Sun Aug 29 2009
"
" User .vimrc customized for personal use on unix (Mac and Linx).
" The structure (and functions) are influenced by:
"   a. vimrc by amix the lucky stiff <amix@amix.dk>
"      http://amix.dk/blog/post/19486#The-ultimate-Vim-configuration-vimrc
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Statusline and Command area
"    -> Colors and Fonts
"    -> File and backup handling
"    -> Text, tab, indentation and filetype handling
"    -> Visual mode related
"    -> Command mode related
"    -> Moving around, tabs and buffers
"    -> Parenthesis/bracket expanding
"    -> General Abbrevs
"    -> Editing mappings
" 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" Done in MacVim system vimrc
" set nocompatible

" Sets how many lines of history VIM has to remember
set history=300

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow backspacing over everything in insert mode
" Done in MacVim system vimrc, see ':help macvim-backspace'
" set backspace+=indent,eol,start

" Enrich whichwrap
set whichwrap+=<,>

" This is so that the HIG shift movement related settings can be enabled
if has("gui_macvim")
  let macvim_hig_shift_movement=1
endif

" Set 7 lines to the curors - when moving vertically
set scrolloff=6

" Turn on wild menu
set wildmenu

" Do incremental searching
set incsearch

" Set case-ignore searching by default
set ignorecase

" Adjust matching parenthesis settings
" set showmatch mat=2 Is is necessary?

" Enrich matchpairs
set matchpairs+=<:>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Statusline and Command area
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the statusline
set laststatus=2

" Always show the cursor position
set ruler

" Display incomplete commands
set showcmd

" The command area height
set cmdheight=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File and backup handling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autoread externally modified file
set autoread

" No need for backup files
set nobackup


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab, indentation and filetype handling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The customized tab and shiftwidth settings
set tabstop=4 shiftwidth=4 expandtab smarttab

" Wrap long lines at a character in 'breakat'
set linebreak

" Continuation string at the beginning of wrapped lines
set showbreak=»»

" Do smart indenting, when starting a new line
set smartindent

" Enable file type detection if compiled with support for autocommands
if has("autocmd")
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
else
  " Always enable autoindenting
  set autoindent
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket expanding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spelling and Dictionary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable spelling
set spell

" Enable dictionary for word completion
set dictionary+=/usr/share/dict/words
" Add dictionary to keyword completion list
set complete+=k


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""
" => Minibuffer plugin
""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Fuzzy finder
""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>


" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

endif " has("autocmd")


" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom local configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TODO: Do iff GLVS is installed and this var isn't set? (possible?)
" let g:GetLatestVimScripts_allowautoinstall=1

" http://groups.google.com/group/vim_mac/browse_thread/thread/12f46704b5dfcd53
" set go-=r

"map <leader>t2 :setlocal shiftwidth=2<cr>
"map <leader>t4 :setlocal shiftwidth=4<cr>
"map <leader>t8 :setlocal shiftwidth=4<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
