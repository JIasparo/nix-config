{ ... }:

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
      plymouth.enable = true;
    };
  };
}
