sudo pacman -Syu alacritty ripgrep fd bat ttf-meslo-nerd-font-powerlevel10k crystal shards jq broot fzf gnome-keyring libsecret yay
yay -S ant-dracula-gtk-theme ant-dracula-kvantum-theme-git activitywatch-bin dracula-alacritty-git
broot --install
cd ~/.dotfiles//repositories/kakoune.cr/
make install
