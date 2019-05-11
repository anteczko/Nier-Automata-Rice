# Nier-Automata-Rice
It's repository for game inspired linux customization.

I'm sharing it so everybody can take a look at, but I don't guarantee this config files will work on your machine, and it doesn't have any autoinstall/autodeploy script.
Also I'm gona share screenshots of it on /r/unixporn, and maybe if you had any questions, they may been already answered in the comments of this post.

<insert images here>

## Files:
Here is overall explanation of directories and files in repository:
 * config - all configuration files, some of them have to be copied and renamed during instalation
 * fonts - all fonts used in configuration
 * resources - there are wallpapers in png and gimp format, so you can make your own, with fitting decorations
 * scripts - place for scripts
 * +--run.sh - script launched at start to inicialize polybar, compton etc.
 * +--rofi_launcher*.sh - scripts for launching rofi
 * themes - gtk and icon themes
 * README.md - you are readin this file right now!

## 'Instalation':
#### Programs used: 
These programs are used by configuration and must be installed.
* i3wm - window manager
* polybar - displaying a bar with workspaces
* compton - composition manager (it adds this nice shadows under windows)
* conky - it display configurable info wiget
* firefox - because i made custom css for it
* thunar - file manager

Important note!
Clone this repository into your ~/ folder, otherwise some configs won't work!

#### Configuration files
/*
Some could stay in '~/Nier-Automata-Rice/' folder, but some needs beeing copied, sometimes even renamed:
config - is i3 config file. Copy it into '~/.config/i3/' direcory
polybar_config - is polybar config file. Copy it into '~/.config/polybar' renaming it to 'config'
userChrome.css - is css for changing firefox look. After applying only css firefox won't look exacly like on screenshots, because kinda sits atop of gtk oomox-pure-light theme. To locate mozilla directory you have to click in mozilla Open Menu > Help > Troubleshooting Information > (Application Basics) > Profile Directory > You can click 'Open Direcorty' button. There create directory called 'chrome' and paste userChrome.css in it.
*/
