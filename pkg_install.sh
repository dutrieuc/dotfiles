sudo pacman -Syu base-devel alacritty kakoune ripgrep fd bat ttf-meslo-nerd-font-powerlevel10k crystal shards jq broot fzf gnome-keyring libsecret yay interception-caps2esc python-lsp-black
yay -S flow lemminx ant-dracula-gtk-theme ant-dracula-kvantum-theme-git activitywatch-bin dracula-alacritty-git interception-space2meta

# TODO in pamac pip install python-lsp-server python-lsp-black pyflakes mccabe pycodestyle rope

sudo systemctl enable udevmon.service
sudo systemctl start udevmon.service
broot --install
cd repositories/kakoune.cr/
make install
git clone https://github.com/andreyorst/plug.kak.git $HOME/.config/kak/plugins/plug.kak
