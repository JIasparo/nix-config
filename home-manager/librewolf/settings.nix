{ username, ... }:

{
  config = {
    programs.librewolf =
      let
        toolbar-customization = "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"home-button\",\"vertical-spacer\",\"urlbar-container\",\"save-to-pocket-button\",\"downloads-button\",\"fxa-toolbar-menu-button\",\"ublock0_raymondhill_net-browser-action\",\"unified-extensions-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"firefox-view-button\",\"tabbrowser-tabs\",\"new-tab-button\",\"alltabs-button\"],\"vertical-tabs\":[],\"PersonalToolbar\":[\"personal-bookmarks\"]},\"seen\":[\"developer-button\",\"ublock0_raymondhill_net-browser-action\",\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"vertical-tabs\",\"PersonalToolbar\",\"toolbar-menubar\",\"TabsToolbar\",\"unified-extensions-area\"],\"currentVersion\":21,\"newElementCount\":4}";
      in
      {
        settings = {
          # Preferences set here will appear as defaultPref; It can be permanently changed by the user.
          "browser.bookmarks.openInTabClosesMenu" = false;
          "browser.bookmarks.restore_default_bookmarks" = false;
          "browser.download.autohideButton" = true;
          "browser.low_commit_space_threshold_mb" = 200;
          "browser.low_commit_space_threshold_percent" = 20;
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
          "privacy.clearOnShutdown_v2.browsingHistoryAndDownloads" = true;
          "privacy.resistFingerprinting.letterboxing" = true;
          "privacy.resistFingerprinting" = false;
        };

        profiles = {
          "default" = {
            id = 0;
            name = "default";
            settings = {
              # Preferences set here will appear as user_pref; The preference reverts back to this value each time the browser is started.
              "privacy.clearOnShutdown_v2.browsingHistoryAndDownloads" = true;
              "browser.uiCustomization.state" = toolbar-customization;
            };

            containersForce = true;
            containers = { };
          };

          "${username}" = {
          #"personal" = { # Backup bookmarks before you set this as the new name.
            id = 1;
            name = "${username}";
            settings = {
              # Preferences set here will appear as user_pref; The preference reverts back to this value each time the browser is started.
              "privacy.clearOnShutdown_v2.browsingHistoryAndDownloads" = false;
              "browser.uiCustomization.state" = toolbar-customization;
            };

            containersForce = true;
            containers = { };
          };

          "content-creation" = {
            id = 2;
            name = "content-creator";
            settings = {
              # Preferences set here will appear as user_pref; The preference reverts back to this value each time the browser is started.
              "privacy.clearOnShutdown_v2.browsingHistoryAndDownloads" = true;
              "browser.uiCustomization.state" = toolbar-customization;
            };

            containersForce = true;
            containers = { };
          };
        };
      };
  };
}
