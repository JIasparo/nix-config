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
    #./stylix
    ./vscodium
  ];
}
