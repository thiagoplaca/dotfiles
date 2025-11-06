# Alias
alias zshrc="nvim ~/.zshrc"
alias szshrc="source ~/.zshrc"
alias kitty="nvim ~/.config/kitty/kitty.conf"
alias cc="clear"
alias dev="cd /home/thiago/Dev"
alias ~="cd /home/thiago"
alias studio="/home/thiago/.AUR/android-studio/bin/studio"
alias sus="systemctl suspend"

# ASDF
#export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

#alias yt="npm --prefix $HOME/Dev/youtube/backend run start "$1" "$2" "$3""

# Disable zsh correct
unsetopt correct_all

DISABLE_AUTO_TITLE='true'

## Android Studio
#export ANDROID_HOME=$HOME/Android/Sdk
#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter
#export PATH="$HOME/Documentos/flutter/bin:$PATH"

# yt-dlp
alias ytdl="yt-dlp -o '/home/thiago/Downloads/%(title)s.%(ext)s' --merge-output-format"

# P10k 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ZSH Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

eval "$(mise activate zsh)"
