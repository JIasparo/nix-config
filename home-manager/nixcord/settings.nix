{ ... }:

{
  config = {
    home.file = {
      ".config/discord/settings.json".source = ./settings.json;
    };

    programs.nixcord = {
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
