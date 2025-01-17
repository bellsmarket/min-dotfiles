# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( zsh-syntax-highlighting zsh-autosuggestions zshmarks )
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



alias ..="cd ..;pwd"

if command -v lsd &>/dev/null; then
    alias ls="lsd --date '+%Y/%m/%d %H:%M'"
    alias ll="lsd -la --date '+%Y/%m/%d %H:%M'"
    alias lll="lsd -la --date '+%Y/%m/%d %H:%M'"

    alias aa="lsd -la --date '+%Y/%m/%d %H:%M'"
else
    alias ls="ls -la"
    alias ll="ls -la"
    alias lll="ls -la"

    alias aa="lsd -la --date '+%Y/%m/%d %H:%M'"
fi

alias lld="ls -la|rg -v \"^-\" |rg -v \"^l\""
llg() { ls -la | rg -i "$1"; }
alias llsym="ls -la|rg ^l"
alias lt="ls --tree --depth 2"

alias gl="glow"

# Edit Setting RC File.

if type nvim &>/dev/null; then
    #Neo Vim / Vim Command
    alias vi="nvim"
    alias vim="nvim"
    alias nv="nvim"

    alias vimr="nvim $HOME/.bashrc"
    alias vimp="nvim $HOME/.bash_profile"
    alias vimfi="nvim $HOME/.config/fish/config.fish"
    alias vimvim="nvim $HOME/.vimrc"
    alias vimt="nvim $HOME/.tmux.conf"
    alias vimdein="nvim $HOME/dotfiles/dein/dein.toml"
    alias vimdeinl="nvim $HOME/dotfiles/dein/dein_lazy.toml"
    alias vimbell="nvim $HOME/dotfiles/.config/nvim/colors/bellkai.vim"
    alias vimssh="nvim $HOME/.ssh/config"
    alias vimbook="nvim $HOME/.bookmarks"
else
    #Neo Vim / Vim Command
    alias vi="vim"
    # alias vim="nvim"
    # alias nv="vim"
    
    alias vimr="vim $HOME/.bashrc"
    alias vimp="vim $HOME/.bash_profile"
    alias vimfi="vim $HOME/.config/fish/config.fish"
    alias vimvim="vim $HOME/.vimrc"
    alias vimt="vim $HOME/.tmux.conf"
    alias vimdein="vim $HOME/dotfiles/dein/dein.toml"
    alias vimdeinl="vim $HOME/dotfiles/dein/dein_lazy.toml"
    alias vimbell="vim $HOME/dotfiles/.config/nvim/colors/bellkai.vim"
    alias vimssh="vim $HOME/.ssh/config"
    alias vimbook="vim $HOME/.bookmarks"
fi

#Editor Application

typora() { open -a Typora "$1"; }
alias sublime="subl"

if type bat &>/dev/null; then
    alias cat="bat"
fi

# Charset Command
alias str="strings"
alias cha="nkf --guess"
alias od="god -tx1z"
alias hexdump="hexdump -C"
alias hd="hexdump -C"

alias line="wc -l"

#File Edit Confirmation
alias rm='rm -iv'
alias rmdir='rm -frv'

alias cp='cp -i'
alias mv='mv -i'


#Git Command
# alias gis='git status'
alias gil="git log --date=format:\'%Y/%m/%d %H:%M:%S\'"
alias gia='git add'
alias gic='git commit'
alias gicm='git commit -m "$1"'
alias gish='git push'
alias gill='git pull'
alias gif='git fetch'
alias gico='git checkout'
alias giff='git diff "$1"'
alias gigg='git grep'
alias gib='git branch -vv'
alias gis='git switch'

#tig Command
alias tis='tig status'
alias til='tig log --date=format:"%Y/%m/%d %H:%M:%S"'
alias tia='tig add *'
alias tiff='tig show'
alias tigg='tig grep'

# Git Repo
alias repo='gh repo list'
clone() { gh repo clone "$@"; }

alias g="jump"
alias s="bookmark"
alias d="deletemark"
alias p="showmarks"
alias l="showmarks"

bindkey "^L" forward-word # Ctrl-l: forward-word (カーソルを次の単語の先頭に移動)
bindkey "^H" backward-word # Ctrl-h: backward-word (カーソルを前の単語の先頭に移動)
bindkey "^X" backward-kill-word # Ctrl-x: backward-kill-word (カーソルから単語の先頭まで削除)

if command -v brew &>/dev/null; then
   FPATH="$(brew --prefix)/share/zsh-completions:$FPATH"
   source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
   autoload -Uz compinit && compinit
fi
 
export PATH="$PATH:$HOME/.composer/vendor/bin"
