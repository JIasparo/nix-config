{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {

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

        # Center the Steam Sign In client
        "center, class:^(steam)$, title:^(Sign in .*)$"
        # Make Steam's Special Offers float and center
        "float, class:^(steam)$, title:^(Special Offers)$"
        "center, class:^(steam)$, title:^(Special Offers)$"
      ];

      layerrule = [
        #
      ];
    };
  };
}
