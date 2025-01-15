#.zprofile
# 読み込み zprofile（valiable） > zshrc(alias)

# path=('/opt/homebrew/bin' $path)

# M1 Mac と Intel Mac のためのパス設定
if [[ $(uname -m) == "arm64" ]]; then
    # M1 Mac
    export BREW_PATH="/opt/homebrew"
else
    # Intel Mac
    export BREW_PATH="/usr/local"
fi

# $PATHの設定、先頭に追加することで優先度を上げる
export PATH="$BREW_PATH/bin:$BREW_PATH/sbin:$PATH"

# 追加のパス設定
export PATH="$HOME/dotfiles/bin:$HOME/flutter/bin:$HOME/.composer/vendor/bin:$HOME/.symfony/bin:$HOME/.cargo/bin:$PATH"

## Bells PATH
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

## AWS
export AWS_REGION=ap-northeast-1
export AWS_DEFAULT_REGION=ap-northeast-1

