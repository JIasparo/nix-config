{ username, ... }:

{
  config = {
    programs.librewolf =
      let
        toolbar-customization = "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"home-button\",\"vertical-spacer\",\"urlbar-container\",\"save-to-pocket-button\",\"downloads-button\",\"fxa-toolbar-menu-button\",\"ublock0_raymondhill_net-browser-action\",\"unified-extensions-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"firefox-view-button\",\"tabbrowser-tabs\",\"new-tab-button\",\"alltabs-button\"],\"vertical-tabs\":[],\"PersonalToolbar\":[\"personal-bookmarks\"]},\"seen\":[\"developer-button\",\"ublock0_raymondhill_net-browser-action\",\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"vertical-tabs\",\"PersonalToolbar\",\"toolbar-menubar\",\"TabsToolbar\",\"unified-extensions-area\"],\"currentVersion\":21,\"newElementCount\":4}";
      in
      {
        profiles = {
          "personal" = {
            id = 0;
            name = "${username}";
            settings = {
              # Preferences set here will appear as user_pref; The preference reverts back to this value each time the browser is started.
              "privacy.clearOnShutdown_v2.browsingHistoryAndDownloads" = false;
              "browser.uiCustomization.state" = toolbar-customization;
            };

            containersForce = true;
            containers = { };
          };
        };
      };
  };
}
