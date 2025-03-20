{ pkgs, ... }:

{
  imports = [
    # Needed for Hyprland to work
    ./../regreet.nix
  ];

  config = {
    xdg.portal = {
      enable = true;

      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
      ];
    };

    programs.hyprland.enable = true;

    # Force apps to use Wayland
    environment.sessionVariables.NIXOS_OZONE_WL = "1";
  };
}
