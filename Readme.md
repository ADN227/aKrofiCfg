# Dotfiles

[![rofi.png](https://i.postimg.cc/6pqT83TC/rofi.png)](https://postimg.cc/9D3cScdf)

# Indice
- [Requisitos](#requisitos)
- [Configuracion](#configuracion)

# Requisitos

[Rofi](https://wiki.archlinux.org/title/Rofi)

    pacman -S rofi

[Picom](https://wiki.archlinux.org/title/Picom)

    pacman -S picom

# Configuracion
Para configurar el comando rofi, se debe crear un directorio llamado `~/.config/rofi` donde se alojen los archivos de configuracion. Mientras que para lanzar cada una de las opciones es necesario usar el comando 

    rofi -show drun -theme gnome

o

    rofi -show window -theme base