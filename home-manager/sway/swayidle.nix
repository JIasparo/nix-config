{ lib, pkgs, ... }:

{
  config = {
    services.swayidle = let
      lock = "${lib.getExe pkgs.swaylock} -fF"; # Pam service required for swaylock.
      display-niri = status: "niri msg action power-${status}-monitors";
    in{
      enable = true;

      events = {
        #before-sleep = (display-niri "off") + "; " + lock;
        before-sleep = (display-niri "off");
        after-resume = (display-niri "on");
        #lock = lock;
        #unlock = (display-niri "on");
      };

      timeouts = [
        #{
        #  # lock the screen after 5 minutes of inactivity
        #  timeout = 300;
        #  command = lock;
        #}

        {
          # Turn off monitor(s) after 10 minutes of inactivity
          timeout = 600;
          command = (display-niri "off");
          resumeCommand = (display-niri "on");
        }

        {
          # Suspend PC after 15 minutes of inactivity
          timeout = 900;
          command = "${lib.getExe' pkgs.systemd "systemctl"} suspend";
        }
      ];
    };
  };
}
