{ config, ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {
      # Variables
      "$alter" = "ALT";
      "$mod" = "SUPER";
      "$move" = "SHIFT";
      "$resize" = "CTRL";

      "$left" = "left";
      "$right" = "right";
      "$up" = "up";
      "$down" = "down";

      "$browser" = "librewolf";
      "$editor" = "codium";
      "$file-manager-gui" = "thunar";
      "$file-manager-tui" = "$terminal yazi";
      "$instant-messenger" = "discord";
      "$media-player" = "vlc";
      "$menu" = "rofi -show drun";
      "$password-manager" = "bitwarden";
      "$system-monitor" = "$terminal btop";
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
        "$mod, D, exec, $instant-messenger"
        "$mod, E, exec, $editor"
        "$mod, F, exec, $file-manager-tui"
        "$mod $alter, F, exec, $file-manager-gui"
        "$mod, M, exec, $media-player"
        "$mod, RETURN, exec, $terminal"
        "$mod, S, exec, steam"
        "$mod, SPACE, exec, $menu"
        "$mod, W, exec, $browser"
        "CTRL ALT, DELETE, exec, $system-monitor"

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
        #"$mod, Print, exec, grim -g \"$(slurp -o -r -w 0)\" -t ppm - | satty --filename - --output-filename ~/Pictures/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png"
        "$mod, Print, exec, grim -g \"$(slurp -o -r -w 0)\" -t ppm - | satty --filename - --output-filename ${config.programs.satty.settings.general.output-filename}"


        # Take a screenshot of select area, then open it in satty
        #"$mod $move, Print, exec, grim -g \"$(slurp -w 0)\" -t ppm - | satty --filename - --output-filename ~/Pictures/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png"
        "$mod $move, Print, exec, grim -g \"$(slurp -w 0)\" -t ppm - | satty --filename - --output-filename ${config.programs.satty.settings.general.output-filename}"
      ];

      bindm = [
        # Move windows with $mod + $move + LMB and dragging
        "$mod $move, mouse:272, movewindow"

        # Resize windows with $mod + $resize + RMB and dragging
        #"$mod $resize, mouse:273, resizewindow"

        # Resize windows with $mod + $resize + LMB and dragging
        "$mod $resize, mouse:272, resizewindow"
      ];

      binde = [
        # Resize active window with $mod + $resize + arrow keys
        "$mod $resize, $left, resizeactive, -50 0"
        "$mod $resize, $right, resizeactive, 50 0"
        "$mod $resize, $up, resizeactive, 0 -50"
        "$mod $resize, $down, resizeactive, 0 50"
      ];

      bindel = [
        # Adjust volume levels with dedicated volume keys
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"

        # Adjust brightness levels with dedicated brightness keys
        ", XF86MonBrightnessUp, exec, brightnessctl s 5%+"
        ", XF86MonBrightnessDown, exec, brightnessctl s 5%-"
      ];

      bindl = [
        # Set volume levels to a set percentage using the dedicated volume keys
        "$alter, XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 80%"
        "$alter, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 40%"

        # Mute audio sink (outputs, e.g., headphones) with dedicated volume mute key
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        
        # Mute audio source (inputs, e.g., microphones) with dedicated mic mute key
        ", XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"

        # Mute audio source (inputs, e.g., microphones) using the dedicated volume mute key. Useful for keyboards without a dedicated mic mute key.
        "$alter, XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"

        # Set brightness levels to a set percentage using the dedicated brightness keys
        "$alter, XF86MonBrightnessUp, exec, brightnessctl s 100%"
        "$alter, XF86MonBrightnessDown, exec, brightnessctl s 1%"

        # Playback keybinds
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioStop, exec, playerctl stop"
      ];
    };
  };
}
