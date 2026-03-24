# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export CLICOLOR=1
export LSCOLORS=Exfxgxdxcxegedabagacad

# Aliases (The -G flag is crucial for colors)
alias ls='ls -G'
alias ll='ls -lahG'
alias la='ls -aG'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ============================================
# PLUGINS (Must be at the very end)
# ============================================

# 1. Syntax Highlighting
# (Colors commands green if valid, red if invalid)
if [ -f "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ============================================
# SOFT SYNTAX HIGHLIGHTING (Pastel Colors)
# ============================================
# Must be placed AFTER the syntax-highlighting plugin is sourced

# 1. Make errors (typos) a Soft Pastel Red (203)
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=203,bold'

# 2. Make valid commands a Soft Pastel Green (150)
ZSH_HIGHLIGHT_STYLES[command]='fg=150,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=150,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=150,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=150,bold'

# 3. Make paths/files a Soft Blue (111) to match your name
ZSH_HIGHLIGHT_STYLES[path]='fg=111'

# ============================================
# ANDY BORCH: COMMAND SEPARATOR
# ============================================
# This function draws a line across the screen before every new prompt.

function draw_separator() {
  # 1. Check if this is the very first prompt of the session.
  #    If yes, do nothing (prevents a weird line at the top).
  if [[ -z $HAS_RUN_ONCE ]]; then
    export HAS_RUN_ONCE=1
    return
  fi

  # 2. Draw the line.
  #    (l:COLUMNS::─:) = Draw the '─' char across the full width
  print -P '%F{152}${(l:COLUMNS::─:)}%f'
}

# 3. Hook it into Zsh so it runs automatically
#    Using the array ensures we don't break other plugins.
precmd_functions+=(draw_separator)

# ============================================
# GNU LS CONFIGURATION (Clean & Neutral)
# ============================================

# 1. Clean up old variables
unset EZA_COLORS

# 2. Define Colors
# di=Bold Blue (1;34) | ln=Teal (38;5;36)
# ex=00 (Normal/White) - This removes the Green override
export LS_COLORS="di=1;34:ln=38;5;73:ex=00:*.md=38;5;219:*.py=38;5;222:*.c=38;5;110:*.cpp=38;5;75:*.h=38;5;75:*.csv=38;5;150:*.sh=38;5;209:*.java=38;5;180:*.pdf=38;5;203:*makefile=38;5;140:*Makefile=38;5;140:*.json=38;5;223:*.js=38;5;229:*.html=38;5;216:*.css=38;5;153:*.zip=38;5;167:*.tar=38;5;167:*.gz=38;5;167:*.o=38;5;240"
# 3. Aliases
# Removed -F (No more * symbols next to files)
alias ls='gls --color=always --group-directories-first -C'
alias ll='gls -l --color=always --group-directories-first'
alias la='gls -la --color=always --group-directories-first'
