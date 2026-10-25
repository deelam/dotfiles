#!/bin/sh

CM_HOME=~/.local/share/chezmoi

$EDITOR "$CM_HOME"

watchexec --debounce 1s -w "$CM_HOME" --interactive -- chezmoi apply
