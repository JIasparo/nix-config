{ username, ... }:

{
  config = {
    programs.librewolf =
      let
        toolbar-customization = "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"home-button\",\"vertical-spacer\",\"customizableui-special-spring1\",\"customizableui-special-spring2\",\"customizableui-special-spring3\",\"urlbar-container\",\"customizableui-special-spring4\",\"customizableui-special-spring5\",\"customizableui-special-spring6\",\"downloads-button\",\"fxa-toolbar-menu-button\",\"ublock0_raymondhill_net-browser-action\",\"unified-extensions-button\",\"reset-pbm-toolbar-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"tabbrowser-tabs\",\"new-tab-button\",\"alltabs-button\"],\"vertical-tabs\":[],\"PersonalToolbar\":[\"personal-bookmarks\"]},\"seen\":[\"developer-button\",\"ublock0_raymondhill_net-browser-action\",\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\",\"screenshot-button\",\"reset-pbm-toolbar-button\"],\"dirtyAreaCache\":[\"nav-bar\",\"vertical-tabs\",\"PersonalToolbar\",\"toolbar-menubar\",\"TabsToolbar\",\"unified-extensions-area\"],\"currentVersion\":24,\"newElementCount\":30}";

        toolbar-customization-vertical-tabs = "[\"back-button\",\"forward-button\",\"stop-reload-button\",\"home-button\",\"vertical-spacer\",\"customizableui-special-spring7\",\"customizableui-special-spring8\",\"customizableui-special-spring9\",\"urlbar-container\",\"customizableui-special-spring10\",\"customizableui-special-spring11\",\"customizableui-special-spring12\",\"downloads-button\",\"fxa-toolbar-menu-button\",\"ublock0_raymondhill_net-browser-action\",\"unified-extensions-button\",\"reset-pbm-toolbar-button\",\"new-tab-button\",\"alltabs-button\"]";

        toolbar-customization-horizontal-tabs = "[\"tabbrowser-tabs\",\"new-tab-button\",\"alltabs-button\"]";
      in
      {
        settings = {
          # Preferences set here will appear as defaultPref; It can be permanently changed by the user.
          "browser.bookmarks.openInTabClosesMenu" = false;
          "browser.bookmarks.restore_default_bookmarks" = false;
          "browser.download.autohideButton" = true;
          "browser.fullscreen.autohide" = false;
          "browser.low_commit_space_threshold_mb" = 200; # Tab unloading kicks in when available memory falls below this number
          "browser.low_commit_space_threshold_percent" = 40; # Tab unloading kicks in when available memory falls below this percent
          "browser.ml.linkPreview.longPress" = false;
          "browser.quitShortcut.disabled" = true;
          "browser.search.separatePrivateDefault" = false;
          "browser.tabs.closeWindowWithLastTab" = false;
          "browser.tabs.dragDrop.pinInteractionCue.delayMS" = 1500;
          "browser.tabs.fadeOutUnloadedTabs" = true;
          "browser.tabs.min_inactive_duration_before_unload" = 600000;
          "browser.tabs.unloadOnLowMemory" = true;
          "browser.toolbarbuttons.introduced.sidebar-button" = true;
          "browser.urlbar.shortcuts.bookmarks" = false;
          "browser.urlbar.shortcuts.history" = false;
          "browser.urlbar.shortcuts.tabs" = false;
          "browser.urlbar.suggest.bookmark" = false;
          "browser.urlbar.suggest.engines" = false;
          "browser.urlbar.suggest.history" = false;
          "browser.urlbar.suggest.openpage" = false;
          "browser.urlbar.suggest.recentsearches" = false;
          "browser.urlbar.suggest.topsites" = false;
          "full-screen-api.warning.delay" = 0;
          "full-screen-api.warning.timeout" = 1000;
          "general.autoScroll" = true;
          "media.videocontrols.picture-in-picture.video-toggle.enabled" = false;
          "middlemouse.paste" = false;
          "privacy.clearOnShutdown_v2.browsingHistoryAndDownloads" = true;
          "privacy.resistFingerprinting.letterboxing" = true;
          "privacy.resistFingerprinting" = false;
          "sidebar.animation.expand-on-hover.delay-duration-ms" = 0;
          "sidebar.animation.expand-on-hover.duration-ms" = 0;
          "sidebar.verticalTabs.dragToPinPromo.dismissed" = true;
          "ui.key.menuAccessKeyFocuses" = false;
        };

        profiles = {
          "default" = {
            id = 0;
            name = "default";
            settings = {
              # Preferences set here will appear as user_pref; The preference reverts back to this value each time the browser is started.
              "browser.uiCustomization.horizontalTabstrip" = toolbar-customization-horizontal-tabs;
              "browser.uiCustomization.navBarWhenVerticalTabs" = toolbar-customization-vertical-tabs;
              "browser.uiCustomization.state" = toolbar-customization;
              "privacy.clearOnShutdown_v2.browsingHistoryAndDownloads" = true;
              "sidebar.verticalTabs" = true;
            };

            containersForce = true;
            containers = { };
          };

          "${username}" = {
            id = 1;
            name = "${username}";
            settings = {
              # Preferences set here will appear as user_pref; The preference reverts back to this value each time the browser is started.
              "browser.uiCustomization.horizontalTabstrip" = toolbar-customization-horizontal-tabs;
              "browser.uiCustomization.navBarWhenVerticalTabs" = toolbar-customization-vertical-tabs;
              "browser.uiCustomization.state" = toolbar-customization;
              "privacy.clearOnShutdown_v2.browsingHistoryAndDownloads" = false;
              "sidebar.verticalTabs" = true;
            };

            containersForce = true;
            containers = { };
          };
        };
      };
  };
}
