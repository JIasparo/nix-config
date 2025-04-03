{ ... }:

{
  imports = [
    ./xdg.nix
    ./greetd.nix
  ];

  config = {
    programs.hyprland.enable = true;
  };
}
