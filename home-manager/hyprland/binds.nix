{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {
      # Variables
      "$mod" = "SUPER";
      "$move" = "SHIFT";

      "$terminal" = "kitty";
      #"$fileManager" = "";
      "$menu" = "rofi -show drun";
      "$editor" = "codium";

      # Keybinds
      bind = [
        "$mod, Q, killactive"
        "$mod, SPACE, exec, $menu"
        "$mod, E, exec, $editor"
        "$mod, RETURN, exec, $terminal"

        # Switch workspaces with $mod + [0-9]
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"

        # Move active window to a workspace with $mod + $move + [0-9]
        "$mod $move, 1, movetoworkspace, 1"
        "$mod $move, 2, movetoworkspace, 2"
        "$mod $move, 3, movetoworkspace, 3"
        "$mod $move, 4, movetoworkspace, 4"
        "$mod $move, 5, movetoworkspace, 5"
        "$mod $move, 6, movetoworkspace, 6"
        "$mod $move, 7, movetoworkspace, 7"
        "$mod $move, 8, movetoworkspace, 8"
        "$mod $move, 9, movetoworkspace, 9"
      ];

      # Mouse keybinds
      bindm = [
        # Move/resize windows with $mod + LMB/RMB and dragging
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };
  };
}
