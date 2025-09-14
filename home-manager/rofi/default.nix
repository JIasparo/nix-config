{ pkgs, ... }:

{
  imports = [
    ./theme.nix
  ];

  config = {
    programs.rofi = {
      enable = true;

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
