#!/bin/zsh

if [ -f Brewfile ] && ! brew bundle check; then
  # Create Brewfile: brew bundle dump
  # List packages not listed in your Brewfile: brew bundle cleanup --no-formula
  SCRIPT_DIR="${0:A:h}"
  echo "Installing based on $SCRIPT_DIR/Brewfile" >&2
  brew bundle install --file=$SCRIPT_DIR/Brewfile
fi

# terminal fonts so that glyphs appear correctly
# Remember to change the font in the terminal app
# - iTerm2 > Settings (or Preferences) > Profiles > Text
brew install --cask --quiet font-commit-mono-nerd-font
brew install --cask --quiet font-inconsolata-nerd-font
brew install --cask --quiet font-fira-code-nerd-font

# ---- Reminders ----

# watches the directory recursively and runs your command on any change
# watchexec -w ./your_folder -- your_command_here

# defaultbrowser: useful for quickly setting desired browser for CLI commands that open a browser

