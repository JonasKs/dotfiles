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
<img width="815" alt="image" src="https://user-images.githubusercontent.com/5310116/156545153-3220fbb8-493f-40a8-9ea1-4fa5f09eea75.png">



`vim`:  
<img width="1080" alt="image" src="https://user-images.githubusercontent.com/5310116/156545435-15316375-e172-4b69-a026-85cb378c899e.png">
