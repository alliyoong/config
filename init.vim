source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/keybindings.vim
if exists('g:vscode')
    source $HOME/.config/nvim/vscode/settings.vim
else
    source $HOME/.config/nvim/vim-plug/plugins.vim
    source $HOME/.config/nvim/vim-plug/plug-config.vim
endif






