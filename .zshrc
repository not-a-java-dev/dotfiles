# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi
# deps that i can see rn
# zoxide
# git
# oh-my-posh
#
#
#


ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "$ZINIT_HOME/zinit.zsh"
#zinit ice depth=1; zinit light romkatv/powerlevel10k

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
autoload -U compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

bindkey '^f' autosuggest-accept

# Hist
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" 

alias ls='ls --color'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lll='ls -l'
# pluh!!
#alias nvim='$HOME/nvim.appimage'
#alias nv='$HOME/nvim.appimage'
#alias vim='/home/winter/nvim.appimage'
#alias vi='/home/winter/nvim.appimage'
alias upd-vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
# pluh!!
#alias yt-dlp='/home/winter/Downloads/g/yt-dlp/yt-dlp'
alias ff='fastfetch'
alias kys='shutdown -P now'
alias kysr='shutdown -r now'
alias kbr='xset r rate 200'
alias pwease='sudo'
alias dog='rev'
alias jollycheck='curl -s https://leb.tjcsucht.net/jollycheck --output /dev/null;if [ $? -ne 0 ];then echo "LEB STATUS: NOT JOLLY";else echo "LEB STATUS: JOLLY";fi'
alias ee='exit'
alias csgo='$HOME/.steam/steam/steamapps/common/SteamLinuxRuntime/run-in-scout-on-soldier -- "$HOME/.steam/steam/steamapps/common/Counter-Strike Global Offensive/csgo.sh" "-steam"'
alias pleasedothecommandwhereyouchangethecurrentactiveterminaldirectorytothehomefolder='cd'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.df/ --work-tree=$HOME'

OMPCONF=$HOME/.oh-my-posh

eval "$(oh-my-posh init zsh --config $OMPCONF/clean-detailed-winter.omp.json)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)
# pluh!! 2
#export GEODE_SDK="/home/winter/Documents/Geode/"
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
#export GOPATH=/home/winter/golibs
#export PATH=$PATH:$GOPATH/bin
#export GOPATH=$GOPATH:/home/winter/gopros

