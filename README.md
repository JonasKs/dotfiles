Dotfiles, managed by [`chezmoi`](https://www.chezmoi.io/quick-start/#start-using-chezmoi-on-your-current-machine).

# Install
```bash
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply jonasks
```

On first apply, chezmoi will automatically:
- Install Homebrew (if missing)
- Install all packages from `Brewfile`
- Install Go tools (`gofumpt`, `goimports-reviser`, `golines`)

After that, open Neovim and run `:Lazy install` to set up plugins, then `:MasonInstall gopls codelldb` for LSP/DAP.

# Other
* Shell: `zsh` + `starship`
* Terminal: `ghostty`

# Commands
* Add file: `chezmoi add ~/.<filename>`
* Edit file: `chezmoi edit ~/.<filename>`
* See changes: `chezmoi diff`
* Apply changes: `chezmoi -v apply`
* Re-sync local changes: `chezmoi re-add`
* Push changes: `chezmoi cd` + git

**Brew**
* `brew bundle dump --force`


# Screenshots

<img width="1728" height="1065" alt="image" src="https://github.com/user-attachments/assets/7209f61d-1d00-47a2-8e66-3584aa970ad8" />
