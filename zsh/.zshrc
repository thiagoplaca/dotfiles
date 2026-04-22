# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Alias
alias zshrc="nvim ~/.zshrc"
alias szshrc="source ~/.zshrc"
alias kitty="nvim ~/.config/kitty/kitty.conf"
alias cc="clear"
alias dev="cd /home/thiago/Dev"
alias studio="/home/thiago/.AUR/android-studio/bin/studio"
alias sus="systemctl suspend"
alias keymap="setxkbmap -layout us -variant intl"
alias abnt2="setxkbmap -model abnt2 -layout br"

# Disable zsh correct
unsetopt correct_all
DISABLE_AUTO_TITLE='true'

# yt-dlp
alias ytdl="yt-dlp -o '/home/thiago/Downloads/%(title)s.%(ext)s' --merge-output-format"

source ~/.powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Mise
eval "$(/home/thiago/.local/bin/mise activate zsh)" # added by https://mise.run/zsh

# ZSH Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

