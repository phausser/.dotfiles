# Dotfiles

```text
░▒▓███████▓▒░ ░▒▓██████▓▒░▒▓████████▓▒░▒▓████████▓▒░▒▓█▓▒░▒▓█▓▒░      ░▒▓████████▓▒░░▒▓███████▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓██████▓▒░ ░▒▓█▓▒░▒▓█▓▒░      ░▒▓██████▓▒░  ░▒▓██████▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░             ░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░             ░▒▓█▓▒░
░▒▓███████▓▒░ ░▒▓██████▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░▒▓███████▓▒░

                                                                                                  ```
Persoenliche Konfigurationen fuer Shell, Editor, Terminal und Window Manager.

## Enthaltene Konfiguration

- `.zshrc` - Zsh Setup (Prompt, Completion, History, Aliases)
- `.bashrc` - minimale moderne Bash-Konfiguration
- `.tmux.conf` - tmux Keybindings und Statusbar
- `.vimrc` - klassisches Vim Setup mit vim-plug
- `.gvimrc` - GUI-spezifische Vim Einstellungen
- `nvim/init.vim` - Neovim Setup mit vim-plug
- `kitty/kitty.conf` - Kitty Terminal Theme und Verhalten
- `fish/` - Fish Konfiguration (config, functions, completions)
- `i3/config` - i3 Window Manager Konfiguration
- `i3status/config` - i3status Anzeige
- `iterm/` - iTerm Farbschema

## Abhaengigkeiten

Je nach genutzten Teilen der Dotfiles sind diese Tools sinnvoll:

- `git`
- `curl`
- `kitty`
- `tmux`
- `vim` oder `neovim`
- `i3` und `i3status` (Linux/X11)
- `fish` (optional)

Editor-Plugins werden ueber `vim-plug` verwaltet. In Vim/Neovim:

```vim
:PlugInstall
```

## Lokale Overrides

Fuer lokale, nicht versionierte Anpassungen:

- `~/.zshrc.local`
- `~/.bashrc.local`
- `~/.profile`
- `~/.aliases`
- `~/.vimrc.local`
- `~/.vimrc.plug`
- `~/.tmux.conf.local`
