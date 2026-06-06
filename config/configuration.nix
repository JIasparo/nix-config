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
