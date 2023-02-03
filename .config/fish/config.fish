if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end
fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'oh-my-fish/plugin-pj'
fundle plugin 'oh-my-fish/plugin-brew'
	
set fish_greeting

fish_add_path /usr/local/sbin
fish_add_path ~/bin

fish_vi_key_bindings
fish_vi_cursor

export HOMEBREW_INSTALL_BADGE=""
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_AUTO_UPDATE=1

test -e {$HOME}/.iterm2_shell_integration.fish
and source {$HOME}/.iterm2_shell_integration.fish

thefuck --alias | source

function nvm
	bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end
set -x NVM_DIR ~/.nvm
nvm use default --silent

function update
	brew update
	brew outdated
	brew upgrade
	mas outdated
end

function full-update
	brew update 
	brew outdated
	brew outdated --cask --greedy
	brew upgrade
	brew upgrade --cask --greedy
	brew autoremove 
	brew cleanup 
	mas outdated 
	mas upgrade 
	softwareupdate -lia
end

function kernvirtualbox
	sudo kextload -b org.virtualbox.kext.VBoxDrv
	sudo kextload -b org.virtualbox.kext.VBoxNetFlt
	sudo kextload -b org.virtualbox.kext.VBoxNetAdp
   	sudo kextload -b org.virtualbox.kext.VBoxUSB
end

function mullapi
   	curl https://am.i.mullvad.net/connected
   	curl https://am.i.mullvad.net/city
end

function mullapif
 	curl https://am.i.mullvad.net/json
end

function chromium
   	/usr/bin/env GOOGLE_API_KEY="no" GOOGLE_DEFAULT_CLIENT_ID="no" GOOGLE_DEFAULT_CLIENT_SECRET="no" /usr/bin/open -a chromium
end

function backup
end

alias vi="nvim"
alias checkra1n="/Applications/checkra1n.app/Contents/MacOS/checkra1n"
alias handbrake="HandBrakeCLI"
alias browsh="docker run --rm -it browsh/browsh"
alias ls="lsd"
alias lsa="ls -A"
alias la="ls -A"
alias l="ls -"
alias lla="ls -la"
alias lt="ls --tree"
alias ytdl="youtube-dl"
alias ytplay="~/bin/ytplay.sh"
alias dlp="yt-dlp"
alias xcode="open -a Xcode"
alias edit="open -a TextEdit"
alias icloud="cd ~/Library/'Mobile Documents'/com~apple~CloudDocs"
alias fishrc="vi ~/.config/fish/config.fish"
alias vimrc="vi ~/.vimrc"
alias cpufetch="cpufetch --logo-intel-new"
alias decrypt="sneakers;la ~/USBDrive | nms -a;la ~/USBDrive/Addresses | nms -af white"

starship init fish | source

