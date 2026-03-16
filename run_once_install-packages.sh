#!/bin/bash
set -e

# Install Homebrew if not present
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install all brew packages
brew bundle --file="$(chezmoi source-path)/Brewfile" --no-lock

# Install Go tools for neovim conform.nvim
if command -v go &>/dev/null; then
  go install mvdan.cc/gofumpt@latest
  go install github.com/incu6us/goimports-reviser/v3@latest
  go install github.com/segmentio/golines@latest
fi
