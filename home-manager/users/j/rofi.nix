{ pkgs, ... }:

{
  imports = [
    #aa
  ];

  options = {
    #aa
  };

  config = {
    programs.rofi = {
      enable = true;
      package = pkgs.rofi-wayland;
    };
  };
}