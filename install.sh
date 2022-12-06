if [ -d "/home/$USER/.config/nvim/" ]; then
    mv /home/$USER/.config/nvim /home/$USER/.config/nvim.old
fi
git clone https://github.com/sindibad363/nv-code.git ~/.config/nvim
autoupdates = "${autoupdates:-n}"
read -n 1 -p "Do you want to setup Automatic Updates (N/y): " autoupdates
case $autoupdates in
    "y"|"Y")
        exit 0;;
    "n"|"N")
        sed 's|!bash ~/.config/nvim/update.sh|#!bash ~/.config/nvim/update.sh|' ~/.config/nvim/init.vim
    *)
    exit 0;;
esac

