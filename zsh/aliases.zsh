# ~/.zsh/aliases.zsh    

## Navegation
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias c='clear'

## Lists
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -lh'

## Git
alias g='git'
alias gs='git status -sb'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gcmsg='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias go="gh browse"

## Github
alias ghrc='gh repo clone'
alias ghcl='gh repo view --web'
alias ghpr='gh pr create'
alias ghprl='gh pr list'

## alias nrd='npm run dev'
alias prb='pnpm run build'
alias prt='pnpm run test'
alias p='pnpm'
alias pd='p dev'

## Save my ass Aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

## Misc
alias reload='source ~/.zshrc'
alias cls="clear"
alias h="history"
alias grep="grep --color=auto"
alias df="df -h"
alias du="du -h"
alias mkdir="mkdir -pv"
alias myip="curl ifconfig.me"
alias ports="netstat -tulanp"

## Claude
alias clauded="claude --dangerously-skip-permissions"
alias cc="claude"
alias ccc="claude --continue"
alias ccr="claude --resume"
alias ccp="claude --print"

##
alias ls="eza --icons"
alias ll="eza -la --icons --git"
alias tree="eza --tree"
alias cat="bat"
alias grep="rg"
alias find="fd"
alias du="dust"
alias top="btop"
alias diff="delta"

## Custom Folders
alias dev="cd ~/dev && ls"
alias personal="cd ~/dev/personal && ls"
