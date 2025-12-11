{ ... }:

{
  config = {
    services.hyprlauncher = {
      enable = true;
      
      settings = {
        general = {
          grab_focus = true;
        };

        cache = {
          enabled = true;
        };

        finders = {
          default_finder = "desktop"; # "math", "desktop", "unicode"
          desktop_icons = true;
        };

        ui = {
          window_size = "400 260";
        };
      };
    };
  };
}
