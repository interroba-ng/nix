if status is-interactive
# Commands to run in interactive sessions can go here
end

alias rebuild="sudo nixos-rebuild switch --flake ~/nix/.#nixos"
