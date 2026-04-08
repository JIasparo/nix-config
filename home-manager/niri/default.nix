{ pkgs, lib, ... }:

{
  imports = [
    ./binds.nix
    ./monitors.nix
    ./rules.nix
    ./settings.nix
  ];

  config = {
    home.packages = with pkgs; [
      xwayland-satellite
      swaybg
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
        /run/current-system/sw/bin/niri-session
      '';
      executable = true;
    };
  };
}
