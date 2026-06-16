{ ... }:

{
  config = {
    programs.fastfetch.settings = {

      modules = [
        "break"
        {
          type = "os";
        }
        {
          type = "kernel";
        }
        {
          type = "packages";
        }
        "break"
        {
          type = "wm";
        }
        {
          type = "terminal";
        }
        {
          type = "shell";
        }
        "break"
        "break"
        {
          type = "cpu";
        }
        {
          type = "gpu";
        }
        {
          type = "memory";
        }
        "break"
        {
          type = "uptime";
        }
        {
          type = "command";
          key = "/ Age";

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
          symbol = "circle";
        }
        "break"
      ];
    };
  };
}
