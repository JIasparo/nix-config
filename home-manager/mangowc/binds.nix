{ config, ... }:

{
  config = {
    wayland.windowManager.mango.settings = let
      # Variables
      alter = "ALT";
      mod = "SUPER";
      move = "SHIFT";
      resize = "CTRL";

      down = "DOWN";
      left = "LEFT";
      right = "RIGHT";
      up = "UP";

      #down = "J";
      #left = "H";
      #right = "L";
      #up = "K";

      browser = "librewolf";
      editor = "codium";
      file-manager-gui = "thunar";
      file-manager-tui = "${terminal} yazi";
      media-player = "vlc";
      menu = "rofi -show drun";
      password-manager = "bitwarden";
      system-monitor = "${terminal} btop";
      terminal = "kitty";
    in{
      /*
        bind[flags] = ["MODIFIERS,KEY,COMMAND,PARAMETERS"];

        Flags:
        l -> works even when screen is locked
        s -> uses keysym (q) instead of keycode (code:24) to bind
        r -> Triggers on key release instead of press
        p -> Pass key event to client
      */
      bind = [
        # Application keybinds
        "${mod},D,spawn,discord"
        "${mod},E,spawn,${editor}"
        "${mod},F,spawn,${file-manager-tui}"
        "${mod}+${alter},F,spawn,${file-manager-gui}"
        "${mod},M,spawn,${media-player}"
        "${mod},RETURN,spawn,${terminal}"
        "${mod},S,spawn,steam"
        "${mod},SPACE,spawn,${menu}"
        "${mod},W,spawn,${browser}"
        "CTRL+ALT,DELETE,spawn,${system-monitor}"

        # Reload config
        "${mod},R,reload_config"

        # Kill the focused window
        "${mod},Q,killclient"
        "${mod},F4,killclient"
        #"ALT,F4,killclient"

        # Window management
        "${mod},TAB,toggleoverview"
        #"${mod},V,togglefloating"
        "${mod},V,togglemaximizescreen"
        "${mod}+${move},V,togglefullscreen"
        #"ALT,RETURN,togglefullscreen"

        # Scratchpad keybinds
        #"${mod}+${move},GRAVE,minimized"
        #"${mod},GRAVE,toggle_scratchpad"
        #"${mod}+${move},GRAVE,restore_minimized"
        "${mod},GRAVE,toggle_named_scratchpad,none,password-manager,${password-manager} -T password-manager"

        # Switch client focus
        #"ALT,TAB,focusstack,next"
        "${mod},${down},focusdir,down"
        "${mod},${left},focusdir,left"
        "${mod},${right},focusdir,right"
        "${mod},${up},focusdir,up"

        # Move active client
        "${mod}+${move},${down},exchange_client,down"
        "${mod}+${move},${left},exchange_client,left"
        "${mod}+${move},${right},exchange_client,right"
        "${mod}+${move},${up},exchange_client,up"

        # Change scroller layout
        "${mod},SLASH,switch_proportion_preset"
        "${mod}+${move},COMMA,scroller_stack,left"
        "${mod}+${move},PERIOD,scroller_stack,right"

        # Resize active window
        "${mod}+${resize},${left},resizewin,-50,+0"
        "${mod}+${resize},${down},resizewin,+0,+50"
        "${mod}+${resize},${up},resizewin,+0,-50"
        "${mod}+${resize},${right},resizewin,+50,+0"

        # Switch tag
        "${mod},1,view,1,0"
        "${mod},2,view,2,0"
        "${mod},3,view,3,0"
        "${mod},4,view,4,0"
        "${mod},5,view,5,0"
        "${mod},6,view,6,0"
        "${mod},7,view,7,0"
        "${mod},8,view,8,0"
        "${mod},9,view,9,0"

        # Move active client to tag
        "${mod}+${move},1,tag,1,0"
        "${mod}+${move},2,tag,2,0"
        "${mod}+${move},3,tag,3,0"
        "${mod}+${move},4,tag,4,0"
        "${mod}+${move},5,tag,5,0"
        "${mod}+${move},6,tag,6,0"
        "${mod}+${move},7,tag,7,0"
        "${mod}+${move},8,tag,8,0"
        "${mod}+${move},9,tag,9,0"

        # Screenshots
        # Take a screenshot of active monitor, then open it in satty
        "${mod},PRINT,spawn_shell,grim -g \"$(slurp -o -r -w 0)\" -t ppm - | satty --filename - --output-filename ${config.programs.satty.settings.general.output-filename}"
        # Take a screenshot of select area, then open it in satty
        "${mod}+${move},PRINT,spawn_shell,grim -g \"$(slurp -w 0)\" -t ppm - | satty --filename - --output-filename ${config.programs.satty.settings.general.output-filename}"
      ];

      mousebind = [
        # Mouse bindings
        # LMB keysym (BTN_LEFT) | keycode (mouse:272)
        # RMB keysym (BTN_RIGHT) | keycode (mouse:273)
        # MMB keysym (BTN_MIDDLE) | keycode (mouse:274)
        "${mod}+${move},BTN_LEFT,moveresize,curmove"
        "${mod}+${resize},BTN_LEFT,moveresize,curresize"
      ];

      bindl = [
        # Audio keybinds

        # Adjust volume levels with dedicated volume keys
        "NONE,XF86AudioRaiseVolume,spawn,wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"
        "NONE,XF86AudioLowerVolume,spawn,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"

        # Set volume levels to a set percentage using the dedicated volume keys
        "${alter},XF86AudioRaiseVolume,spawn,wpctl set-volume @DEFAULT_AUDIO_SINK@ 80%"
        "${alter},XF86AudioLowerVolume,spawn,wpctl set-volume @DEFAULT_AUDIO_SINK@ 40%"

        # Mute audio sink (outputs, i.e. headphones) with dedicated volume mute key
        "NONE,XF86AudioMute,spawn,wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

        # Mute audio source (inputs, i.e. microphones) with dedicated mic mute key
        "NONE,XF86AudioMicMute,spawn,wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"

        # Mute audio source (inputs, i.e. microphones) using the dedicated volume mute key. Useful for keyboards without a dedicated mic mute key.
        "${alter},XF86AudioMute,spawn,wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"

        # Brightness keybinds

        # Adjust brightness levels with dedicated brightness keys
        "NONE,XF86MonBrightnessUp,spawn,brightnessctl s 5%+"
        "NONE,XF86MonBrightnessDown,spawn,brightnessctl s 5%-"

        # Set brightness levels to a set percentage using the dedicated brightness keys
        "${alter},XF86MonBrightnessUp,spawn,brightnessctl s 100%"
        "${alter},XF86MonBrightnessDown,spawn,brightnessctl s 1%"

        # Playback keybinds
        "NONE,XF86AudioNext,spawn,playerctl next"
        "NONE,XF86AudioPlay,spawn,playerctl play-pause"
        "NONE,XF86AudioPrev,spawn,playerctl previous"
        "NONE,XF86AudioStop,spawn,playerctl stop"
      ];
    };
  };
}
