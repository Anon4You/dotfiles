# =============================================================================
#  Copyright (c) Anon4You - https://github.com/Anon4You/dotfiles
#  Fish shell configuration (~/.config/fish/config.fish)
#
#  Note: This config is tuned for Termux / Android using a green
#  monochrome color scheme (everything stays green for consistency).
# =============================================================================

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
	# Write the program or command that you want to execute here.
	# Examples: fastfetch | neofetch | pfetch | screenfetch | cbonsai
	# termuxfetch
end

# Define colours using tput – note the parentheses, not $()
set GREEN (tput setaf 2)
set BRIGHT_GREEN (tput setaf 10 2>/dev/null || tput setaf 2)
set BG_GREEN (tput setab 2)
set BOLD (tput bold)
set DIM (tput dim 2>/dev/null || tput setaf 2)
set UNDERLINE (tput smul)
set REVERSE (tput rev)
set RESET (tput sgr0)

# Export LESS_TERMCAP variables – use set -x
set -x LESS_TERMCAP_mb "$BOLD$BRIGHT_GREEN"
set -x LESS_TERMCAP_md "$BOLD$BRIGHT_GREEN"
set -x LESS_TERMCAP_me "$RESET"
set -x LESS_TERMCAP_se "$RESET"
set -x LESS_TERMCAP_so "$BOLD$BRIGHT_GREEN$BG_GREEN"
set -x LESS_TERMCAP_ue "$RESET"
set -x LESS_TERMCAP_us "$UNDERLINE$BRIGHT_GREEN"
set -x LESS_TERMCAP_mr "$REVERSE"
set -x LESS_TERMCAP_mh "$DIM$GREEN"

set -x LESS "-R"
set -x MANPAGER "less -R"
set -x PAGER "less -R"
set -x BAT_THEME "ansi"

# Force all colours to green (for ls/lsd)
set -x LS_COLORS "di=1;38;5;46:ex=1;38;5;46:fi=38;5;46:*.txt=38;5;47:*.sh=1;38;5;82:*.py=38;5;48:*.c=38;5;49:*.cpp=38;5;49:*.h=38;5;49:*.md=38;5;47:*.json=38;5;114:*.yml=38;5;114:*.toml=38;5;114:*.conf=38;5;108:*.log=38;5;108:*.jpg=38;5;70:*.png=38;5;70:*.mp4=38;5;70:*.mp3=38;5;70:*.zip=38;5;154:*.tar=38;5;154:*.gz=38;5;154"

# Navigation shortcuts
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias rm='rm -rf'

# File listing: both lsd and eza can be used.
# Kill whichever one you do NOT want installed, or re-alias below.

alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -l'
alias lh='lsd -lh'
alias cat='bat -pp'

starship init fish | source
