{ ... }:

{
  imports = [
    ./greetd.nix
    ./gvfs.nix
    ./xdg.nix
  ];

  config = {
    #programs.niri.enable = true;
  };
}
