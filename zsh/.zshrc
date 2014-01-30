# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="nebirhos"

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh

# default ruby
chruby 2.0

# Z
source "$HOME/.dotfiles/z/z.sh"

# Global aliases
alias ctags="`brew --prefix`/bin/ctags"
alias ga="git add ."
alias gs="git status"
alias gc="git commit"
alias -g tag='ctags -R .'
alias -g mux='tmuxinator'
alias -g tks='tmux kill-session'
alias -g rmswp='find . -name ".*.sw*" | xargs rm -f'

# Rails aliases
alias -g migrate='rake db:migrate db:test:prepare'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
# Disable auto correct
unsetopt correct_all

export GOPATH=$HOME/code/gocode
export GOCODE=$GOPATH/src/
export PATH=$PATH:$GOPATH/bin

export EDITOR='vim'
export DISABLE_AUTO_TITLE=true

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# NPM path
export PATH="/usr/local/share/npm/bin:$PATH"

# Postgres
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# SlimerJS
export SLIMERJSLAUNCHER="/Applications/Firefox.app/Contents/MacOS/firefox"

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/bscott/.rvm/gems/ruby-1.9.3-p194/bin:/Users/bscott/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/bscott/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/bscott/.rvm/bin:/usr/local/sbin:/Users/bscott/.rvm/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export EDITOR=vim