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
        #lutris
        #nexusmods-app
        #orca-slicer
        piper
        picard
        #prismlauncher
        pwvucontrol
        slurp
        vlc
        wl-clipboard
      ];

      sessionVariables = {
        #EDITOR = "codium";
        VISUAL = "codium";
        TERM = "kitty";
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
