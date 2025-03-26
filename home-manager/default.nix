{ ... }:

{
  imports = [
    # Required
    ./home.nix
    # Optional
    ./bash.nix
    ./git
    #./gnome
    ./gtk.nix
    ./hyprland
    ./kitty
    ./rofi
    #./stylix
    ./swaync
    ./vscodium
    ./floorp
  ];
}
