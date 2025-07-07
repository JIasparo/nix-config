{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {

      exec-once = [
        "[workspace special silent] $passManager"
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

        # Open Discord on Workspace 9
        "workspace 9, class:^(discord)$"

        # Open OBS-Studio on Workspace 10
        "workspace 10, class:^(com.obsproject.Studio)$"

        # Open Steam on Workspace 5
        "workspace 5, class:^(steam)$"
        # Center the Steam Sign In client
        "center, class:^(steam)$, title:^(Sign in .*)$"
        # Make Steam's Special Offers float and center
        "float, class:^(steam)$, title:^(Special Offers)$"
        "center, class:^(steam)$, title:^(Special Offers)$"
        # Make Steam's Uninstall prompt float and center
        "float, class:^(steam)$, title:^(Uninstall)$"
        "center, class:^(steam)$, title:^(Uninstall)$"
        # Make Steam games float and center on Workspace 6
        "workspace 6, class:^(steam_app_.*)$"
        "float, class:^(steam_app_.*)"
        "center, class:^(steam_app_.*)$"

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
