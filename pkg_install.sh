sudo pacman -Syu alacritty ripgrep fd bat ttf-meslo-nerd-font-powerlevel10k crystal shards jq broot fzf gnome-keyring libsecret yay caps2esc
yay -S ant-dracula-gtk-theme ant-dracula-kvantum-theme-git activitywatch-bin dracula-alacritty-git interception-space2meta
sudo systemclt enable udevmon.service
sudo systemclt start udevmon.service
broot --install
cd ~/.dotfiles//repositories/kakoune.cr/
make install
