{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {

      exec-once = [
        "[workspace special silent] bitwarden"
      ];

      workspace = [
        "1, monitor:DP-2, default:true"
        "2, monitor:DP-2"
        "3, monitor:DP-2"
        "4, monitor:DP-2"
        "5, monitor:DP-2"
        "6, monitor:DP-2"
        "7, monitor:DP-2"
        "8, monitor:DP-1, default:true"
        "9, monitor:DP-1"
        "10, monitor:DP-1"
      ];

      windowrulev2 = [
        # Make VSCodium's pop-up windows float and center
        "float, class:^(Codium)$"
        "center, class:^(Codium)$"

        # Prevent idling while watching videos
        "idleinhibit focus, class:^(mpv)$"
        "idleinhibit focus, class:^($browser)$, title:^(.*YouTube.*)$"
        "idleinhibit fullscreen, class:^($browser)$"

        # Open Steam on Workspace 5
        "workspace 5, class:^(steam)$"
        # Center the Steam Sign In client
        "center, class:^(steam)$, title:^(Sign in .*)$"
        # Make Steam's Special Offers float and center
        "float, class:^(steam)$, title:^(Special Offers)$"
        "center, class:^(steam)$, title:^(Special Offers)$"
        # Make Steam's Notifications spawn on primary monitor
        "monitor DP-2, class:^(steam)$, title:^(notificationtoasts.*)$"
        # Make Steam's Uninstall prompt float and center
        "float, class:^(steam)$, title:^(Uninstall)$"
        "center, class:^(steam)$, title:^(Uninstall)$"
        # Make Steam games launch in fullscreen on Workspace 6
        "workspace 6, class:^(steam_app.*)$"
        "fullscreen, class:^(steam_app.*)$"

        # Make Bitwarden's pop-up windows float and center
        "float, class:^(Electron)$, title:^(Log out)$"
        "center, class:^(Electron)$, title:^(Log out)$"
      ];

      layerrule = [
        #
      ];
    };
  };
}
