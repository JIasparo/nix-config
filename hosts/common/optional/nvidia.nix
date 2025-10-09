{ config, ... }:

{
  config = {
    hardware.graphics = {
      enable = true;
    };

    nixpkgs.config.cudaSupport = true;

    # Load nvidia driver for Xorg and Wayland
    services.xserver.videoDrivers = [ "nvidia" ];

    hardware.nvidia = {
      # Modesetting is required
      modesetting.enable = true;

      # Nvidia power management
      powerManagement = {
        # Experimental, and can cause sleep/suspend to fail.
        enable = true;
        
        # Experimental option to turn off GPU when not in use.
        finegrained = false;
      };

      # Use Nvidia open source kernel module.
      open = true;

      # Enables the `nvidia-settings` menu.
      nvidiaSettings = false;

      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };

    boot.blacklistedKernelModules = [ "nouveau" ];
  };
}
