# Append this to current '.bashrc'

# Auto-start tmux in Alacritty
if command -v tmux >/dev/null 2>&1; then
  # only start tmux if not already inside tmux
  if [ -z "$TMUX" ]; then
    tmux attach -t main || tmux new -s main
  fi
fi

# Activate starship config when initializing bash instance
eval "$(starship init bash)"
