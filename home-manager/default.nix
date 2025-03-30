{ ... }:

{
  imports = [
    # Required
    ./home.nix
    # Optional
    ./bash.nix
    ./git
    ./gtk.nix
    ./hyprland
    ./kitty
    ./librewolf
    ./qt.nix
    ./rofi
    ./stylix
    ./swaync
    ./vscodium
    ./yazi
  ];
}
