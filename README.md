# Dotfiles
My trash dotfiles, yes

## Dependencies
Install the following packages, with something like paru or yay (ill probabbly miss something):
```hyprland waybar-hyprland-git rofi-lbonn-wayland-git \
    pipewire pipewire-pulse wireplumber pipewire-alsa \
    bluez-utils-git bluez blueberry xdg-desktop-portal-hyprland \
    azote brightnessctl wlogout ttf-jetbrains-mono-nerd \
    ttf-liberation lib32-fontconfig 
```
After installing the dependencies, reboot

### Zsh
To use the zsh setup, install [Oh My Zsh](https://ohmyz.sh/), then, run the following command
```sh
git clone https://github.com/marlonrichert/zsh-autocomplete ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/
```

## Moving Files
Run the following commands:
```sh
mkdir ~/.config # (If directory doesnt exist)
cp -r dot_config/* ~/.config/
cp dot_zsh ~/.zshrc
```

## Spicetify
For using spicetify, install spicetify, then run the following commands
```sh
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
spicetify backup apply
spicetify apply
```
