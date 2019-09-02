# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/asishroy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions sublime jsontools) 

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias bws='brazil ws'
alias bwsuse='bws use --gitMode -p'
alias bwscreate='bws create -n'
alias brc=brazil-recursive-cmd
alias bbr='brc brazil-build'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias bbra='bbr apollo-pkg'
alias bb=brazil-build
alias lsart='ls -lart'
export BRAZIL_WORKSPACE_DEFAULT_LAYOUT=short
for f in SDETools envImprovement AmazonAwsCli OdinTools; do
 if [[ -d /apollo/env/$f ]]; then
     export PATH=$PATH:/apollo/env/$f/bin
 fi
done

alias shs="python -m SimpleHTTPServer"

 if [ -f ~/.zshrc-dev-dsk-post ]; then
     source ~/.zshrc-dev-dsk-post
 fi

export PATH=$HOME/.toolbox/bin:$PATH
alias selenium-server3='java -Dwebdriver.chrome.driver=/Users/asishroy/Downloads/chromedriver -jar /Users/asishroy/Downloads/selenium-server-standalone-3.141.59.jar'
alias odin="ssh -fNL 2009:127.0.0.1:2009 dev-dsk-asishroy-1b-b101d63c.eu-west-1.amazon.com"
export PATH=$HOME/bin:$HOME/.toolbox/bin:$PATH
bindkey -v
export PATH=$PATH:/usr/local/bin

alias gcc='gcc-9'
alias cc='gcc-9'
alias g++='g++-9'
alias c++='c++-9'
alias npp='wine ~/Documents/npp.7.7.1.bin.x64/notepad++.exe'
#export IGNITE_HOME=/Users/asishroy/Downloads/apache-ignite-2.7.5-bin
bindkey "^R" history-incremental-search-backward
bindkey -v '^?' backward-delete-char
export AMAZON_DRIVE_UPLOAD_PATH='shared-screenshots/code-reviews-'$(date +%Y)
alias gcorecur="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git checkout mainline && echo)' \;";
alias rdp="ssh -N -L 13390:localhost:3389 dev-dsk-asishroy-1b-b101d63c.eu-west-1.amazon.com"
alias weather="curl http://v2.wttr.in/Bangalore"
alias sync="rsync -avzr ~/Downloads/Sync /Volumes/Dumper"
