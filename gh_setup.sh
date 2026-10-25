#!/bin/sh

# Set which browser to authenticate to github.com
defaultbrowser ${1:-firefox}

# Log in
gh auth

# Enable git commands
gh auth setup-git
