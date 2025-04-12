{ pkgs, ... }:
{
  config = {
    xdg.portal = {
      enable = true;

      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
      ];
    };

    environment.systemPackages = with pkgs; [
      xdg-utils
    ];
  };
}
