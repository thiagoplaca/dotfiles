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
alias ~="cd /home/thiago"
alias studio="/home/thiago/.AUR/android-studio/bin/studio"
alias sus="loginctl suspend"

# Disable zsh correct
unsetopt correct_all

DISABLE_AUTO_TITLE='true'

## Android Studio
#export ANDROID_HOME=$HOME/Android/Sdk
#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/platform-tools

# yt-dlp
alias ytdl="yt-dlp -o '/home/thiago/Downloads/%(title)s.%(ext)s' --merge-output-format"

source ~/.powerlevel10k/powerlevel10k.zsh-theme

# ZSH Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(/home/thiago/.local/bin/mise activate zsh)" # added by https://mise.run/zsh
