# ==============================================================================
# 1. Powerlevel10k Instant Prompt
# ==============================================================================
# Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ==============================================================================
# 2. Environment & Version Managers
# ==============================================================================
# Mise (must run before compinit to properly register fpath completions)
eval "$(/home/thiago/.local/bin/mise activate zsh)" # added by https://mise.run/zsh

# ==============================================================================
# 3. Shell Options & Environment
# ==============================================================================
unsetopt correct_all
DISABLE_AUTO_TITLE='true'

# ==============================================================================
# 4. Completion System
# ==============================================================================
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# ==============================================================================
# 5. Aliases
# ==============================================================================
alias zshrc="nvim ~/.zshrc"
alias szshrc="source ~/.zshrc"
alias cc="clear"
alias sus="systemctl suspend"
alias chw="cliphist wipe"
#alias keymap="setxkbmap -layout us -variant intl"
#alias abnt2="setxkbmap -model abnt2 -layout br"

# yt-dlp
alias ytv="yt-dlp -o '/home/thiago/Downloads/%(title)s.%(ext)s' --merge-output-format"
alias yta="yt-dlp -x --audio-format mp3"

# ==============================================================================
# 6. Functions
# ==============================================================================
# Audio Separator 
as() {
  audio-separator "$1" --model_filename UVR-MDX-NET-Inst_HQ_3.onnx
}

# ffmpeg
to_mp3() {
  ffmpeg -i "$1" -c:a libmp3lame -q:a 0 "${1:r}.mp3"
}

# ==============================================================================
# 7. Theme
# ==============================================================================
# Powerlevel10k Theme
source ~/.powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ==============================================================================
# 8. Syntax Highlighting (must be at the end)
# ==============================================================================
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
