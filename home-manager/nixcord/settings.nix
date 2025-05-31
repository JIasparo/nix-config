{ ... }:

{
  config = {
    programs.nixcord = {
      discord = {
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

      config = {
        frameless = true;
        transparent = true;
        disableMinSize = true;
      };
    };
  };
}
