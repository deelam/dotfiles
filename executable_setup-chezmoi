#!/bin/zsh
# Probably not needed, use instead: chezmoi init --apply git@github.com:$GITHUB_USERNAME/dotfiles.git
# https://github.com/rio/dotfiles
# For setting up a new machine

set -euo pipefail

# Change to zsh
# if ! [ -n "$ZSH_VERSION" ]; then
# if command -v zsh ›/dev/null; then
#   sudo chsh -s $(command -v zsh) $USER
# fi
# fi

# SCRIPT_DIR="${0:A:h}"
CM_ROOT="~/.local/share/chezmoi"
echo "Using $CM_ROOT"
[ -f "$CM_ROOT/dot_zshrc" ] || { echo "Wrong directory"; exit 1; }

# Apply chezmoi config
if command -v chezmoi ›/dev/null; then
  chezmoi init --apply --source "$CM_ROOT"
  exit 0
fi

# Use mise to apply chezmoi config
if command -v mise ›/dev/null; then
  mise exec chezmoi -- chezmoi init --apply --source "$CM_ROOT"
  exit 0
fi

# Run script from the web to apply chezmoi config
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --source "$CM_ROOT"
exit 0
