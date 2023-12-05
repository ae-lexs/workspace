" Plug Set Up
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Plugins
call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'scrooloose/nerdtree' " Navigation Bar
Plug 'tpope/vim-commentary' " Comment Lines with the commands gcc (Normal Mode) and gc (Visual Mode)
Plug 'vim-airline/vim-airline' " Bottom Tabline
Plug 'vim-scripts/CSApprox' " Required to expand the color scheme of the terminal 
Plug 'Raimondi/delimitMate' " Closes automatically quotes, parenthesis, brackets, etc
Plug 'Yggdroot/indentLine' " Displays thin vertical lines at each indentation level for code indented with spaces
Plug 'joshdick/onedark.vim' " Color Theme
end plug#end()

# Set Color Theme
colorscheme onedark
