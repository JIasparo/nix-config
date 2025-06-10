{ config, ... }:

{
  config = {
    programs.hyprlock = {
      enable = true;
      settings = {

        general = {
          disable_loading_bar = true;
        };

        background = {
          monitor = "";
          path = "${toString config.stylix.image}";
          #blur_passes = 2;
          #contrast = 1;
          #brightness = 0.5;
          #vibrancy = 0.2;
          #vibrancy_darkness = 0.2;
        };

        input-field = {
          monitor = "";
          size = "250, 60";
          outline_thickness = 2;
          dots_size = 0.2;
          dots_spacing = 0.35;
          dots_center = true;
          fade_on_empty = false;
          rounding = -1;
          hide_input = false;
          position = "0, -200";
          halign = "center";
          valign = "center";
        };

        label = [
          {
            # Date
            monitor = "";
            text = "cmd[update:1000] echo \"$(date +\"%A, %B %d\")\"";
            font_size = 22;
            #font_family = "${config.stylix.fonts.sansSerif.name}";
            position = "0, 300";
            halign = "center";
            valign = "center";
          }

          {
            # Time
            monitor = "";
            text = "cmd[update:1000] echo \"$(date +\"%-H:%M\")\"";
            font_size = 95;
            #font_family = "${config.stylix.fonts.sansSerif.name}";
            position = "0, 200";
            halign = "center";
            valign = "center";
          }
        ];
      };
    };
  };
}
