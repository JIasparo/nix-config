{ pkgs, ... }:

{
  config = {
    home.packages = with pkgs; [
      #archipelago
      bitwarden-desktop
      blender
      brightnessctl
      #chatterino2
      #davinci-resolve
      ffmpeg-full
      #freecad
      #gale
      heroic
      #kdePackages.okular # Good for annotating PDFs
      #krita
      #nexusmods-app-unfree
      #orca-slicer
      piper
      picard
      pwvucontrol
      unrar
      vlc
      wl-clipboard
    ];
  };
}
