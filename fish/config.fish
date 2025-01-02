if status is-interactive
    # Commands to run in interactive sessions can go here

    fish_config theme choose "Rosé Pine Moon"
    set fish_greeting
    neofetch
    starship init fish | source
end
