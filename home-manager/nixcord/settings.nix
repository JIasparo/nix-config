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
        plugins = {
          accountPanelServerProfile = {
            enable = true;
            prioritizeServerProfile = true;
          };

          alwaysExpandRoles.enable = true;

          betterFolders = {
            enable = true;
            sidebar = true;
            sidebarAnim = false;
            closeAllFolders = true;
            closeOthers = true;
          };

          clearURLs.enable = true;

          forceOwnerCrown.enable = true;

          newGuildSettings = {
            enable = true;
            everyone = false;
            role = false;
            showAllChannels = true;
          };

          showHiddenChannels = {
            enable = true;
            showMode = "muted";
          };
        };
      };
    };
  };
}
