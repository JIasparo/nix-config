{ ... }:

{
  config = {
    programs.fastfetch.settings = {

      logo = {
        type = "data";
        source = ''
          [38;2;224;213;0m       ◢██◣[38;2;255;244;48m   ◥███◣  ◢██◣
          [38;2;224;213;0m       ◥███◣[38;2;255;244;48m   ◥███◣◢███◤
          [38;2;224;213;0m        ◥███◣[38;2;255;244;48m   ◥██████◤
          [38;2;224;213;0m    ◢████████████[48;2;255;244;48m◣[0m[38;2;255;244;48m████◤[38;2;224;213;0m   ◢◣
          [38;2;214;214;214m   ◢██████████████[48;2;255;255;255m◣[0m[38;2;255;255;255m███◣[38;2;214;214;214m  ◢██◣
          [38;2;255;255;255m        ◢███◤      ◥███◣[38;2;214;214;214m◢███◤
          [38;2;255;255;255m       ◢███◤        ◥██[48;2;214;214;214m◤[0m[38;2;214;214;214m███◤
          [38;2;255;255;255m◢█████████◤          ◥[48;2;214;214;214m◤[0m[38;2;214;214;214m████████◣
          [38;2;155;89;209m◥████████[48;2;121;48;176m◤[0m[38;2;121;48;176m◣          ◢█████████◤
          [38;2;155;89;209m    ◢███[48;2;121;48;176m◤[0m[38;2;121;48;176m██◣        ◢███◤
          [38;2;155;89;209m   ◢███◤[38;2;121;48;176m◥███◣      ◢███◤
          [38;2;155;89;209m   ◥██◤  [38;2;121;48;176m◥███[48;2;155;89;209m◣[0m[38;2;155;89;209m██████████████◤
          [38;2;20;20;20m    ◥◤   [38;2;10;10;10m◢████[48;2;20;20;20m◣[0m[38;2;20;20;20m████████████◤
          [38;2;10;10;10m        ◢██████◣[38;2;20;20;20m   ◥███◣
          [38;2;10;10;10m       ◢███◤◥███◣[38;2;20;20;20m   ◥███◣
          [38;2;10;10;10m       ◥██◤  ◥███◣[38;2;20;20;20m   ◥██◤
        '';
        padding = {
          top = 1;
          left = 3;
          right = 3;
        };
      };

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
