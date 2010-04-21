" User .gvimrc file for MacVim
"
" Maintainer:	Indrajit Raychaudhuri <irc@indrajit.com>
" Last Change:	Sun Aug 29 2009
"
" User .gvimrc customized for personal use on unix (Mac and Linx).
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Print the line number in front of each line
set number


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Statusline and Command area
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The command area height
" TODO: Have some heuristics based on window height - higher for taller window (possible?)
set cmdheight=3


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set font according to system
if has("gui_macvim")
  set guifont=Monaco:h12
  set linespace=3
elseif has("gui_gnome")
  set guifont=DejaVu\ Sans\ Mono:h12
  set linespace=3
elseif (has("gui_win32") || has("gui_win32s"))
  set guifont=courier_new:h12
else " if has("gui") obvious since it's in .gvimrc
  set guifont=Monospace\ 10
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File and backup handling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab, indentation and filetype handling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


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

