{ username, ... }:

{
  config = {
    programs.librewolf = {
      settings = {
        "browser.bookmarks.openInTabClosesMenu" = false;
        "browser.download.autohideButton" = true;
        "browser.quitShortcut.disabled" = true;
        "browser.search.separatePrivateDefault" = false;
        "browser.tabs.fadeOutUnloadedTabs" = true;
        "browser.tabs.unloadOnLowMemory" = true;
        "browser.urlbar.shortcuts.bookmarks" = false;
        "browser.urlbar.shortcuts.history" = false;
        "browser.urlbar.shortcuts.tabs" = false;
        "browser.urlbar.suggest.bookmark" = false;
        "browser.urlbar.suggest.engines" = false;
        "browser.urlbar.suggest.history" = false;
        "browser.urlbar.suggest.openpage" = false;
        "browser.urlbar.suggest.recentsearches" = false;
        "browser.urlbar.suggest.topsites" = false;
        "general.autoScroll" = true;
        "media.videocontrols.picture-in-picture.video-toggle.enabled" = false;
        "middlemouse.paste" = false;
        "privacy.resistFingerprinting.letterboxing" = true;
        "privacy.resistFingerprinting" = false;
      };

      profiles = {
        default = {
          id = 0;
          name = "default";
          settings = {
            "browser.uiCustomization.state" = "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"home-button\",\"vertical-spacer\",\"urlbar-container\",\"save-to-pocket-button\",\"downloads-button\",\"fxa-toolbar-menu-button\",\"ublock0_raymondhill_net-browser-action\",\"unified-extensions-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"firefox-view-button\",\"tabbrowser-tabs\",\"new-tab-button\",\"alltabs-button\"],\"vertical-tabs\":[],\"PersonalToolbar\":[\"personal-bookmarks\"]},\"seen\":[\"developer-button\",\"ublock0_raymondhill_net-browser-action\",\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"vertical-tabs\",\"PersonalToolbar\",\"toolbar-menubar\",\"TabsToolbar\",\"unified-extensions-area\"],\"currentVersion\":21,\"newElementCount\":4}";
            "privacy.clearOnShutdown_v2.browsingHistoryAndDownloads" = true;
          };
        };

        ${username} = {
          id = 1;
          name = "${username}";
          settings = {
            "browser.uiCustomization.state" = "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"home-button\",\"vertical-spacer\",\"urlbar-container\",\"save-to-pocket-button\",\"downloads-button\",\"fxa-toolbar-menu-button\",\"ublock0_raymondhill_net-browser-action\",\"unified-extensions-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"firefox-view-button\",\"tabbrowser-tabs\",\"new-tab-button\",\"alltabs-button\"],\"vertical-tabs\":[],\"PersonalToolbar\":[\"personal-bookmarks\"]},\"seen\":[\"developer-button\",\"ublock0_raymondhill_net-browser-action\",\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"vertical-tabs\",\"PersonalToolbar\",\"toolbar-menubar\",\"TabsToolbar\",\"unified-extensions-area\"],\"currentVersion\":21,\"newElementCount\":4}";
          };
        };
      };
    };
  };
}
