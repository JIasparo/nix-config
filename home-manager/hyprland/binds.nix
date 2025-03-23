{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {
      "$mod" = "SUPER";

      bind = [
        "$mod, Q, exec, kitty"
      ];
    };
  };
}
