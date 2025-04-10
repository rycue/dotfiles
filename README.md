# My Dotfiles 🌟
# My (FIRST) Dotfiles 🌟

Hey there! 👋 This repo contains my personal config files for a bunch of tools and applications I use on my system. They’re customized to fit my workflow and setup, so they might be a helpful starting point for anyone looking to personalize their environment. 🚀

> ### ⚠️ Note
> 
> Manually configured (did not use dotfile manager)
> 
> These dotfiles are **highly opinionated**, **disorganized**, and may have some configs that don’t apply to everyone. Customizing them requires some knowledge of scripting and the tools I use. Please **review and tweak** the files manually instead of blindly applying everything.
> 
> **Currently, there is no installer script.** It’s all **manual setup** for now, but I might add an installer in the future.
> 
> So yeah, the repo’s still a work in progress, but feel free to use it on your own, give it a shot (...and send feedback)!

**ℹ️ ALSO NOTE**: These dotfiles are **heavily based** on the preconfigured dotfiles from [mylinuxforwork/dotfiles](https://github.com/mylinuxforwork/dotfiles), so they’re not built from scratch. Thanks to Stephen Raabe and the repo for the foundation! 🙌

## 🧐 Overview

This is my personal collection of configuration files for various tools and applications on my **EndeavourOS** (Arch-based) setup. Since these configs are customized for my needs, they may not work perfectly for everyone. There are also some experimental and incomplete files, and a few symbolic links that might not be fully explained. 🙃

- **Distribution**: EndeavourOS x86_64 (Arch-based) 🖥️
- **Window Manager**: Hyprland 🌈
- **Compositor**: Hyprland (Wayland) 🌀
- **Display Manager**: SDDM 💻
- **Shell**: Zsh ⌨️
- **Terminal**: Kitty 🐱
- **Editor**: VSCode / Neovim 📝
- **Distribution**: EndeavourOS x86_64 (Arch-based)
- **Window Manager**: Hyprland
- **Compositor**: Hyprland (Wayland)
- **Display Manager**: SDDM
- **Shell**: Zsh
- **Terminal**: Kitty
- **Editor**: VSCode / Neovim
    

## 📂 Repo Structure

- **`~/.config/`**: All the app configuration directories go here. 🎯
    - **`ml4w-hyprland/`**: Configs for my [ML4W](https://github.com/mylinuxforwork/dotfiles) Hyprland window manager. 🪟
    - **`RitsukiScripts/`**: Personal scripts I use to automate stuff. ⚙️
        
- **`dotfiles/`**: General dotfiles for system-wide configurations. 🧩
    - **`.bashrc`**: Bash shell configs. 🐚
    - **`.zshrc`**: Zsh shell configs. 🐚
    - **`.gitconfig`**: Git config file. 📂
    - **`.Xresources`**: X11 resources for customizations. 💻
    - **`.p10k.zsh`**: Powerlevel10k Zsh theme settings. ✨
    - **`.xinitrc`**: X11 init script. 🔧
- etc...
        

## 🛠️ Customization and Usage

- **Manual Configuration**: Due to the messy state of these dotfiles, **review and apply them manually** to make sure you only take what works for you. 🔍
    
- **Symbolic Links**: Be extra careful with symlinks in these files, they might not be documented well and could cause issues if misused. ⚠️
    
- **Dependencies**: Some configurations might rely on external tools or scripts that aren't included in the repo hehehe 😬
    

## 📝 Custom Scripts

I’ve got a few personal scripts in the `RitsukiScripts/` directory that help streamline my workflow. Most of these scripts are designed to work alongside other components like **Waybar**, **launchers**, and **notifications**, and they’re also tied to keybindings in the `ritsuki.conf` file. These scripts are completely optional, but feel free to modify them to fit your own setup! 🛠️

## 🎨 Custom Themes

I’ve created a couple of **Waybar** themes:
- **Chinchilla** 🐭
- **Dream** 🌙

They work, but they could use some cleaning up. Feel free to improve and modify them as needed! 🎨

## ⚙️ Applying Configurations

- **Hyprland**: Put your Hyprland configs in the correct directory (e.g., `~/.config/hypr/`).   
- **Waybar Themes**: Drop these in the Waybar config directory (e.g., `~/.config/waybar/`).


Yesss 😎🔥 Let's level up your README with those extra sections! Here's how you can cleanly add them in:

---

## 📦 Recommended Packages & Dependencies

Some configs rely on these tools being installed. Here’s a list of what you’ll likely need (or something similar):

- **Window Manager & Compositor**
  - `hyprland`
  - `xdg-desktop-portal-hyprland`
  - `hyprpaper` (for wallpapers)
- **Status Bar & Widgets**
  - `waybar`
  - `swaync` (notification daemon)
  - `swayidle`, `swaylock`
- **Launchers**
  - `wofi` or `fuzzel`
- **Terminal & Shell**
  - `kitty`
  - `zsh`, `oh-my-zsh`, `powerlevel10k`
- **Fonts**
  - `nerd-fonts` (e.g., `ttf-jetbrains-mono-nerd`)
  - `fontconfig`
- **Extras**
  - `rofi-wayland` (if used as an alt launcher)
  - `dunst` (legacy notification option)
  - `pamixer`, `brightnessctl` (volume/brightness control)
  - `playerctl` (media control)
  - `grim`, `slurp` (screenshot)
  - `wl-clipboard`
  - `xdg-utils`
  - `neovim`
  - `git`
  - `pywal` (if using auto-theming)
  - `fastfetch` (for neofetch-like system info)

> ⚠️ You don’t need **everything** on this list. It depends on what features you want to use!

---

## 🗺️ Roadmap

Here’s what I’m planning (or considering) for future updates:

- [ ] 📂 **Organize files by feature (Hyprland, Waybar, Scripts, etc.)**  
- [ ] 📐 **Make themes modular/configurable**  
- [ ] 📜 **Add a basic installer script** (dotfile manager or bare repo setup)  
- [ ] 📸 **Add screenshots for all Waybar themes**  
- [ ] 📘 **Create a `docs/` directory with setup guides**
- [ ] ...
- [ ] 🌱 **Eventually rebuild everything from scratch (no preconfig base)**


## 🥜 In a Nutshell

This repo’s a personal dump of my configs (not super organized, kinda messy, and definitely not plug-and-play).

It’s heavily based on mylinuxforwork/dotfiles, with my own tweaks thrown in.

Some stuff might not work out of the box, some scripts are WIP or unclear, and there’s no installer yet. Manual setup all the way. 🛠️

<<<<<<< HEAD
Check things before using~~
=======
Check things before using~~
>>>>>>> 9e59389ecd0b0da7f74abcec1e72f8f96b4e6f54
