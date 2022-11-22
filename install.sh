if [ -d "~/.config/nvim/" ]; then
    mv ~/.config/nvim ~/.config/nvim.old
fi
git clone https://github.com/sindibad363/nv-code.git ~/.config/nvim
