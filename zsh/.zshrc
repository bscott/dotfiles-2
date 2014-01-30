# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="nebirhos"

# chruby
#source /usr/local/opt/chruby/share/chruby/chruby.sh

# default ruby
# chruby 2.0

# Z
#source "$HOME/.dotfiles/z/z.sh"

# Global aliases
alias ctags="`brew --prefix`/bin/ctags"
alias ga="git add ."
alias gs="git status"
alias gc="git commit"
alias -g tag='ctags -R .'
alias -g mux='tmuxinator'
alias -g tks='tmux kill-session'
alias -g rmswp='find . -name ".*.sw*" | xargs rm -f'


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew screen osx vagrant rvm knife git git-extras knife node npm osx textmate tmux golang sublime rails ruby)

source $ZSH/oh-my-zsh.sh

# Disable auto correct
unsetopt correct_all
unsetopt correct
unsetopt auto_name_dirs

export GOPATH=$HOME/code/gocode
export GOCODE=$GOPATH/src/
#export PATH=$PATH:$GOPATH/bin

export EDITOR='vim'
export DISABLE_AUTO_TITLE=true

# Change this value to set how frequently ZSH updates¬
export UPDATE_ZSH_DAYS=13

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

PATH=$PATH:$HOME/.rvm/bin:/usr/local/share/npm/bin:/usr/local/heroku/bin:$GOPATH/bin:$HOME/.rvm/bin


# Postgres
# export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# SlimerJS
# export SLIMERJSLAUNCHER="/Applications/Firefox.app/Contents/MacOS/firefox"

# Customize to your needs...
# export PATH=$PATH/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/bscott/.rvm/gems/ruby-1.9.3-p194/bin:/Users/bscott/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/bscott/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/bscott/.rvm/bin:/usr/local/sbin:/Users/bscott/.rvm/bin

# export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export EDITOR=vim
source ~/.rvm/scripts/rvm