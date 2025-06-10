{ pkgs, ... }:

{
  imports = [
    ./theme.nix
  ];

  config = {
    programs.rofi = {
      enable = true;
      package = pkgs.rofi-wayland;

      plugins = with pkgs; [
        rofi-calc
      ];

      modes = [
        "drun"
        "calc"
        "window"
      ];
    };
  };
}
