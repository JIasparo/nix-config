{ pkgs, ... }:

{
  imports = [
    ./theme.nix
  ];

  config = {
    programs.rofi = {
      enable = true;
      package = pkgs.rofi-wayland;
    };
  };
}
