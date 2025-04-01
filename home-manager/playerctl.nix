{ pkgs, ... }:

{
  config = {
    home.packages = with pkgs; [
      playerctl
    ];

    services.playerctld = {
      enable = true;
    };
  };
}
