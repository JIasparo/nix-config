{ pkgs, ... }:

{
  imports = [
    ./settings.nix
    ./theme.nix
  ];

  config = {
    programs.rofi = {
      enable = true;

      plugins = with pkgs; [
        rofi-calc
      ];
    };
  };
}
