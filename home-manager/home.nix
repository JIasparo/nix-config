{
  username,
  pkgs,
  ...
}:

{
  config = {

    home = {
      username = "${username}";
      homeDirectory = "/home/${username}";

      packages = with pkgs; [
        bitwarden-desktop
        blender
        bottles
        brightnessctl
        #davinci-resolve
        ffmpeg-full
        file-roller
        #freecad-wayland
        grim
        heroic
        #kdePackages.okular # Good for annotating PDFs
        #obsidian
        #orca-slicer
        pwvucontrol
        slurp
        swappy
        swaybg
        vlc
        wl-clipboard
      ];

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
