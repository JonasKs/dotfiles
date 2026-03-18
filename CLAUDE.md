# Dotfiles (chezmoi)

Managed by [chezmoi](https://www.chezmoi.io/). Source dir: `~/.local/share/chezmoi`.
Remote: `git@github.com:JonasKs/dotfiles.git`

## Structure

- `dot_*` files map to `~/.*` (chezmoi naming convention)
- `dot_config/` maps to `~/.config/`
- `dot_ssh/` maps to `~/.ssh/`
- `run_once_*.sh` scripts run once per machine on `chezmoi apply`

## What's managed

| Source file/dir | Target | Notes |
|---|---|---|
| `dot_zshrc` | `~/.zshrc` | Oh My Zsh + starship prompt, sources `~/.secrets` (not tracked) |
| `dot_gitconfig` | `~/.gitconfig` | 1Password SSH signing enabled, auto-signs commits |
| `dot_ssh/config` | `~/.ssh/config` | Routes SSH through 1Password agent socket |
| `dot_tmux.conf` | `~/.tmux.conf` | Catppuccin mocha theme, vim-style keybinds |
| `dot_aliasesrc` | `~/.aliasesrc` | Shell aliases (bat, nvim, lazygit, chezmoi, git) |
| `dot_config/nvim/` | `~/.config/nvim/` | Neovim config with lazy.nvim, 20+ plugins |
| `dot_config/ghostty/config` | `~/.config/ghostty/config` | Ghostty terminal config (XDG path) |
| `dot_config/starship.toml` | `~/.config/starship.toml` | Prompt config with nerd font symbols |
| `Brewfile` | (used by install script) | All brew packages, casks, and MAS apps |
| `cargo-packages.txt` | (reference) | Rust cargo tools list |

## Scripts

- `run_once_install-packages.sh` — Installs Homebrew, runs `brew bundle`, installs Go tools
- `run_once_setup-sudo-touchid.sh` — Sets up Touch ID for sudo via `/etc/pam.d/sudo_local` (requires sudo)

## 1Password integration

Already fully tracked in chezmoi:
- **Git signing:** `dot_gitconfig` has `gpg.format = ssh` and points to `op-ssh-sign`
- **SSH agent:** `dot_ssh/config` uses `IdentityAgent` pointing to 1Password agent socket

## Key conventions

- `~/.secrets` is sourced by zshrc but NOT tracked (contains sensitive env vars)
- Neovim plugins are managed by lazy.nvim; after apply run `:Lazy install` then `:MasonInstall gopls codelldb`
- Update Brewfile with `brew bundle dump --force`
- Sync local changes back to source with `chezmoi re-add`
- Files outside `$HOME` (like `/etc/pam.d/sudo_local`) are handled via `run_once_` scripts since chezmoi only manages `$HOME`

## Common commands

```bash
chezmoi add ~/.<file>       # Track a new dotfile
chezmoi edit ~/.<file>      # Edit in source dir
chezmoi diff                # Preview changes
chezmoi -v apply            # Apply source to home
chezmoi re-add              # Sync home changes back to source
chezmoi cd                  # cd into source dir for git operations
```
