{ ... }:

{
  imports = [
    ./greetd.nix
    ./gvfs.nix
    ./xdg.nix
  ];

  config = {
    programs.hyprland.enable = true;
  };
}
