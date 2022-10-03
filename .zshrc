

typeset -U path cdpath fpath manpath



for profile in ${(z)NIX_PROFILES}; do
  fpath+=($profile/share/zsh/site-functions $profile/share/zsh/$ZSH_VERSION/functions $profile/share/zsh/vendor-completions)
done

HELPDIR="/nix/store/d8x9n1kvykl2nbdaff9kxhxc831svja7-zsh-5.8.1/share/zsh/$ZSH_VERSION/help"





source /nix/store/k7cxj1lj79hixbnm94wx8h0w2y0vrjcy-zplug-2.4.2/init.zsh

export ZPLUG_HOME=/home/clovis.lechien/.zplug

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "wting/autojump"



if ! zplug check; then
  zplug install
fi

zplug load




# Oh-My-Zsh/Prezto calls compinit during initialization,
# calling it twice causes slight start up slowdown
# as all $fpath entries will be traversed again.






# oh-my-zsh extra settings for plugins

# oh-my-zsh configuration generated by NixOS


ZSH_THEME="bira"
source $ZSH/oh-my-zsh.sh






# History options should be set in .zshrc and after oh-my-zsh sourcing.
# See https://github.com/nix-community/home-manager/issues/177.
HISTSIZE="10000"
SAVEHIST="10000"

HISTFILE="$HOME/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"

setopt HIST_FCNTL_LOCK
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY




# Aliases


# Global Aliases


# Named Directory Hashes

