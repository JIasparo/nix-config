{ ... }:

{
  imports = [
    # Required
    ./home.nix
    # Optional
    ./bash.nix
    ./git
    ./gnome.nix
    ./gtk.nix
    ./kitty
    #./stylix
    #./stylix.nix
    ./vscodium
    ./vscodium/nixd.nix
  ];
}
