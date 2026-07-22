{ ... }:

{
  config = {
    services.swayidle = {
      enable = true;

      timeouts = [
        {
          # lock the screen after 10 minutes of inactivity
          timeout = 600;
          command = "${pkgs.swaylock}/bin/swaylock -fF";
        }

        {
          # Turn off monitor(s) after 15 minutes of inactivity
          timeout = 900;
          command = "${pkgs.swaylock}/bin/swaylock -fF";
        }

        {
          # Suspend PC after 20 minutes of inactivity
          timeout = 1200;
          command = "${pkgs.systemd}/bin/systemctl suspend";
        }
      ];

      events = [
        {
          "before-sleep" = "${pkgs.swaylock}/bin/swaylock -fF";
          "lock" = "lock";
        }
      ];
    };
  };
}
