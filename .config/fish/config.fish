if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

zoxide init fish | source
alias cd="z"

starship init fish | source

fish_add_path /home/strix/.spicetify
