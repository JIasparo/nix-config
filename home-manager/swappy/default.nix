{ pkgs, ... }:

{
  config = {
    home = {
      packages = with pkgs; [
        swappy
      ];

      file = {
        ".config/swappy/config".source = ./config;
      };
    };
  };
}
