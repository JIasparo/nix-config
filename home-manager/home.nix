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
        #blender
        bottles
        brightnessctl
        #davinci-resolve
        ffmpeg-full
        #freecad-wayland
        grim
        #heroic
        #kdePackages.okular # Good for annotating PDFs
        #lutris
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
