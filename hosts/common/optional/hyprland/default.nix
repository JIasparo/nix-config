{ ... }:

{
  imports = [
    ./xdg.nix
    ./greetd.nix
    ./gvfs.nix
  ];

  config = {
    programs.hyprland.enable = true;
  };
}
