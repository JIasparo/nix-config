{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";

  services.desktopManager.plasma6.enable = true;
  services.displayManager.plasma-login-manager.enable = true;

  users.users.alice = {
    isNormalUser = true;
    initialPassword = "pizza123";
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      #
    ];
  };

  system.stateVersion = "26.11";
}
