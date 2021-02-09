# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/.gem/ruby/2.3.0/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:$HOME/.local/bin

export GOPATH=$HOME/go

# Path to your oh-my-zsh installation.
  export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias o="xdg-open"
alias docker-cleanup="docker rm \$(docker ps -q -f status=exited); docker rmi \$(docker images -q -f dangling=true)"
alias start-js-sdk="docker run -it \
--rm \
--device=/dev/dri:/dev/dri \
-e DISPLAY=unix\$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
-v ~/Repos:/home/developer/Repos \
-v ~/.ssh:/home/developer/.ssh \
-v ~/.gitconfig:/home/developer/.gitconfig \
-v ~/.PhpStorm2017.2:/home/developer/.PhpStorm2017.2 \
-v ~/.oh-my-zsh:/home/developer/.oh-my-zsh \
-v ~/.zshrc:/home/developer/.zshrc \
-v ~/.atom:/home/developer/.atom \
-v ~/.vimrc:/home/developer/.vimrc \
-d \
-p 4000:4000 \
-p 3001:3001 \
-p 4200:4200 \
-p 8080:8080 \
js-sdk"
alias js-sdk-zsh="docker exec -it \$(docker ps -q -f ancestor=js-sdk) zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# added by travis gem
[ -f /home/alexander/.travis/travis.sh ] && source /home/alexander/.travis/travis.sh
# xmodmap -e "keycode 49 = less greater bar bar bar"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/alexander/Repos/netlify-travis-integration/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/alexander/Repos/netlify-travis-integration/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/alexander/Repos/netlify-travis-integration/node_modules/tabtab/.completions/sls.zsh ]] && . /home/alexander/Repos/netlify-travis-integration/node_modules/tabtab/.completions/sls.zsh
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:$HOME/.gem/bin"

export GEM_HOME=~/.gem
export GEM_PATH=~/.gem

bindkey 'OH' beginning-of-line
bindkey 'OF' end-of-line

if [[ -o login ]]; then
    read-quote $HOME/.config/shell-quotes/aurelius.txt
fi
