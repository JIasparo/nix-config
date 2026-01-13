{ pkgs, ... }:

{
  config = {
    home.packages = with pkgs; [
      bitwarden-desktop
      blender
      brightnessctl
      chatterino2
      #davinci-resolve
      ffmpeg-full
      #freecad
      heroic
      #kdePackages.okular # Good for annotating PDFs
      #krita
      #nexusmods-app
      #orca-slicer
      piper
      picard
      #prismlauncher
      pwvucontrol
      unrar
      vlc
      wl-clipboard
    ];
  };
}
