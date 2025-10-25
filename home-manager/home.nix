{
  username,
  pkgs,
  inputs,
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
        #bottles
        brightnessctl
        #davinci-resolve
        ffmpeg-full
        #freecad
        grim
        #heroic
        #kdePackages.okular # Good for annotating PDFs
        #krita
        #nexusmods-app
        #orca-slicer
        piper
        picard
        #prismlauncher
        pwvucontrol
        slurp
        unrar
        vlc
        wl-clipboard
      ];

      sessionVariables = {
        BROWSER = "librewolf";
        EDITOR = "nano";
        TERM = "kitty";
        VISUAL_EDITOR = "codium";
        MEDIA_PLAYER = "vlc";
      };

      # The NixOS version the config was built upon.
      stateVersion = "24.11"; # Read Home Manager release notes before changing this value.
    };

    # Set the $NIX_PATH env to follow flake.nix
    nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # Garbage collection
    services.home-manager.autoExpire = {
      enable = true;
      frequency = "daily";
      timestamp = "-2 days";
    };

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
  };
}
