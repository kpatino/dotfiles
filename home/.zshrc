# Lines configured by zsh-newuser-install
HISTFILE="$XDG_STATE_HOME"/zsh/history
HISTSIZE=999999
SAVEHIST=$HISTSIZE
## Options section
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

autoload -U select-word-style
select-word-style bash
zstyle :compinstall filename '$ZDOTDIR'
#zstyle ':completion:*' menu select
zstyle ':completion::complete:*' menu select gain-privileges 1
zmodload zsh/complist
autoload -Uz compinit 
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

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

# Use auto suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# Use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# foot integration
function osc7-pwd() {
    emulate -L zsh # also sets localoptions for us
    setopt extendedglob
    local LC_ALL=C
    printf '\e]7;file://%s%s\e\' $HOST ${PWD//(#m)([^@-Za-z&-;_~])/%${(l:2::0:)$(([##16]#MATCH))}}
}

function chpwd-osc7-pwd() {
    (( ZSH_SUBSHELL )) || osc7-pwd
}
add-zsh-hook -Uz chpwd chpwd-osc7-pwd

precmd() {
    print -Pn "\e]133;A\e\\"
}

# Prompt
eval "$(starship init zsh)"

## Alias section
alias ip='ip -c'
alias ls='eza --colour=auto --icons --hyperlink'
alias mp3-dl="yt-dlp --extract-audio --audio-format mp3 --audio-quality 0"
alias protontricks-launch='flatpak run --command=protontricks-launch com.github.Matoking.protontricks'
alias protontricks='flatpak run com.github.Matoking.protontricks'
alias ra='ranger'
alias vi='vim'
alias wlc='wl-copy --trim-newline'
alias wlp='wl-paste'
alias xssh='env TERM=xterm-256color ssh'
alias yt-dl="yt-dlp -f 'bestvideo*+bestaudio/best' --sponsorblock-mark all --sponsorblock-chapter-title '%(category_names)l'"
