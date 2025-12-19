function fish_greeting
end
set -U fish_color_autosuggestion 'a79e67'
set -U fish_color_command 'D48E01'
set -U fish_color_param 'D1B88E'


alias gu="git pull"
alias gp="git push"
alias ls="lsd"
alias ll="lsd -lrt"
alias yay='paru'
alias ys='paru -Sy'
alias yr='paru -R'
alias s='sudo'
alias y='yazi'
alias z='zeditor'
alias lg='lazygit'
alias e='exit'
alias FontsFamilyName="fc-query -f '%{family[0]}\n'"

# add extra PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

zoxide init fish --cmd j | source

bind shift-down 'backward-kill-word'

# set -x RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
# set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup

# fzf.fish

fzf_configure_bindings  --history="shift-up" \
                        --git_log="alt-I" \
                        --directory="alt-O" \
                        --variables="alt-L" \
                        --process="alt-P" \
                        --git_status=""
