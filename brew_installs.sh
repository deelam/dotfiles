#!/bin/sh

if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install rename
brew install defaultbrowser

brew install tree

# CLI apps
brew install btop
brew install nnn

# MacOS apps
brew install --cask middleclick
brew install maccy # clipboard app

# terminal fonts so that glyphs appear correctly
# Remember to change the font in the terminal app
brew install --cask font-commit-mono-nerd-font
brew install --cask font-inconsolata-nerd-font
brew install --cask font-fira-code-nerd-font
