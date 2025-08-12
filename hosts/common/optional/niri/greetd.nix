{ lib, pkgs, ... }:

{
  config = {
    services.greetd = {
      enable = true;

      settings = {
        default_session = {
          command = "${lib.getExe pkgs.tuigreet} --time --cmd niri-session";
          user = "greeter";
        };
      };
    };
  };
}