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

      # Nvidia power management. Experimental, and can cause sleep/suspend to fail.
      powerManagement.enable = true;

      # Experimental option to turn off GPU when not in use. Set to true if wanted.
      powerManagement.finegrained = false;

      # Use Nvidia open source kernel module. Set to true if wanted.
      open = true;

      # Enables the `nvidia-settings` menu. Set to true if wanted.
      nvidiaSettings = false;

      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };

    boot.blacklistedKernelModules = [ "nouveau" ];
  };
}
