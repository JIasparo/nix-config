{ ... }:

{
  config = {
    programs.satty.settings = {
      general = {
        fullscreen = false;
        early-exit = false;
        corner-roundness = 0;
        initial-tool = "brush";
        copy-command = "wl-copy";
        annotation-size-factor = 1;
        output-filename = "/tmp/test-%Y-%m-%d_%H:%M:%S.png";
        save-after-copy = false;
        default-hide-toolbars = false;
        #focus-toggles-toolbars = false; # Prevents satty from launching
        #default-fill-shapes = false; # Prevents satty from launching
        primary-highlighter = "block";
        disable-notifications = false;
        actions-on-right-click = [ ];
        actions-on-enter = [ ];
        actions-on-escape = [ "exit" ];
        no-window-decoration = true;
        brush-smooth-history-size = 0; # Adjust history size for brush input smooting (0: disabled, default: 0, try e.g. 5 or 10)
      };

      #font = {
      #  family = "Roboto";
      #  style = "Bold";
      #};

      color-palette = {
        #palette = [
        #  "#ffffff"
        #  "#ffffff"
        #  "#ffffff"
        #  "#ffffff"
        #  "#ffffff"
        #  "#ffffff"
        #];

        #custom = [];
      };
    };
  };
}
