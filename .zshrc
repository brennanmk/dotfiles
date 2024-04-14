# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/usr/local/bin:$PATH"
export LD_LIBRARY_PATH=/usr/local/lib/

# Path to your oh-my-zsh installation.
export ZSH="$HOME/oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
alias rsrc="source ~/catkin_ws/devel/setup.zsh"

alias phone='f() { curl --silent --output nul -d $1 https://ntfy.bmillerklugman.me/phone };f'

bindkey '^ ' autosuggest-accept
source /opt/ros/noetic/setup.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

alias doom='~/.config/emacs/bin/doom'

alias file='nautilus'

export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
