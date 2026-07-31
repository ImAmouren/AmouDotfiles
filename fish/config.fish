if status is-interactive
# Commands to run in interactive sessions can go here

set fish_greeting ""
starship init fish | source

#alias
alias vim="nvim"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias easyeffects="env QT_QPA_PLATFORM=xcb easyeffects"

#proxy
alias pyay "env http_proxy=http://127.0.0.1:10808 https_proxy=http://127.0.0.1:10808 all_proxy=socks5h://127.0.0.1:10808 yay"

end

#path
# 基础路径管理
fish_add_path /home/amouren/.local/bin
fish_add_path /usr/local/sbin
fish_add_path /usr/local/bin
fish_add_path /usr/bin
fish_add_path /var/lib/flatpak/exports/bin
fish_add_path /usr/lib/jvm/default/bin
