{ config, ... }:

{
  config = {
    programs.niri.settings.binds = with config.lib.niri.actions; {
      # Application binds
      "Ctrl+Alt+Delete".action = spawn "${config.home.sessionVariables.TERM}" "btop";
      "Mod+D".action = spawn "discord";
      "Mod+E".action = spawn "${config.home.sessionVariables.VISUAL_EDITOR}";
      "Mod+F".action = spawn "${config.home.sessionVariables.TERM}" "yazi";
      "Mod+M".action = spawn "${config.home.sessionVariables.MEDIA_PLAYER}";
      "Mod+Return".action = spawn "${config.home.sessionVariables.TERM}";
      "Mod+S".action = spawn "steam";
      "Mod+Space".action = spawn "rofi" "-show" "drun";
      "Mod+W".action = spawn "${config.home.sessionVariables.BROWSER}";

      # Toggle overview
      "Mod+Tab".action = toggle-overview;

      # Kill binds
      "Mod+Q".action = close-window;
      "Mod+F4".action = close-window;

      # Toggle between floating and tiling
      "Mod+V".action = toggle-window-floating;

      # Toggle fullscreen
      "Mod+Shift+V".action = fullscreen-window;

      # Move window into or out of a column
      "Mod+Shift+Comma".action = consume-or-expel-window-left;
      "Mod+Shift+Period".action = consume-or-expel-window-right;

      # Merge column together
      "Mod+Shift+Slash".action = toggle-column-tabbed-display;

      # Swap window positions
      "Mod+Comma".action = swap-window-left;
      "Mod+Period".action = swap-window-right;

      # Move focus
      "Mod+Left".action = focus-column-left;
      "Mod+Right".action = focus-column-right;
      "Mod+Up".action = focus-window-up;
      "Mod+Down".action = focus-window-down;
      
      # Move active column/window
      "Mod+Shift+Left".action = move-column-left;
      "Mod+Shift+Right".action = move-column-right;
      "Mod+Shift+Up".action = move-window-up;
      "Mod+Shift+Down".action = move-window-down;

      # Resize active column/window
      "Mod+Ctrl+Left".action = switch-preset-column-width-back;
      "Mod+Ctrl+Right".action = switch-preset-column-width;
      "Mod+Ctrl+Up".action = switch-preset-window-height-back;
      "Mod+Ctrl+Down".action = switch-preset-window-height;
      "Mod+Slash".action = maximize-column;
      "Mod+Ctrl+Slash".action = expand-column-to-available-width;

      # Switch workspaces
      "Mod+1".action = focus-workspace "${config.programs.niri.settings.workspaces.workspace-1.name}";
      "Mod+2".action = focus-workspace "${config.programs.niri.settings.workspaces.workspace-2.name}";
      "Mod+3".action = focus-workspace "${config.programs.niri.settings.workspaces.workspace-3.name}";
      "Mod+8".action = focus-workspace "${config.programs.niri.settings.workspaces.workspace-4.name}";
      "Mod+9".action = focus-workspace "${config.programs.niri.settings.workspaces.workspace-5.name}";
      "Mod+0".action = focus-workspace "${config.programs.niri.settings.workspaces.workspace-6.name}";

      # Move active column to a workspace
      # As of October 21, 2025: move-column-to-workspace is not available in the niri-flake.
      #"Mod+Shift+1".action = move-column-to-workspace "${config.programs.niri.settings.workspaces.workspace-1.name}";
      #"Mod+Shift+2".action = move-column-to-workspace "${config.programs.niri.settings.workspaces.workspace-2.name}";
      #"Mod+Shift+3".action = move-column-to-workspace "${config.programs.niri.settings.workspaces.workspace-3.name}";
      #"Mod+Shift+8".action = move-column-to-workspace "${config.programs.niri.settings.workspaces.workspace-4.name}";
      #"Mod+Shift+9".action = move-column-to-workspace "${config.programs.niri.settings.workspaces.workspace-5.name}";
      #"Mod+Shift+0".action = move-column-to-workspace "${config.programs.niri.settings.workspaces.workspace-6.name}";

      # Take a screenshot of active monitor, then open it in satty
      "Mod+Print".action = spawn "sh" "-c" "grim -g \"$(slurp -o -r -w 0)\" -t ppm - | satty --filename - --output-filename ~/Pictures/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png";

      # Take a screenshot of select area, then open it in satty
      "Mod+Shift+Print".action = spawn "sh" "-c" "grim -g \"$(slurp -w 0)\" -t ppm - | satty --filename - --output-filename ~/Pictures/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png";

      # Move / resize windows/columns with mouse
      #

      # Volume keybinds
      "XF86AudioRaiseVolume".action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%+";
      "XF86AudioLowerVolume".action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%-";

      # Brightness keybinds
      "XF86MonBrightnessUp".action = spawn "brightnessctl" "s" "10%+";
      "XF86MonBrightnessDown".action = spawn "brightnessctl" "s" "10%-";

      # Media keybinds
      "XF86AudioMute".action = spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle";
      "XF86AudioMicMute".action = spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SOURCE@" "toggle";

      "XF86AudioPlay".action = spawn "playerctl" "play-pause";
      "XF86AudioStop".action = spawn "playerctl" "pause";
      "XF86AudioPrev".action = spawn "playerctl" "previous";
      "XF86AudioNext".action = spawn "playerctl" "next";
    };
  };
}
