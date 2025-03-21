{ ... }:

{

  imports = [
    # Needed for Hyprland to work
    ./../swaync
  ];
  config = {
    wayland.windowManager.hyprland = {
      enable = true;

      settings = {
        "$mod" = "SUPER";

        input = {
          kb_layout = "us";
          numlock_by_default = true;
        };

        bind = [
          "$mod, Q, exec, kitty"
        ];
      };
    };
  };
}
