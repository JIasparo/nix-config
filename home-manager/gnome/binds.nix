{ ... }:

{
  config = {
    dconf.settings = {
      # Tiling keybinds
      "org/gnome/desktop/wm/keybindings" = {
        switch-windows = [ "<Alt>Tab" ];

        switch-applications = [ "<Super>Tab" ];
        switch-group = [ "<Super>grave" ];

        cycle-windows = [ "<Super>Escape" ];
        cycle-windows-backward = [ "<Super>Escape" ];

        switch-to-workspace-1 = [ "<Super>1" ];
        switch-to-workspace-2 = [ "<Super>2" ];
        switch-to-workspace-3 = [ "<Super>3" ];
        switch-to-workspace-4 = [ "<Super>4" ];

        move-to-workspace-1 = [ "<Shift><Super>1" ];
        move-to-workspace-2 = [ "<Shift><Super>2" ];
        move-to-workspace-3 = [ "<Shift><Super>3" ];
        move-to-workspace-4 = [ "<Shift><Super>4" ];

        move-to-monitor-left = [ "<Shift><Super>Left" ];
        move-to-monitor-right = [ "<Shift><Super>Right" ];
      };

      "org/gnome/mutter/keybindings" = {
        toggle-tiled-left = [ "<Super>Left" ];
        toggle-tiled-right = [ "<Super>Right" ];
      };

      # Setup my media keys
      "org/gnome/settings-daemon/plugins/media-keys" = {
        volume-mute = [ "AudioMute" ];
        volume-down = [ "AudioLowerVolume" ];
        volume-up = [ "AudioRaiseVolume" ];

        stop = [ "AudioStop" ];
        previous = [ "AudioPrev" ];
        play = [ "AudioPlay" ];
        next = [ "AudioNext" ];
      };
    };
  };
}
