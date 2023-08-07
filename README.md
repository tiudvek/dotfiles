# My Dotfiles
Yes

## Guide to install
This is a guide I made mostly for me, because its supposed to recreate everything I want
<br>
First, install paru with the following commands
```sh
sudo pacman -S git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
Then, install the following packages with yay or paru
```
zsh pipewire pipewire-pulse wireplumber pipewire-alsa wayland hyprland waybar-hyprland-git
xorg-xwayland mako polkit-kde-agent qt5-wayland xdg-desktop-portal-hyprland qt6-wayland
firefox brightnessctl azote swaybg wl-clipboard grim slurp starship exa python-pip
libnotify swaylock bluez bluez-utils blueberry python python-pynvim sddm
(if installing vscode, install code and code-marketplace)
```
Afterwards, reboot then install rust
```sh
rustup default stable
```
Then nvmsh, for node
```
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
zsh
nvm install node
```
Then install the latest version of lunarvim. The lunarvim mason packages are
<br>
1. black
2. flake8
3. lua-language-server
4. pyright
<br>
Then, it is now your problem to move all the files hehe
