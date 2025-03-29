{
  username,
  pkgs,
  pkgs-stable,
  ...
}:

{
  config = {
    # Home Manager needs a bit of information about you and the paths it should
    # manage.
    home.username = "${username}";
    home.homeDirectory = "/home/${username}";

    home.packages =
      # Override example for installing a specific Nerd Font:
      # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
      (with pkgs; [
        # Packages placed here are unstable
        bitwarden-desktop
        playerctl
        brightnessctl
      ])
      ++ (with pkgs-stable; [
        # Packages placed here are stable
      ]);

    # Home Manager is pretty good at managing dotfiles. The primary way to manage
    # plain files is through 'home.file'.
    home.file = {
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

    home.sessionVariables = {
      # Force apps to use Wayland
      NIXOS_OZONE_WL = "1";
      
      #EDITOR = "codium";
      TERM = "kitty";
    };

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;

    # Read Home Manager release notes before changing this value.
    home.stateVersion = "24.11";
  };
}
