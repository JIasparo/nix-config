{ config, ... }:

{
  config = {
    services.hyprpaper = {
      enable = true;

      settings = {
        splash = false;
        
        wallpaper = [
          {
            monitor = "";
            path = "${config.stylix.image}";
            fit_mode = "cover"; # contain, cover, tile, fill
          }
        ];
      };
    };
  };
}
