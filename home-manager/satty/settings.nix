{ ... }:

{
  config = {
    programs.satty.settings = {
      general = {
        # Start Satty in fullscreen mode
        fullscreen = false;
        # Exit directly after copy/save action
        early-exit = false;
        # Draw corners of rectangles round if the value is greater than 0
        corner-roundness = 0; # 0 = disabled
        # Select the tool on startup
        initial-tool = "brush"; # "pointer", "crop", "line", "arrow", "rectangle", "text", "marker", "blur", "brush"
        # Configure the command to be called on copy, for example `wl-copy`
        copy-command = "wl-copy";
        # Increase or decrease the size of the annotations
        annotation-size-factor = 1.0;
        # Filename to use for saving action. Omit to disable saving to file. Might contain format specifiers: https://docs.rs/chrono/latest/chrono/format/strftime/index.html
        output-filename = "/tmp/test-%Y-%m-%d_%H:%M:%S.png";
        # After copying the screenshot, save it to a file as well
        save-after-copy = false;
        # Hide toolbars by default
        default-hide-toolbars = false;
        # Experimental: whether window focus shows/hides toolbars. This does not affect initial state of toolbars, see default-hide-toolbars.
        #focus-toggles-toolbars = false;
        # Fill shapes by default
        default-fill-shapes = false;
        # The primary highlighter to use, the other is accessible by holding CTRL at the start of a highlight
        primary-highlighter = "block"; # "block", "freehand"
        # Disable notifications
        disable-notifications = false;
        # Actions to trigger on right click (order is important)
        actions-on-right-click = [ ]; # "save-to-clipboard", "save-to-file", "exit"
        # Actions to trigger on Enter key (order is important)
        actions-on-enter = [ ]; # "save-to-clipboard", "save-to-file", "exit"
        # Actions to trigger on Escape key (order is important)
        actions-on-escape = [ ]; # "save-to-clipboard", "save-to-file", "exit"
        # request no window decoration. Please note that the compositor has the final say in this.
        no-window-decoration = true;
        # Experimental: adjust history size for brush input smoothing
        brush-smooth-history-size = 5; # 0 = disabled
        # Experimental: The pan step size to use when panning with arrow keys.
        #pan-step-size = 50.0;
        # Experimental: The zoom factor to use for the image.
        #zoom-factor = 1.1; # 1.0 = no zoom
      };

      keybinds = {
        pointer = "p";
        crop = "c";
        brush = "b";
        line = "i";
        arrow = "z";
        rectangle = "r";
        ellipse = "e";
        text = "t";
        marker = "m";
        blur = "u";
        highlight = "g";
      };

      # Custom colours for the colour palette
      color-palette = {
        # These will be shown in the toolbar for quick selection
        palette = [
          "#000000"
          "#ffffff"
          "#E69F00"
          "#009E73"
          "#5BCEFA"
          "#F5A9B8"
        ];

        # These will be available in the color picker as presets
        # Leave empty to use GTK's default
        custom = [
          #
        ];
      };
    };
  };
}
