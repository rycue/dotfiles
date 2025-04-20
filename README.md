# ⚠️ Work In Progress: Dotfiles

This dotfiles repo is a **work in progress**. I'm actively configuring Hyprland, creating themes, writing scripts, and experimenting with launchers. 

---

## 🚀 Features

Note: Make sure you have these installed, if you want to use my dotfiles.

- **Window Manager:** [Hyprland](https://hyprland.org/)
- **Status Bar:** [Waybar](https://wiki.hyprland.org/Useful-Utilities/Status-Bars/)
- **Shell:** [Zsh](https://ohmyz.sh/)
- **Notification Daemon:** [Mako](https://github.com/emersion/mako)
- **System Info Tool:** [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- **Wallpaper Manager:** [Waypaper](https://github.com/anufrievroman/waypaper) with [Swaybg](https://github.com/swaywm/swaybg)
- **Scripts:** Custom shell utilities like `theme-switcher.zsh` and `toggle-waybar.zsh`
- **Screenshot Tool:** [Hyprshot](https://github.com/Gustash/Hyprshot)
- **Theming:** More themes under the directory name of `ritsuki-themes` *(currently working on `chisel`)*
- **Dotfile Management:** Managed via [GNU Stow]((https://www.gnu.org/software/stow/manual/stow.html))
- **Workflow:** Symlinked cleanly from `/dotfiles` into `$HOME/` using `stow`
- **...** More coming soon!

---

<details>
<summary>📂 Click to view dotfiles directory structure</summary>

```plaintext
~/dotfiles
├── CHANGELOG.md
├── fastfetch
│   └── .config
│       └── fastfetch
│           └── config.jsonc
├── .gitignore
├── hypr
│   └── .config
│       └── hypr
│           ├── hyprland.conf
│           ├── keybindings.conf
│           ├── theme.conf
│           └── workspace.conf
├── mako
│   └── .config
│       └── mako
│           └── config
├── README.md
├── scripts
│   └── .local
│       └── bin
│           ├── battery-notifier.zsh
│           ├── goto-workspace.zsh
│           ├── theme-switcher.zsh
│           └── toggle-waybar.zsh
├── systemd
│   └── .config
│       └── systemd
│           └── user
│               ├── battery-notifier.service
│               └── battery-notifier.timer
├── themes
│   └── ritsuki-themes
│       ├── chisel
│       │   ├── chisel.conf
│       │   └── waybar
│       │       └── style.css
│       └── dream
│           ├── config.jsonc
│           └── dream.conf
├── .vscode
├── waybar
│   └── .config
│       └── waybar
│           ├── config.jsonc
│           └── style.css
└── zsh
    └── .zshrc
```
</details>

---

<details>
<summary>🔗 Click to view how it's <code>stowed</code> (symlinked) into your <code>$HOME</code> directory</summary>

```plaintext
$HOME/
├── .config
│   ├── fastfetch
│   │   └── config.jsonc  -> ~/dotfiles/fastfetch/.config/fastfetch/config.jsonc
│   ├── hypr
│   │   ├── hyprland.conf     -> ~/dotfiles/hypr/.config/hypr/hyprland.conf
│   │   ├── keybindings.conf  -> ~/dotfiles/hypr/.config/hypr/keybindings.conf
│   │   ├── theme.conf        -> ~/dotfiles/hypr/.config/hypr/theme.conf
│   │   └── workspace.conf    -> ~/dotfiles/hypr/.config/hypr/workspace.conf
│   ├── mako
│   │   └── config        -> ~/dotfiles/mako/.config/mako/config
│   ├── systemd
│   │   └── user
│   │       ├── battery-notifier.service -> ~/dotfiles/systemd/.config/systemd/user/battery-notifier.service
│   │       └── battery-notifier.timer   -> ~/dotfiles/systemd/.config/systemd/user/battery-notifier.timer
│   └── waybar
│       ├── config.jsonc  -> ~/dotfiles/waybar/.config/waybar/config.jsonc
│       └── style.css     -> ~/dotfiles/waybar/.config/waybar/style.css
├── .zshrc                     -> ~/dotfiles/zsh/.zshrc
└── .local
    └── bin
        ├── battery-notifier.zsh  -> ~/dotfiles/scripts/.local/bin/battery-notifier.zsh
        ├── goto-workspace.zsh    -> ~/dotfiles/scripts/.local/bin/goto-workspace.zsh
        ├── theme-switcher.zsh    -> ~/dotfiles/scripts/.local/bin/theme-switcher.zsh
        └── toggle-waybar.zsh     -> ~/dotfiles/scripts/.local/bin/toggle-waybar.zsh
```
</details>

---

<br>
 <center><strong>🚧 Work In Progress 🚧</strong></center>

 <!-- Requires:
 - (pacman) stow - Manage installation of multiple softwares in the same directory tree
 - (pacman) jq - Command-line JSON processor. Used by workspace-notifier.zsh
 - (yay) hyprshot - A utility to easily take screenshots in Hyprland
 - (yay) clipse - Configurable TUI clipboard manager for Unix
 
 Are used but optional:
 - Language input tool
    - (pacman) fcitx5 - Next generation of fcitx
    - (pacman) fcitx5-mozc - Fcitx5 Module of A Japanese Input Method for Chromium OS, Windows, Mac and Linux (the Open Source Edition of Google Japanese Input)
    - (pacman) fctix5-configtool - Configuration Tool for Fcitx5
        - IDEALLY, you can instead install: (pacman) fcitx5-mozc-ut - Fcitx5 module for Mozc (the Open Source edition of Google Japanese Input) bundled with the UT dictionary
 -->