if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_path = expand('~/.cache/dein/.')

let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'

" Required:
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_path)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_path
	endif
		execute 'set runtimepath^=' . fnamemodify(s:dein_repo_path, ':p')
endif
" Required:
if dein#load_state(s:dein_path)
  call dein#begin(s:dein_path)
	let g:config_dir =expand('~/.config/nvim/plug_toml')
	let s:toml = g:config_dir . '/plugins.toml'
	let s:lazy_toml = g:config_dir . '/plugins_lazy.toml'
  call dein#load_toml(s:toml,  	  {'lazy' : 0})
  call dein#load_toml(s:lazy_toml,{'lazy' : 1})
  " Let dein manage dein
  " Required:
  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
	call dein#install()
endif

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

set clipboard=unnamed

