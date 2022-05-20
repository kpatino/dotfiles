# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# Currently disabled because foot starts fast enough and I don't need it
# https://codeberg.org/dnkl/foot/issues/558
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE="$XDG_STATE_HOME"/zsh/history
HISTSIZE=9999
SAVEHIST=9999
## Options section
#setopt correct                                                 # Auto correct mistakes
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt autocd                                                   # If only directory path is entered, cd there.
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt histfindnodups                                           # Ignore duplicates when searching
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt histreduceblanks                                         # Removes blank lines from history
setopt nobeep                                                   # No beep
setopt nocaseglob                                               # Case insensitive globbing
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt prompt_subst                                             # Enable substitution for prompt
setopt rcexpandparam                                            # Array expension with parameters
setopt sharehistory                                             # Share history

## Plugins section: Enable fish style features
# Use auto suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# Use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Keybindings section
bindkey -e                                                      # Emacs keybindings 

bindkey '^[[7~' beginning-of-line                               # Home key
bindkey '^[[H' beginning-of-line                                # Home key
if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line                # [Home] - Go to beginning of line
fi
bindkey '^[[8~' end-of-line                                     # End key
bindkey '^[[F' end-of-line                                      # End key
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}" end-of-line                       # [End] - Go to end of line
fi
bindkey '^[[2~' overwrite-mode                                  # Insert key
bindkey '^[[3~' delete-char                                     # Delete key
bindkey '^[[C'  forward-char                                    # Right key
bindkey '^[[D'  backward-char                                   # Left key
bindkey '^[[5~' history-beginning-search-backward               # Page up key
bindkey '^[[6~' history-beginning-search-forward                # Page down key

# Navigate words with ctrl+arrow keys
bindkey '^[Oc' forward-word                                     #
bindkey '^[Od' backward-word                                    #
bindkey '^[[1;5D' backward-word                                 #
bindkey '^[[1;5C' forward-word                                  #
bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
bindkey '^[[Z' undo                                             # Shift+tab undo last action

# bind UP and DOWN arrow keys to history substring search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$ZDOTDIR'

#zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
zmodload zsh/complist

autoload -Uz compinit 
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

# End of lines added by compinstall
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $XDG_CONFIG_HOME/powerlevel10k/p10k.zsh ]] || source $XDG_CONFIG_HOME/powerlevel10k/p10k.zsh

## Alias section 
alias df='duf'
alias ls='exa --icons'
alias mp3-dl="yt-dlp --extract-audio --audio-format mp3 --audio-quality 0"
alias ra='ranger'
alias removeorphans='paru -Rs $(paru -Qqtd)'
alias rtop='radeontop -c -T'
alias vi='vim'
alias wlcopy='wl-copy --trim-newline'
alias wlpaste='wl-paste'
alias xssh='env TERM=xterm-256color ssh'
alias xwayland-screencast='SDL_VIDEODRIVER=x11 wf-recorder -c rawvideo -m sdl -f pipe:xwayland-mirror'
alias yt-dl="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"
