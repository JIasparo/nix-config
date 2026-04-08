{ pkgs, ... }:

{
  imports = [
    #./autostart.nix
    ./binds.nix
    ./monitors.nix
    ./rules.nix
    ./settings.nix
  ];

  config = {
    wayland.windowManager.mango = {
      enable = true;
    };

    # Taken from github:ryan4yin/nix-config.
    # NOTE: this executable is used by greetd to start a wayland session when system boot up
    # with such a vendor-no-locking script, we can switch to another wayland compositor without modifying greetd's config in NixOS module
    home.file.".wayland-session" = {
      source = pkgs.writeScript "init-session" ''
        # trying to stop a previous wayland compositor session
        systemctl --user is-active mango.service && systemctl --user stop mango.service
        # and then we start a new one
        /run/current-system/sw/bin/mango-session
      '';
      executable = true;
    };
  };
}
