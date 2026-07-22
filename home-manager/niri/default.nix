{ pkgs, lib, config, ... }:

{
  imports = [
    # Required
    ./binds.nix
    ./monitors.nix
    ./rules.nix
    ./settings.nix
    ./workspaces.nix

    # Optional
    ./../sway/swaync.nix
    #./../sway/swayidle.nix
  ];

  config = {
    xdg.portal = {
      enable = true;
      config.common.default = ["gnome"];
      extraPortals = with pkgs; [
        xdg-desktop-portal-gnome
        xdg-desktop-portal-gtk
      ];
    };

    home.packages = with pkgs; [
      nautilus
    ];

    programs.niri = {
      enable = true;

      settings.xwayland-satellite = {
        enable = true;
        path = "${lib.getExe pkgs.xwayland-satellite}";
      };
    };

    # Taken from github:ryan4yin/nix-config.
    # NOTE: this executable is used by greetd to start a wayland session when system boot up
    # with such a vendor-no-locking script, we can switch to another wayland compositor without modifying greetd's config in NixOS module
    home.file.".wayland-session" = {
      source = pkgs.writeScript "init-session" ''
        # trying to stop a previous wayland compositor session
        systemctl --user is-active niri.service && systemctl --user stop niri.service
        # and then we start a new one
        ${lib.getExe' config.programs.niri.package "niri-session"}
      '';
      executable = true;
    };
  };
}
