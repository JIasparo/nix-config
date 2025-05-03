{
  username,
  pkgs,
  pkgs-stable,
  ...
}:

{
  config = {

    home = {
      username = "${username}";
      homeDirectory = "/home/${username}";

      packages =
        # Override example for installing a specific Nerd Font:
        # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
        (with pkgs; [
          # Packages placed here are unstable
          bitwarden-desktop
          #blender
          bottles
          brightnessctl
          #davinci-resolve
          discord
          ffmpeg-full
          font-awesome # Needed for swappy icons
          #freecad-wayland
          grim
          heroic
          #obsidian
          orca-slicer
          picard
          pwvucontrol
          slurp
          swappy
          swaybg
          vlc
          wl-clipboard
        ])
        ++ (with pkgs-stable; [
          # Packages placed here are stable
        ]);

      # Home Manager is pretty good at managing dotfiles. The primary way to manage
      # plain files is through 'home.file'.
      file = {
        # # Building this configuration will create a copy of 'dotfiles/screenrc' in
        # # the Nix store. Activating the configuration will then make '~/.screenrc' a
        # # symlink to the Nix store copy.
        # ".screenrc".source = dotfiles/screenrc;

        # # You can also set the file content immediately.
        # ".gradle/gradle.properties".text = ''
        #   org.gradle.console=verbose
        #   org.gradle.daemon.idletimeout=3600000
        # '';
      };

      sessionVariables = {
        #EDITOR = "codium";
        TERM = "kitty";
      };

      # Read Home Manager release notes before changing this value.
      stateVersion = "24.11";
    };

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    services.home-manager.autoExpire = {
      enable = true;
      frequency = "daily";
      timestamp = "-2 days";
    };

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
  };
}
