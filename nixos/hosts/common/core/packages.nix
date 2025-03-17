{ pkgs, pkgs-stable, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages =
  (with pkgs; [
    # Packages placed here are unstable
    wget
  ])
  ++
  (with pkgs-stable; [
    # Packages placed here are stable
  ]);
}