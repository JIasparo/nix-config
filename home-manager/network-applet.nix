{ pkgs, ... }:

{
  config = {
    home.packages = with pkgs; [
      networkmanagerapplet
    ];

    services.network-manager-applet = {
      enable = true;
    };
  };
}
