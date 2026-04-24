{ ... }:

{
  config = {
    # Settings for Equibop (custom Discord app)
    programs.equibop.settings = {
      # Discord Branch
      discordBranch = "stable"; # "stable", "canary", "ptb".

      # System Startup & Performance
      autoStartMinimized = false;
      hardwareAcceleration = true;
      hardwareVideoAcceleration = true;

      # User Interface
      customTitleBar = false; # Use Discord's custom title bar instead of native system one.
      staticTitle = true; # Makes the window title "Equibop" instead of changing to the current page.
      enableMenu = false; # Enables application menu bar. Press ALT to toggle visibility.
      enableSplashScreen = true;
      splashTheming = true; # Adapt the splash window colors to your custom theme.
      splashProgress = true;

      # Behaviour
      tray = true; # Add a tray icon for Equibop
      minimizeToTray = false; # Equibop will minimize to the tray instead of closing.
      clickTrayToShowHide = false; # Left clicking tray icon will toggle Equibop window visibility.
      disableMinSize = true;
      disableSmoothScroll = true;

      # Notifications
      appBadge = true; # Show notification badge on app icon
      badgeOnlyForMentions = false; # Show badge only for pings/mentions, not for unread messages.
      enableTaskbarFlashing = false; # Flashes the app in your taskbar when you have new notifications.

      # Rich Presence
      arRPC = true;

      # Miscellaneous
      middleClickAutoscroll = true;
      openLinksWithElectron = false; # Opens links in a new Equibop window instead of your web browser.
    };

    home.file = {
      ".config/equibop/state.json".text = ''
        {
          "firstLaunch": false
        }
      '';
    };

    # Settings for Equicord (custom Discord client mod)
    programs.equibop.equicord.settings = {
      #
    };
  };
}
