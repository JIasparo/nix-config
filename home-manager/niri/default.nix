{
  pkgs,
  lib,
  config,
  ...
}:

{
  imports = [
    # Required
    ./binds.nix
    ./monitors.nix
    ./rules.nix
    ./settings.nix
    ./workspaces.nix

    # Optional
    ./../sway/swayidle.nix
    ./../sway/swaync.nix
  ];

  config = {
    home.packages = with pkgs; [
      nautilus
    ];

    wayland.windowManager.niri = {
      enable = true;
    };

    # Taken from github:ryan4yin/nix-config.
    # NOTE: this executable is used by greetd to start a wayland session when system boot up
    # with such a vendor-no-locking script, we can switch to another wayland compositor without modifying greetd's config in NixOS module
    home.file.".wayland-session" = {
      source = pkgs.writeScript "init-session" ''
        # trying to stop a previous wayland compositor session
        systemctl --user is-active niri.service && systemctl --user stop niri.service
        # and then we start a new one
        ${lib.getExe' config.wayland.windowManager.niri.package "niri-session"}
      '';
      executable = true;
    };
  };
}
