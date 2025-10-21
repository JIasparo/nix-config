{ pkgs, ... }:

{
  config = {
    boot = {
      loader = {
        systemd-boot = {
          enable = true;
          editor = false;
        };

        efi.canTouchEfiVariables = true;
      };

      tmp.cleanOnBoot = true;

      plymouth = {
        enable = true;
        themePackages = [ pkgs.plymouth-blahaj-theme ];
        theme = "blahaj";
      };
    };
  };
}
