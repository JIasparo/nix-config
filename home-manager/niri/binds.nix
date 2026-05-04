{ config, ... }:

{
  config = {
    programs.niri.settings.binds =
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
        "${mod}+D".action.spawn = instant-messenger;
        "${mod}+E".action.spawn = editor;
        "${mod}+F".action.spawn-sh = file-manager-tui;
        "${mod}+${alter}+F".action.spawn = file-manager-gui;
        "${mod}+M".action.spawn = media-player;
        "${mod}+Return".action.spawn = terminal;
        "${mod}+S".action.spawn = "steam";
        "${mod}+Space".action.spawn-sh = menu;
        "${mod}+W".action.spawn = browser;
        "${mod}+${alter}+W".action.spawn-sh = "${browser} --new-window about:profiles";
        "Ctrl+Alt+Delete".action.spawn-sh = system-monitor;

        # Kill the focused window
        "${mod}+Q".action.close-window = [ ];
        "${mod}+F4".action.close-window = [ ];

        # Window management
        "${mod}+Tab".action.toggle-overview = [ ];
        "${mod}+V".action.toggle-window-floating = [ ];
        "${mod}+${move}+V".action.maximize-column = [ ];
        "${mod}+${resize}+V".action.fullscreen-window = [ ];

        # Scratchpad keybinds
        # If Niri had them.
        "${mod}+GRAVE".action.spawn = password-manager;

        # Switch column/window focus
        "${mod}+${down}".action.focus-window-down = [ ];
        "${mod}+${left}".action.focus-column-left = [ ];
        "${mod}+${right}".action.focus-column-right = [ ];
        "${mod}+${up}".action.focus-window-up = [ ];

        # Move active column/window
        "${mod}+${move}+${down}".action.move-window-down = [ ];
        "${mod}+${move}+${left}".action.move-column-left = [ ];
        "${mod}+${move}+${right}".action.move-column-right = [ ];
        "${mod}+${move}+${up}".action.move-window-up = [ ];

        # Change scroller layout
        "${mod}+SLASH".action.switch-preset-column-width = [ ];
        "${mod}+${move}+SLASH".action.toggle-column-tabbed-display = [ ];
        "${mod}+${move}+COMMA".action.consume-or-expel-window-left = [ ];
        "${mod}+${move}+PERIOD".action.consume-or-expel-window-right = [ ];

        # Resize active column/window
        "${mod}+${resize}+${down}".action.set-window-height = "-50";
        "${mod}+${resize}+${left}".action.set-column-width = "-50";
        "${mod}+${resize}+${right}".action.set-column-width = "+50";
        "${mod}+${resize}+${up}".action.set-window-height = "+50";

        # Switch workspaces
        "${mod}+1".action.focus-workspace = "${config.programs.niri.settings.workspaces.workspace-01.name}";
        "${mod}+2".action.focus-workspace = "${config.programs.niri.settings.workspaces.workspace-02.name}";
        "${mod}+3".action.focus-workspace = "${config.programs.niri.settings.workspaces.workspace-03.name}";
        "${mod}+4".action.focus-workspace = "${config.programs.niri.settings.workspaces.workspace-04.name}";
        "${mod}+5".action.focus-workspace = "${config.programs.niri.settings.workspaces.workspace-05.name}";
        "${mod}+6".action.focus-workspace = "${config.programs.niri.settings.workspaces.workspace-06.name}";
        "${mod}+7".action.focus-workspace = "${config.programs.niri.settings.workspaces.workspace-07.name}";
        "${mod}+8".action.focus-workspace = "${config.programs.niri.settings.workspaces.workspace-08.name}";
        "${mod}+9".action.focus-workspace = "${config.programs.niri.settings.workspaces.workspace-09.name}";
        "${mod}+0".action.focus-workspace = "${config.programs.niri.settings.workspaces.workspace-10.name}";

        # Move active column to a workspace
        "${mod}+${move}+1".action.move-column-to-workspace = "${config.programs.niri.settings.workspaces.workspace-01.name}";
        "${mod}+${move}+2".action.move-column-to-workspace = "${config.programs.niri.settings.workspaces.workspace-02.name}";
        "${mod}+${move}+3".action.move-column-to-workspace = "${config.programs.niri.settings.workspaces.workspace-03.name}";
        "${mod}+${move}+4".action.move-column-to-workspace = "${config.programs.niri.settings.workspaces.workspace-04.name}";
        "${mod}+${move}+5".action.move-column-to-workspace = "${config.programs.niri.settings.workspaces.workspace-05.name}";
        "${mod}+${move}+6".action.move-column-to-workspace = "${config.programs.niri.settings.workspaces.workspace-06.name}";
        "${mod}+${move}+7".action.move-column-to-workspace = "${config.programs.niri.settings.workspaces.workspace-07.name}";
        "${mod}+${move}+8".action.move-column-to-workspace = "${config.programs.niri.settings.workspaces.workspace-08.name}";
        "${mod}+${move}+9".action.move-column-to-workspace = "${config.programs.niri.settings.workspaces.workspace-09.name}";
        "${mod}+${move}+0".action.move-column-to-workspace = "${config.programs.niri.settings.workspaces.workspace-10.name}";

        # Screenshots
        # Take a screenshot of active monitor, then open it in satty
        "${mod}+PRINT".action.spawn-sh =
          "grim -g \"$(slurp -o -r -w 0)\" -t ppm - | satty --filename - --output-filename ${config.programs.satty.settings.general.output-filename}";
        # Take a screenshot of select area, then open it in satty
        "${mod}+${alter}+PRINT".action.spawn-sh =
          "grim -g \"$(slurp -w 0)\" -t ppm - | satty --filename - --output-filename ${config.programs.satty.settings.general.output-filename}";

        # Mouse bindings
        #"${mod}+${move}+MouseLeft".action = "";
        #"${mod}+${resize}+MouseRight".action = "";
        #"${mod}+MouseForward".action = [];
        #"${mod}+MouseBack".action = [];

        # Audio keybinds
        # Adjust volume levels with dedicated volume keys
        "XF86AudioRaiseVolume" = {
          action.spawn-sh = "wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+";
          allow-when-locked = true;
        };
        "XF86AudioLowerVolume" = {
          action.spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
          allow-when-locked = true;
        };

        # Set volume levels to a set percentage using the dedicated volume keys
        "${alter}+XF86AudioRaiseVolume" = {
          action.spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 80%";
          allow-when-locked = true;
        };
        "${alter}+XF86AudioLowerVolume" = {
          action.spawn-sh = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 40%";
          allow-when-locked = true;
        };

        # Mute audio sink (outputs, e.g., headphones) with dedicated volume mute key
        "XF86AudioMute" = {
          action.spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          allow-when-locked = true;
        };

        # Mute audio source (inputs, e.g., microphones) with dedicated mic mute key
        "XF86AudioMicMute" = {
          action.spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
          allow-when-locked = true;
        };

        # Mute audio source (inputs, e.g., microphones) using the dedicated volume mute key. Useful for keyboards without a dedicated mic mute key.
        "${alter}+XF86AudioMute" = {
          action.spawn-sh = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
          allow-when-locked = true;
        };

        # Brightness keybinds
        # Adjust brightness levels with dedicated brightness keys
        "XF86MonBrightnessUp" = {
          action.spawn-sh = "brightnessctl s 5%+";
          allow-when-locked = true;
        };
        "XF86MonBrightnessDown" = {
          action.spawn-sh = "brightnessctl s 5%-";
          allow-when-locked = true;
        };

        # Set brightness levels to a set percentage using the dedicated brightness keys
        "${alter}+XF86MonBrightnessUp" = {
          action.spawn-sh = "brightnessctl s 100%";
          allow-when-locked = true;
        };
        "${alter}+XF86MonBrightnessDown" = {
          action.spawn-sh = "brightnessctl s 1%";
          allow-when-locked = true;
        };

        # Playback keybinds
        "XF86AudioNext" = {
          action.spawn-sh = "playerctl next";
          allow-when-locked = true;
        };
        "XF86AudioPlay" = {
          action.spawn-sh = "playerctl play-pause";
          allow-when-locked = true;
        };
        "XF86AudioPrev" = {
          action.spawn-sh = "playerctl previous";
          allow-when-locked = true;
        };
        "XF86AudioStop" = {
          action.spawn-sh = "playerctl stop";
          allow-when-locked = true;
        };
      };
  };
}
