#!/bin/sh

if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install chezmoi to enable: chezmoi init --apply git@github.com:$GITHUB_USERNAME/dotfiles.git
brew install --no-ask --quiet chezmoi

echo "Run brew_installs.sh"
echo "Run gh_setup.sh"

echo "Install TextMate (or another lightweight, multitab editor)"
echo "Install iTerm2"

# iTerm2 settings
# Profiles > Keys tab:
#   The default hotkey to paste the last argument of your previous command in Zsh is Alt + . (or Esc + .).
#   Change iTerm2 settings: Left option key to by Esc+
# Profiles > General tab:
#   tab Title = "Job -- PWD", Load shell integration automatically, Initial directory


chezmoi apply
