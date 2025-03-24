{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {
      "$mod" = "SUPER";

      bind = [
        "$mod, Q, exec, kitty"
        "$mod, SPACE, exec, rofi -show drun"
      ];
    };
  };
}
