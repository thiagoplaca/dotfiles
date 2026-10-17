# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -z "$TMUX" && -o interactive ]]; then
  exec tmux new-session -A -s main
fi

# Alias
alias zshrc="nvim ~/.zshrc"
alias szshrc="source ~/.zshrc"
alias cc="clear"
alias sus="systemctl suspend"
alias chw="cliphist wipe"
#alias keymap="setxkbmap -layout us -variant intl"
#alias abnt2="setxkbmap -model abnt2 -layout br"

# Audio Separator 
as() {
  audio-separator "$1" --model_filename UVR-MDX-NET-Inst_HQ_3.onnx
}

# ffmpeg
to_mp3() {
  ffmpeg -i "$1" -c:a libmp3lame -q:a 0 "${1:r}.mp3"
}

# Disable zsh correct
unsetopt correct_all
DISABLE_AUTO_TITLE='true'

# yt-dlp
alias ytv="yt-dlp -o '/home/thiago/Downloads/%(title)s.%(ext)s' --merge-output-format"
alias yta="yt-dlp -x --audio-format mp3"

source ~/.powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Mise
eval "$(/home/thiago/.local/bin/mise activate zsh)" # added by https://mise.run/zsh

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# ZSH Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 


