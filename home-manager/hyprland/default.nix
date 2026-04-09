{ pkgs, lib, config, ... }:

{
  imports = [
    ./binds.nix
    ./hypridle.nix
    #./hyprlauncher.nix
    ./hyprlock.nix
    ./hyprpaper.nix
    ./monitors.nix
    ./rules.nix
    ./settings.nix
  ];

  config = {
    wayland.windowManager.hyprland = {
      enable = true;

      extraConfig = ''
        ecosystem:no_update_news=true;
      '';
    };

    # Taken from github:ryan4yin/nix-config.
    # NOTE: this executable is used by greetd to start a wayland session when system boot up
    # with such a vendor-no-locking script, we can switch to another wayland compositor without modifying greetd's config in NixOS module
    home.file.".wayland-session" = {
      source = pkgs.writeScript "init-session" ''
        # trying to stop a previous wayland compositor session
        systemctl --user is-active Hyprland.service && systemctl --user stop Hyprland.service
        # and then we start a new one
        ${lib.getExe config.wayland.windowManager.hyprland.package}
      '';
      executable = true;
    };
  };
}
