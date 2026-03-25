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
# SYNTAX HIGHLIGHTING (One Dark Pro)
# ============================================
# Must be placed AFTER the syntax-highlighting plugin is sourced

# One Dark Pro core colors:
# red=204 green=114 yellow=180 blue=75 purple=176 cyan=73 comment=59

# Unknown/invalid commands
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=204,bold'
ZSH_HIGHLIGHT_STYLES[default]='none'

# Valid command forms
ZSH_HIGHLIGHT_STYLES[command]='fg=180,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=176,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=180,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=73,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=176,bold'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=59'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=180'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=180'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=180,bold'
ZSH_HIGHLIGHT_STYLES[assign]='fg=204'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=176'
ZSH_HIGHLIGHT_STYLES[comment]='fg=59,italic'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=173,bold'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=73'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=204,bold'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=204,bold'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=114'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=114'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=73'

# Paths/files and quoted strings
ZSH_HIGHLIGHT_STYLES[path]='fg=110'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=59'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=176'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=114'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=114'
ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=73'
ZSH_HIGHLIGHT_STYLES[math-expansion]='fg=173'
ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=176'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=75'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=176'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=173'

# ============================================
# GNU LS CONFIGURATION (One Dark Pro)
# ============================================

# 1. Clean up old variables
unset EZA_COLORS
unset LSCOLORS

# 2. One Dark Pro-inspired file type colors
export LS_COLORS="no=0:fi=0:di=38;5;75:ln=38;5;73:pi=38;5;180:so=38;5;176:bd=38;5;173:cd=38;5;173:su=38;5;204:sg=38;5;203:tw=38;5;59:ow=38;5;59:st=38;5;59:ex=00:*.md=38;5;109:*.txt=38;5;188:*.TXT=38;5;188:*.rtf=38;5;188:*.log=38;5;59:*.json=38;5;180:*.jsonc=38;5;180:*.yaml=38;5;180:*.yml=38;5;180:*.toml=38;5;180:*.xml=38;5;180:*.conf=38;5;180:*.ini=38;5;180:*.env=38;5;180:*.lock=38;5;59:*.zsh=38;5;114:*.sh=38;5;114:*.bash=38;5;114:*.fish=38;5;114:*.py=38;5;180:*.ipynb=38;5;173:*.IPYNB=38;5;173:*.rb=38;5;176:*.pl=38;5;204:*.php=38;5;176:*.js=38;5;204:*.mjs=38;5;204:*.cjs=38;5;204:*.ts=38;5;75:*.tsx=38;5;75:*.jsx=38;5;75:*.vue=38;5;75:*.svelte=38;5;75:*.html=38;5;204:*.css=38;5;176:*.scss=38;5;176:*.less=38;5;176:*.go=38;5;73:*.rs=38;5;173:*.java=38;5;204:*.kt=38;5;204:*.swift=38;5;173:*.c=38;5;75:*.h=38;5;75:*.cpp=38;5;75:*.hpp=38;5;75:*.cc=38;5;75:*.hh=38;5;75:*.sql=38;5;176:*.graphql=38;5;176:*.gql=38;5;176:*.csv=38;5;114:*.tsv=38;5;114:*.pdf=38;5;203:*.PDF=38;5;203:*.docx=38;5;176:*.DOCX=38;5;176:*.pptx=38;5;75:*.PPTX=38;5;75:*.png=38;5;180:*.jpg=38;5;180:*.jpeg=38;5;180:*.gif=38;5;180:*.webp=38;5;180:*.svg=38;5;73:*.ico=38;5;73:*.mp3=38;5;173:*.wav=38;5;173:*.mp4=38;5;173:*.mov=38;5;173:*.zip=38;5;59:*.tar=38;5;59:*.gz=38;5;59:*.tgz=38;5;59:*.xz=38;5;59:*.bz2=38;5;59:*.7z=38;5;59:*.o=38;5;59:*.a=38;5;59:*.so=38;5;59:*.dylib=38;5;59:*.class=38;5;59:*Makefile=38;5;176:*makefile=38;5;176:*Dockerfile=38;5;176"
# 3. Aliases
# Removed -F (No more * symbols next to files)
alias ls='gls --color=always --group-directories-first -C'
alias ll='gls -l --color=always --group-directories-first'
alias la='gls -la --color=always --group-directories-first'
