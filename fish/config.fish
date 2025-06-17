if status is-interactive
    # Commands to run in interactive sessions can go here

    fish_config theme choose "Rosé Pine Moon"
    set fish_greeting
    fastfetch --color "#C4A7E7" --logo-color-1 "#3E8FB0" --logo-color-2 "#3E8FB0"
    starship init fish | source
end
