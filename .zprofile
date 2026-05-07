#.zprofile
# 読み込み zprofile（valiable） > zshrc(alias)

# path=('/opt/homebrew/bin' $path)

# Path Setting for M1 Mac / Intel Mac
if [[ $(uname -m) == "arm64" ]]; then
    # M1 Mac
    export BREW_PATH="/opt/homebrew"
else
    # Intel Mac
    export BREW_PATH="/usr/local"
fi


if [[ $(uname) == "Linux" ]]; then
    # AWS RootDir
    HOME_DIR="/home/ec2-user"
    export PATH="$PATH:$HOME_DIR/bin"

elif [[ $(uname) == "Darwin" ]]; then
    # 
    export PATH="$BREW_PATH/bin:$BREW_PATH/sbin:$PATH"
    export PATH="$HOME/dotfiles/bin:$HOME/flutter/bin:$HOME/.composer/vendor/bin:$HOME/.symfony/bin:$HOME/.cargo/bin:$PATH"
    export DOT_PATH="$HOME/dotfiles"
    export VIMRC_PATH="$DOT_PATH/vimrc"
    export VIMLUA_PATH="$DOT_PATH/lua"
    export BASH_PATH="$DOT_PATH/bash"
    export ZSH_PATH="$DOT_PATH/zsh"
    export TMUXCONF_PATH="$DOT_PATH/.tmux.conf"
    export TMUXLINE_PATH="$DOT_PATH/.tmux/.tmuxline.conf"
    export NOTE_PATH="$HOME/ghq/github.com/bellsmarket/.note"
    export SCREENSHOT_DIR="$HOME/Desktop"

    ## XDG 環境変数
    export XDG_CONFIG_HOME="$DOT_PATH/.config"
    export XDG_BASE_HOME="$DOT_PATH/.config"
    export XDG_CACHE_HOME="$HOME/.cache"
fi


# man カラー設定
# export LESS_TERMCAP_mb=$'\e[01;31m'
# export LESS_TERMCAP_md=$'\e[00;36m'
# export LESS_TERMCAP_me=$'\e[0m'
# export LESS_TERMCAP_se=$'\e[0m'
# export LESS_TERMCAP_so=$'\e[00;30;41m'
# export LESS_TERMCAP_ue=$'\e[0m'
# export LESS_TERMCAP_us=$'\e[00;35m'

export LESSCHARSET=utf-8
export MANPAGER="sh -c 'col -bx | bat --paging=always --language=man'"



## AWS
export AWS_REGION=ap-northeast-1
export AWS_DEFAULT_REGION=ap-northeast-1

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

# 初回ログイン時実行
if [ -z "$ZSH_LOGIN_ONCE" ]; then
  export ZSH_LOGIN_ONCE=1

  echo "🔐 SSHログイン初回だけの処理を実行中..."
fi
