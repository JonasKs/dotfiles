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

Terminal:  
<img width="815" alt="image" src="https://user-images.githubusercontent.com/5310116/156545153-3220fbb8-493f-40a8-9ea1-4fa5f09eea75.png">



`vim`:  
<img width="1080" alt="image" src="https://user-images.githubusercontent.com/5310116/156545435-15316375-e172-4b69-a026-85cb378c899e.png">
