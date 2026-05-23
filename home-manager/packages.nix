{ pkgs, ... }:

{
  config = {
    home.packages = with pkgs; [
      #archipelago
      bitwarden-desktop
      blender
      #(blender.override { config.cudaSupport = true; config.rocmSupport=true; }) # Blender with GPU support.
      #(bottles.override { removeWarningPopup = true; })
      (pkgs.bottles.override {
        removeWarningPopup = true;
        
        # Intercept buildFHSEnv to modify target packages
        buildFHSEnv =
          args:
          pkgs.buildFHSEnv (
            args
            // {
              multiPkgs =
                envPkgs:
                let
                  # Fetch original package list
                  originalPkgs = args.multiPkgs envPkgs;

                  # Disable tests for openldap
                  customLdap = envPkgs.openldap.overrideAttrs (_: {
                    doCheck = false;
                  });
                in
                # Replace broken openldap with the custom one
                builtins.filter (p: (p.pname or "") != "openldap") originalPkgs ++ [ customLdap ];
            }
          );
      })
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
      sm64coopdx
    ];
  };
}
