{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {
      /*
        Rotate a monitor: "..., transform, X" where x =
        0 -> normal (no transforms)
        1 -> 90 degrees
        2 -> 180 degrees
        3 -> 270 degrees
        4 -> flipped
        5 -> flipped + 90 degrees
        6 -> flipped + 180 degrees
        7 -> flipped + 270 degrees
      */
      monitor = [
        "DP-1, 1920x1080@144, 2560x0, 1"
        "DP-2, 2560x1440@143.96, 0x0, 1"
      ];
    };
  };
}
