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
    ./rofi
    ./stylix
    ./swaync
    ./vscodium
  ];
}
