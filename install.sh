if [ -d "/home/$USER/.config/nvim/" ]; then
    mv /home/$USER/.config/nvim /home/$USER/.config/nvim.old
fi
git clone https://github.com/sindibad363/nv-code.git ~/.config/nvim
