{ config, ... }:

{
  config = {
    wayland.windowManager.niri.settings.binds =
      let
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
        instant-messenger = "equibop";
        media-player = "vlc";
        menu = "rofi -show drun";
        password-manager = "bitwarden";
        system-monitor = "${terminal} btop";
        terminal = "kitty";
      in
      {
        # Application keybinds
        "${mod}+D".spawn = instant-messenger;
        "${mod}+E".spawn = editor;
        "${mod}+F".spawn-sh = file-manager-tui;
        "${mod}+${alter}+F".spawn = file-manager-gui;
        "${mod}+M".spawn = media-player;
        "${mod}+P".spawn = "picard";
        "${mod}+Return".spawn = terminal;
        "${mod}+S".spawn = "steam";
        "${mod}+${alter}+S".spawn-sh = "steam steam://open/console";
        "${mod}+Space".spawn-sh = menu;
        "${mod}+W".spawn = browser;
        "${mod}+${alter}+W".spawn-sh = "${browser} --new-window about:profiles";
        "Ctrl+Alt+Delete".spawn-sh = system-monitor;

        # Global application actions
        "${mod}+INSERT".spawn-sh = "${instant-messenger} --toggle-mic";
        "${mod}+${alter}+INSERT".spawn-sh = "${instant-messenger} --toggle-deafen";

        # Kill the focused window
        "${mod}+Q".close-window = { };
        "${mod}+F4".close-window = { };

        # Window management
        "${mod}+Tab".toggle-overview = { };
        "${mod}+V".toggle-window-floating = { };
        "${mod}+${move}+V".maximize-column = { };
        "${mod}+${resize}+V".fullscreen-window = { };

        # Scratchpad keybinds
        # If Niri had them.
        #"${mod}+GRAVE".spawn = password-manager;

        # Switch column/window focus
        "${mod}+${down}".focus-window-down = { };
        "${mod}+${left}".focus-column-left = { };
        "${mod}+${right}".focus-column-right = { };
        "${mod}+${up}".focus-window-up = { };

        # Move active column/window
        "${mod}+${move}+${down}".move-window-down = { };
        "${mod}+${move}+${left}".move-column-left = { };
        "${mod}+${move}+${right}".move-column-right = { };
        "${mod}+${move}+${up}".move-window-up = { };

        # Change scroller layout
        "${mod}+SLASH".switch-preset-column-width = { };
        "${mod}+${move}+SLASH".toggle-column-tabbed-display = { };
        "${mod}+${move}+COMMA".consume-or-expel-window-left = { };
        "${mod}+${move}+PERIOD".consume-or-expel-window-right = { };

        # Resize active column/window
        "${mod}+${resize}+${down}".set-window-height = "-50";
        "${mod}+${resize}+${left}".set-column-width = "-50";
        "${mod}+${resize}+${right}".set-column-width = "+50";
        "${mod}+${resize}+${up}".set-window-height = "+50";

        # Switch workspaces
        "${mod}+1".focus-workspace = "workspace-01";
        "${mod}+2".focus-workspace = "workspace-02";
        "${mod}+3".focus-workspace = "workspace-03";
        "${mod}+4".focus-workspace = "workspace-04";
        "${mod}+5".focus-workspace = "workspace-05";
        "${mod}+6".focus-workspace = "workspace-06";
        "${mod}+7".focus-workspace = "workspace-07";
        "${mod}+8".focus-workspace = "workspace-08";
        "${mod}+9".focus-workspace = "workspace-09";
        "${mod}+0".focus-workspace = "workspace-10";

        # Move active column to a workspace
        "${mod}+${move}+1".move-column-to-workspace = "workspace-01";
        "${mod}+${move}+2".move-column-to-workspace = "workspace-02";
        "${mod}+${move}+3".move-column-to-workspace = "workspace-03";
        "${mod}+${move}+4".move-column-to-workspace = "workspace-04";
        "${mod}+${move}+5".move-column-to-workspace = "workspace-05";
        "${mod}+${move}+6".move-column-to-workspace = "workspace-06";
        "${mod}+${move}+7".move-column-to-workspace = "workspace-07";
        "${mod}+${move}+8".move-column-to-workspace = "workspace-08";
        "${mod}+${move}+9".move-column-to-workspace = "workspace-09";
        "${mod}+${move}+0".move-column-to-workspace = "workspace-10";

        # Screenshots
        # Take a screenshot of active monitor, then open it in satty
        "${mod}+PRINT".spawn-sh =
          "grim -g \"$(slurp -o -r -w 0)\" -t ppm - | satty --filename - --output-filename ${config.programs.satty.settings.general.output-filename}";
        # Take a screenshot of select area, then open it in satty
        "${mod}+${alter}+PRINT".spawn-sh =
          "grim -g \"$(slurp -w 0)\" -t ppm - | satty --filename - --output-filename ${config.programs.satty.settings.general.output-filename}";

        # Mouse bindings
        #"${mod}+${move}+MouseLeft" = {};
        #"${mod}+${resize}+MouseRight" = {};
        #"${mod}+MouseForward" = {};
        #"${mod}+MouseBack" = {};

        # Audio keybinds
        # Adjust volume levels with dedicated volume keys
        "XF86AudioRaiseVolume" = {
          spawn-sh = "wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+";
          _props.allow-when-locked = true;
        };
        "XF86AudioLowerVolume" = {
          spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
          _props.allow-when-locked = true;
        };

        # Set volume levels to a set percentage using the dedicated volume keys
        "${alter}+XF86AudioRaiseVolume" = {
          spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 80%";
          _props.allow-when-locked = true;
        };
        "${alter}+XF86AudioLowerVolume" = {
          spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 40%";
          _props.allow-when-locked = true;
        };

        # Mute audio sink (outputs, e.g., headphones) with dedicated volume mute key
        "XF86AudioMute" = {
          spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          _props.allow-when-locked = true;
        };

        # Mute audio source (inputs, e.g., microphones) with dedicated mic mute key
        "XF86AudioMicMute" = {
          spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
          _props.allow-when-locked = true;
        };

        # Mute audio source (inputs, e.g., microphones) using the dedicated volume mute key. Useful for keyboards without a dedicated mic mute key.
        "${alter}+XF86AudioMute" = {
          spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
          _props.allow-when-locked = true;
        };

        # Brightness keybinds
        # Adjust brightness levels with dedicated brightness keys
        "XF86MonBrightnessUp" = {
          spawn-sh = "brightnessctl s 5%+";
          _props.allow-when-locked = true;
        };
        "XF86MonBrightnessDown" = {
          spawn-sh = "brightnessctl s 5%-";
          _props.allow-when-locked = true;
        };

        # Set brightness levels to a set percentage using the dedicated brightness keys
        "${alter}+XF86MonBrightnessUp" = {
          spawn-sh = "brightnessctl s 100%";
          _props.allow-when-locked = true;
        };
        "${alter}+XF86MonBrightnessDown" = {
          spawn-sh = "brightnessctl s 1%";
          _props.allow-when-locked = true;
        };

        # Playback keybinds
        "XF86AudioNext" = {
          spawn-sh = "playerctl next";
          _props.allow-when-locked = true;
        };
        "XF86AudioPlay" = {
          spawn-sh = "playerctl play-pause";
          _props.allow-when-locked = true;
        };
        "XF86AudioPrev" = {
          spawn-sh = "playerctl previous";
          _props.allow-when-locked = true;
        };
        "XF86AudioStop" = {
          spawn-sh = "playerctl stop";
          _props.allow-when-locked = true;
        };
      };
  };
}
