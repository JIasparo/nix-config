{ username, ... }:

{
  config = {
    programs.floorp = {
      policies = {
        DisableFirefoxStudies = true;
        DisableTelemetry = true;

        # Check about:support for extension/add-on ID strings.
        ExtensionSettings = {
          # Blocks all addons except the ones specified below
          "*".installation_mode = "blocked";

          "uBlock0@raymondhill.net" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
            installation_mode = "force_installed";
            private_browsing = true;
          };

          # Return YouTube Dislike
          "{762f9885-5a13-4abd-9c77-433dcd38b8fd}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/4371820/return_youtube_dislikes-3.0.0.18.xpi";
            installation_mode = "force_installed";
            private_browsing = true;
          };

          # YouTube NonStop
          "{0d7cafdd-501c-49ca-8ebb-e3341caaa55e}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/4187690/youtube_nonstop-0.9.2.xpi";
            installation_mode = "force_installed";
          };

          # D2 Season Pass Pass
          "{029d76e8-fbc9-4521-996a-014394515f7f}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/4123578/season_pass_pass-1.1.0.xpi";
            installation_mode = "normal_installed";
          };
        };
      };
      profiles =
        let
          sharedSearch = {
            force = true;
            default = "Startpage";
            privateDefault = "Startpage";
          };

          sharedSettings = {
            "browser.bookmarks.addedImportButton" = false;
            "browser.bookmarks.restore_default_bookmarks" = false;
            "browser.formfill.enable" = true;
            "browser.newtabpage.activity-stream.floorp.background.type" = 0;
            "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
            "browser.search.separatePrivateDefault" = false;
            "browser.startup.page" = 1;
            "browser.uiCustomization.state" =
              "{\"placements\":{\"widget-overflow-fixed-list\":[\"profile-manager\"],\"unified-extensions-area\":[\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\",\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_029d76e8-fbc9-4521-996a-014394515f7f_-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"customizableui-special-spring1\",\"home-button\",\"urlbar-container\",\"customizableui-special-spring2\",\"save-to-pocket-button\",\"downloads-button\",\"ublock0_raymondhill_net-browser-action\",\"unified-extensions-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"firefox-view-button\",\"tabbrowser-tabs\",\"new-tab-button\",\"alltabs-button\"],\"PersonalToolbar\":[\"personal-bookmarks\"],\"statusBar\":[\"screenshot-button\",\"fullscreen-button\",\"status-text\"]},\"seen\":[\"developer-button\",\"sidebar-reverse-position-toolbar\",\"undo-closed-tab\",\"profile-manager\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\",\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"ublock0_raymondhill_net-browser-action\",\"_029d76e8-fbc9-4521-996a-014394515f7f_-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"statusBar\",\"unified-extensions-area\",\"PersonalToolbar\",\"TabsToolbar\",\"toolbar-menubar\",\"widget-overflow-fixed-list\"],\"currentVersion\":20,\"newElementCount\":3}";
            "browser.urlbar.placeholderName.private" = "Startpage";
            "browser.urlbar.placeholderName" = "Startpage";
            "browser.urlbar.shortcuts.bookmarks" = false;
            "browser.urlbar.shortcuts.history" = false;
            "browser.urlbar.shortcuts.tabs" = false;
            "browser.urlbar.suggest.bookmark" = false;
            "browser.urlbar.suggest.clipboard" = false;
            "browser.urlbar.suggest.engines" = false;
            "browser.urlbar.suggest.history" = false;
            "browser.urlbar.suggest.openpage" = false;
            "browser.urlbar.suggest.recentsearches" = false;
            "browser.urlbar.suggest.topsites" = false;
            "extensions.formautofill.addresses.enabled" = false;
            "extensions.formautofill.creditCards.enabled" = false;
            "floorp.browser.sidebar.enable" = false;
            "floorp.browser.workspaces.enabled" = false;
            "floorp.download.notification" = 1;
            "floorp.tabsleep.enabled" = true;
            "general.autoScroll" = true;
            "media.videocontrols.picture-in-picture.video-toggle.enabled" = false;
            "places.history.enabled" = true;
            "privacy.clearOnShutdown_v2.cache" = true;
            "privacy.clearOnShutdown_v2.cookiesAndStorage" = true;
            "privacy.donottrackheader.enabled" = true;
            "privacy.globalprivacycontrol.enabled" = true;
            "privacy.sanitize.pending" =
              "[{\"id\":\"shutdown\",\"itemsToClear\":[\"cache\",\"siteSettings\",\"historyFormDataAndDownloads\",\"cookiesAndStorage\"],\"options\":{}}]";
            "services.sync.prefs.sync.floorp.browser.note.memos" = false;
            "signon.rememberSignons" = false;
            "userChrome.autohide.back_button" = true;
            "userChrome.autohide.forward_button" = true;
            "webgl.disabled" = true;
          };
        in
        {
          ${username} = {
            id = 0;
            name = "${username}";
            search = sharedSearch;
            settings = sharedSettings;
          };

          test = {
            id = 1;
            name = "test";
            search = sharedSearch;
            settings = {
              "browser.bookmarks.addedImportButton" = false;
              "browser.bookmarks.restore_default_bookmarks" = false;
              "browser.formfill.enable" = true;
              "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
              "browser.search.separatePrivateDefault" = false;
              "browser.startup.page" = 1;
              "browser.uiCustomization.state" =
                "{\"placements\":{\"widget-overflow-fixed-list\":[\"profile-manager\"],\"unified-extensions-area\":[\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\",\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"_029d76e8-fbc9-4521-996a-014394515f7f_-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"customizableui-special-spring1\",\"home-button\",\"urlbar-container\",\"customizableui-special-spring2\",\"save-to-pocket-button\",\"downloads-button\",\"ublock0_raymondhill_net-browser-action\",\"unified-extensions-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"firefox-view-button\",\"tabbrowser-tabs\",\"new-tab-button\",\"alltabs-button\"],\"PersonalToolbar\":[\"personal-bookmarks\"],\"statusBar\":[\"screenshot-button\",\"fullscreen-button\",\"status-text\"]},\"seen\":[\"developer-button\",\"sidebar-reverse-position-toolbar\",\"undo-closed-tab\",\"profile-manager\",\"_0d7cafdd-501c-49ca-8ebb-e3341caaa55e_-browser-action\",\"_762f9885-5a13-4abd-9c77-433dcd38b8fd_-browser-action\",\"ublock0_raymondhill_net-browser-action\",\"_029d76e8-fbc9-4521-996a-014394515f7f_-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"statusBar\",\"unified-extensions-area\",\"PersonalToolbar\",\"TabsToolbar\",\"toolbar-menubar\",\"widget-overflow-fixed-list\"],\"currentVersion\":20,\"newElementCount\":3}";
              "browser.urlbar.placeholderName.private" = "Startpage";
              "browser.urlbar.placeholderName" = "Startpage";
              "browser.urlbar.shortcuts.bookmarks" = false;
              "browser.urlbar.shortcuts.history" = false;
              "browser.urlbar.shortcuts.tabs" = false;
              "browser.urlbar.suggest.bookmark" = false;
              "browser.urlbar.suggest.clipboard" = false;
              "browser.urlbar.suggest.engines" = false;
              "browser.urlbar.suggest.history" = false;
              "browser.urlbar.suggest.openpage" = false;
              "browser.urlbar.suggest.recentsearches" = false;
              "browser.urlbar.suggest.topsites" = false;
              "extensions.formautofill.addresses.enabled" = false;
              "extensions.formautofill.creditCards.enabled" = false;
              "floorp.browser.sidebar.enable" = false;
              "floorp.browser.workspaces.enabled" = false;
              "floorp.download.notification" = 1;
              "floorp.tabsleep.enabled" = true;
              "general.autoScroll" = true;
              "media.videocontrols.picture-in-picture.video-toggle.enabled" = false;
              "places.history.enabled" = true;
              "privacy.clearOnShutdown_v2.cache" = true;
              "privacy.clearOnShutdown_v2.cookiesAndStorage" = true;
              "privacy.donottrackheader.enabled" = true;
              "privacy.globalprivacycontrol.enabled" = true;
              "privacy.sanitize.pending" =
                "[{\"id\":\"shutdown\",\"itemsToClear\":[\"cache\",\"siteSettings\",\"historyFormDataAndDownloads\",\"cookiesAndStorage\"],\"options\":{}}]";
              "services.sync.prefs.sync.floorp.browser.note.memos" = false;
              "signon.rememberSignons" = false;
              "userChrome.autohide.back_button" = true;
              "userChrome.autohide.forward_button" = true;
              "webgl.disabled" = true;
              "browser.privatebrowsing.autostart" = true;
            };
          };
        };
    };
  };
}
