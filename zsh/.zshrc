
# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

# Zoxide
eval "$(zoxide init zsh)"

# Allow variables in prompt
setopt PROMPT_SUBST

# ---- Tab title ----
function set_title() {
  if [[ "$PWD" == "$HOME" ]]; then
    print -Pn "\e]0;家 ホーム\a"
  else
    print -Pn "\e]0;道 %1~\a"
  fi
}

# ---- Git info ----
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats ' %b'

# ---- precmd hook (ONE ONLY) ----
precmd() {
  set_title
  vcs_info
}

# ---- Prompt ----
PROMPT='%F{white}%1~%f%F{green}${vcs_info_msg_0_}%f %F{magenta}鬼%f '

# ---- Aliases ----
if [ -f "$HOME/.zsh/aliases.zsh" ]; then
  source "$HOME/.zsh/aliases.zsh"
fi

# bun completions
[ -s "/Users/fabroos/.bun/_bun" ] && source "/Users/fabroos/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# ---- Zsh plugins ----
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---- Fastfetch on new terminal ----
fastfetch

# ---- History ----
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"

