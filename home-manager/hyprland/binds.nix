{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {
      # Variables
      "$mod" = "SUPER";
      "$move" = "SHIFT";

      "$left" = "left";
      "$right" = "right";
      "$up" = "up";
      "$down" = "down";

      "$browser" = "librewolf";
      "$editor" = "codium";
      "$fileManager" = "$terminal yazi";
      "$mediaplayer" = "vlc";
      "$menu" = "rofi -show drun";
      "$passManager" = "bitwarden";
      "$sysMon" = "btop";
      "$terminal" = "kitty";

      /*
        bind[flags] = [ "MODS, key, dispatcher, params" ];
        l -> work when input inhibitor (ex: lockscreen) is active
        r -> triggered on release of key
        o -> triggered on long press of key
        e -> repeat when key is held
        n -> non-consuming, events will pass to active window and trigger dispatcher
        m -> mouse
        t -> transparent, cannot be shadowed by other binds
        i -> ignore modifiers
        s -> separate, combines keys between each mod/key
        d -> allows bind descriptions
        p -> bypasses app's request to inhibit binds
      */

      bind = [
        # Application binds
        "$mod, D, exec, discord"
        "$mod, E, exec, $editor"
        "$mod, F, exec, $fileManager"
        "$mod, M, exec, $mediaplayer"
        "$mod, RETURN, exec, $terminal"
        "$mod, S, exec, steam"
        "$mod, SPACE, exec, $menu"
        "$mod, W, exec, $browser"
        "CTRL ALT, DELETE, exec, $terminal $sysMon"

        # Kill the active window
        "$mod, Q, killactive,"
        "$mod, F4, forcekillactive,"

        # Toggle floating, resize active window and center it
        "$mod, V, togglefloating,"
        "$mod, V, resizeactive, exact 50% 50%"
        "$mod, V, centerwindow,"

        # Toggle Fullscreen
        "$mod $move, V, fullscreen"

        # When floating, change focus window on workspace and bring it to the top
        "$mod, Tab, cyclenext,"
        "$mod, Tab, bringactivetotop,"

        # Toggle group
        "$mod, Slash, togglegroup"

        # Move focus in a group
        "$mod, Comma, changegroupactive, b"
        "$mod, Period, changegroupactive, f"

        # Move window into group
        "$mod $move, Comma, movewindoworgroup, l"
        "$mod $move, Period, movewindoworgroup, r"

        # Move focus with $mod + arrow keys
        "$mod, $left, movefocus, l"
        "$mod, $right, movefocus, r"
        "$mod, $up, movefocus, u"
        "$mod, $down, movefocus, d"

        # Move active window with $mod + $move + arrow keys
        "$mod $move, $left, movewindow, l"
        "$mod $move, $right, movewindow, r"
        "$mod $move, $up, movewindow, u"
        "$mod $move, $down, movewindow, d"

        # Resize active window with $mod + CTRL + arrow keys
        "$mod CTRL, $left, splitratio, -0.1"
        "$mod CTRL, $right, splitratio, 0.1"
        "$mod CTRL, $up, splitratio, -0.1"
        "$mod CTRL, $down, splitratio, 0.1"

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
        "$mod, 0, workspace, 10"

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
        "$mod $move, 0, movetoworkspace, 10"

        # Special workspaces
        "$mod, grave, togglespecialworkspace"
        "$mod $move, grave, movetoworkspace, special"

        # Take a screenshot of active monitor, then open it in satty
        "$mod, Print, exec, grim -g \"$(slurp -o -r -w 0)\" -t ppm - | satty --filename - --output-filename ~/Pictures/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png"


        # Take a screenshot of select area, then open it in satty
        "$mod $move, Print, exec, grim -g \"$(slurp -w 0)\" -t ppm - | satty --filename - --output-filename ~/Pictures/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png"
      ];

      bindm = [
        # Move/resize windows with $mod + LMB/RMB and dragging
        "$mod $move, mouse:272, movewindow"
        "$mod $move, mouse:273, resizewindow"
      ];

      bindel = [
        # Volume keybinds
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"

        # Brightness keybinds
        ", XF86MonBrightnessUp, exec, brightnessctl s 10%+"
        ", XF86MonBrightnessDown, exec, brightnessctl s 10%-"
      ];

      bindl = [
        # Media keybinds
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ", XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"

        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioStop, exec, playerctl stop"
      ];
    };
  };
}
