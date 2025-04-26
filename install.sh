# configure nix
mv ./configuration.nix /etc/nixos/configuration.nix
nixos-rebuild switch --use-remote-sudo

# clone dotfiles repo
ssh-add ~/.ssh/github
mkdir ~/Documents/github
git clone git@github.com:chrisharris/dotfiles ~/Documents/github/dotfiles

SRC="~/Documents/github/dotfiles/.config"
DEST="~/.config"

# make config directories and copy config files
if [ ! -d "$DEST/nvim" ]; then
    mkdir $DEST/nvim
fi
cp $SRC/nvim/init.vim $DEST/nvim/init.vim
cp -r $SRC/nvim/autoload $DEST/nvim/autoload

if [ ! -d "$DEST/hypr" ]; then
    mkdir $DEST/hypr
fi
cp $SRC/hypr/hyprland.conf $DEST/hypr/hyprland.conf

if [ ! -d "$DEST/kitty" ]; then
    mkdir $DEST/kitty
fi
cp $SRC/kitty/kitty.conf $DEST/kitty/kitty.conf

if [ ! -d "$DEST/waybar" ]; then
    mkdir $DEST/waybar
fi
cp $SRC/waybar/config.jsonc $DEST/waybar/config.jsonc
cp $SRC/waybar/style.css $DEST/waybar/style.css

if [ ! -d "$DEST/kanata" ]; then
    mkdir $DEST/kanata
fi
cp $SRC/kanata/default.kbd $DEST/kanata/default.kbd
cp $SRC/kanata/nvim.kbd $DEST/kanata/nvim.kbd

if [ ! -d "$DEST/peaclock" ]; then
    mkdir $DEST/peaclock
fi
cp $SRC/peaclock/config $DEST/peaclock/config
cp $SRC/peaclock/digital-party.config $DEST/peaclock/digital-party.config

if [ ! -d "$DEST/cava" ]; then
    mkdir $DEST/cava
fi
cp $SRC/cava/config $DEST/cava/config
cp -r $SRC/cava/shaders $DEST/cava/shaders

cp $SRC/starship.toml $DEST/starship.toml

# install neovim plugins
mkdir ~/.neovim-plugins
vim +PlugInstall +qall!


