Dotfiles, managed by [`chezmoi`](https://www.chezmoi.io/quick-start/#start-using-chezmoi-on-your-current-machine).

# Install
```bash
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply jonasks
```
# Other
* Shell: `zsh` + `oh-my-zsh` + `starship`
* Terminal: `alacritty`


# Commands
* Add file: `chezmoi add ~/.<filename>`
* Edit file: `chezmoi edit ~/.<filename>`
* See changes: `chezmoi diff` 
* Apply changes: `chezmoi -v apply`
* Push changes: `chezmoi cd` + git

**Brew**
* `brew bundle dump --force`


# Screenshots

Terminal:  
<img width="809" alt="image" src="https://user-images.githubusercontent.com/5310116/156411310-b2bb25bd-8f85-46cd-ad68-36faecfac6c0.png">

`vim`:  
<img width="1033" alt="image" src="https://user-images.githubusercontent.com/5310116/156532335-46107d36-600f-44dd-84b5-eb210034e0e8.png">
