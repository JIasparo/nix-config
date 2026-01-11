{ ... }:

{
  config = {
    programs.nixcord = {
      config = {
        autoUpdate = false;
        autoUpdateNotification = false;
        disableMinSize = true;
        frameless = true;
        notifyAboutUpdates = false;
        transparent = true;
      };

      discord = {
        autoscroll.enable = true;
        openASAR.enable = true;

        settings = {
          "MINIMIZE_TO_TRAY" = false;
          "OPEN_ON_STARTUP" = false;
          "SKIP_HOST_UPDATE" = true;
          "DANGEROUS_ENABLE_DEVTOOLS_ONLY_ENABLE_IF_YOU_KNOW_WHAT_YOURE_DOING" = true;
          "openasar" = {
            "setup" = true;
          };
        };
      };
    };
  };
}
