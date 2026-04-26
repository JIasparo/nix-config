{ ... }:

{
  config = {
    # Settings for Equibop (custom Discord app).
    programs.equibop.settings = {
      # Discord Branch
      discordBranch = "stable"; # ("stable", "canary", "ptb").

      # System Startup & Performance
      autoStartMinimized = false;
      hardwareAcceleration = true;
      hardwareVideoAcceleration = true;

      # User Interface
      customTitleBar = false; # Use Discord's custom title bar instead of native system one.
      staticTitle = false; # Makes the window title "Equibop" instead of changing to the current page.
      enableMenu = false; # Enables application menu bar. Press ALT to toggle visibility.
      enableSplashScreen = true;
      splashTheming = true; # Adapt the splash window colors to your custom theme.
      splashProgress = true; # Adds a progress bar to the splash window.

      # Behaviour
      tray = true; # Add a tray icon for Equibop.
      minimizeToTray = false; # Equibop will minimize to the tray instead of closing.
      clickTrayToShowHide = false; # Left clicking tray icon will toggle Equibop window visibility.
      disableMinSize = true;
      disableSmoothScroll = true;

      # Notifications
      appBadge = true; # Show notification badge on app icon.
      badgeOnlyForMentions = false; # Show badge only for pings/mentions, not for unread messages.
      enableTaskbarFlashing = false; # Flashes the app in your taskbar when you have new notifications.

      # Rich Presence
      arRPC = true;

      # Miscellaneous
      middleClickAutoscroll = true;
      openLinksWithElectron = false; # Opens links in a new Equibop window instead of your web browser.
    };

    # Settings for Equicord (custom Discord client mod).
    programs.equibop.equicord.settings = {
      # Equicord
      useQuickCss = true; # Loads custom CSS allowing customization of Discord's appearance.
      enableReactDevtools = false; # Enables React Developer Tools extension for debugging Discord's React components.
      mainWindowFrameless = true; # Remove the native window frame for a cleaner look.
      frameless = true; # Remove the native window frame for a cleaner look.
      transparent = false; # Make the Discord window transparent.

      notifications = {
        useNative = "not-focused"; # ("not-focused", "always", "never").
        position = "bottom-right"; # ("bottom-right", "top-right").
        missed = true; # When refocusing Discord, a notification will pop-up with how many you missed.
        timeout = 5000; # Time for notifications to timeout in milliseconds.
        logLimit = 50; # The amount of notifications to save in the log until old ones are removed. (0: Disable notification log, 25, 50, 75, 100, 200: Never remove old notifications).
      };

      # Updater
      autoUpdate = false; # When enabled, Equicord will automatically download and install updates.
      autoUpdateNotification = false; # When enabled, receive a notification when Equicord finishes downloading an update in the background.
    };
  };
}
