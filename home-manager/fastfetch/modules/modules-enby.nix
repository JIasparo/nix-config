{ lib, ... }:

{
  config = {
    programs.fastfetch.settings = {

      modules = let 
        block-1-color = "FFF433"; # Yellow: #FFF433
        block-2-color = "FFFFFF"; # White: #FFFFFF
        block-3-color = "9B59D0"; # Purple: #9B59D0
        block-4-color = "2D2D2D"; # Black: #2D2D2D
        
        block-1 = {
            r = "${toString (lib.fromHexString (lib.substring 0 2 block-1-color))}";
            g = "${toString (lib.fromHexString (lib.substring 2 2 block-1-color))}";
            b = "${toString (lib.fromHexString (lib.substring 4 2 block-1-color))}";
          };
        block-2 = {
            r = "${toString (lib.fromHexString (lib.substring 0 2 block-2-color))}";
            g = "${toString (lib.fromHexString (lib.substring 2 2 block-2-color))}";
            b = "${toString (lib.fromHexString (lib.substring 4 2 block-2-color))}";
          };
        block-3 = {
            r = "${toString (lib.fromHexString (lib.substring 0 2 block-3-color))}";
            g = "${toString (lib.fromHexString (lib.substring 2 2 block-3-color))}";
            b = "${toString (lib.fromHexString (lib.substring 4 2 block-3-color))}";
          };
        block-4 = {
            r = "${toString (lib.fromHexString (lib.substring 0 2 block-4-color))}";
            g = "${toString (lib.fromHexString (lib.substring 2 2 block-4-color))}";
            b = "${toString (lib.fromHexString (lib.substring 4 2 block-4-color))}";
          };
      in[
        "break"
        {
          type = "os";
          keyColor = "38;2;${block-1.r};${block-1.g};${block-1.b}";
        }
        {
          type = "kernel";
          keyColor = "38;2;${block-1.r};${block-1.g};${block-1.b}";
        }
        {
          type = "packages";
          keyColor = "38;2;${block-1.r};${block-1.g};${block-1.b}";
        }
        "break"
        {
          type = "wm";
          keyColor = "38;2;${block-2.r};${block-2.g};${block-2.b}";
        }
        {
          type = "terminal";
          keyColor = "38;2;${block-2.r};${block-2.g};${block-2.b}";
        }
        {
          type = "shell";
          keyColor = "38;2;${block-2.r};${block-2.g};${block-2.b}";
        }
        "break"
        "break"
        {
          type = "cpu";
          keyColor = "38;2;${block-3.r};${block-3.g};${block-3.b}";
        }
        {
          type = "gpu";
          keyColor = "38;2;${block-3.r};${block-3.g};${block-3.b}";
        }
        {
          type = "memory";
          keyColor = "38;2;${block-3.r};${block-3.g};${block-3.b}";
        }
        "break"
        {
          type = "uptime";
          keyColor = "38;2;${block-4.r};${block-4.g};${block-4.b}";
        }
        {
          type = "command";
          key = "/ Age";
          keyColor = "38;2;${block-4.r};${block-4.g};${block-4.b}";

          # bash script
          text =
            /*
              `birth_install` - takes the time, in seconds, from the unix epoch to the creation of the root directory.
              `current` - takes the time, in seconds, from the epoch to today's date.
              `delta` - the difference between today's date and the creation of the root directory.
              `delta_days` - converts the remaining time into days.
            */
            ''
              birth_install=$(stat -c %W /)
              current=$(date +%s)
              delta=$((current - birth_install))
              delta_days=$((delta / 86400))
              echo $delta_days days
            '';
        }
        {
          type = "colors";
          key = "Colors";
          keyColor = "38;2;${block-4.r};${block-4.g};${block-4.b}";
          symbol = "circle";
        }
        "break"
      ];
    };
  };
}
