{ ... }:

{
  imports = [
    # Required
    ./home.nix
    # Optional
    ./bash.nix
    ./fastfetch
    ./fzf.nix
    ./git
    ./gtk.nix
    ./hyprland
    ./kitty
    ./librewolf
    ./mpd.nix
    ./playerctl.nix
    ./qt.nix
    ./rofi
    ./stylix
    ./swaync
    ./vscodium
    ./yazi
  ];
}
