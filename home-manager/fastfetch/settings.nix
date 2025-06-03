{ ... }:

{
  config = {
    programs.fastfetch.settings = {

      modules = [
        "break"
        {
          type = "custom";
          format = "────────────────────────────────────────────────";
        }
        {
          type = "os";
        }
        {
          type = "kernel";
        }
        {
          type = "packages";
        }
        {
          type = "custom";
          format = "────────────────────────────────────────────────";
        }
        {
          type = "wm";
        }
        {
          type = "terminal";
        }
        {
          type = "shell";
        }
        {
          type = "custom";
          format = "────────────────────────────────────────────────";
        }
        {
          type = "cpu";
        }
        {
          type = "gpu";
        }
        {
          type = "memory";
        }
        {
          type = "custom";
          format = "────────────────────────────────────────────────";
        }
        {
          type = "uptime";
        }
        {
          type = "command";
          key = "/ Age";
          text = # bash script
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
          type = "custom";
          format = "────────────────────────────────────────────────";
        }
        "break"
      ];
    };
  };
}
