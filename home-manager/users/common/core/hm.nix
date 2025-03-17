{ ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Read Home Manager release notes before changing this value.
  home.stateVersion = "24.11";
}