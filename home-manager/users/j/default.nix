{ pkgs, pkgs-stable, ... }:

let
  username = "j";
in
{
  imports = [
    ./../common/core
    ./../common/optional/git
    #./../common/optional/hyprland
    #./../common/optional/rofi
    ./../common/optional/kitty
    #./../common/optional/stylix
    ./../common/optional/vscodium
    ./../common/optional/vscodium/nixd.nix
    ./bash.nix
    ./gnome.nix
    ./gtk.nix
    ./j-git.nix
    #./stylix.nix
  ];
  
  config = {
    # Home Manager needs a bit of information about you and the paths it should
    # manage.
    home.username = "${username}";
    home.homeDirectory = "/home/${username}";

    home.packages =
      # Override example for installing a specific Nerd Font:
      # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
      (with pkgs; [
        # Packages placed here are unstable
        floorp
        librewolf
        bitwarden-desktop
      ])
      ++ (with pkgs-stable; [
        # Packages placed here are stable
      ]);

    # Home Manager is pretty good at managing dotfiles. The primary way to manage
    # plain files is through 'home.file'.
    home.file = {
      # # Building this configuration will create a copy of 'dotfiles/screenrc' in
      # # the Nix store. Activating the configuration will then make '~/.screenrc' a
      # # symlink to the Nix store copy.
      # ".screenrc".source = dotfiles/screenrc;

      # # You can also set the file content immediately.
      # ".gradle/gradle.properties".text = ''
      #   org.gradle.console=verbose
      #   org.gradle.daemon.idletimeout=3600000
      # '';
    };

    # Home Manager can also manage your environment variables through
    # 'home.sessionVariables'. These will be explicitly sourced when using a
    # shell provided by Home Manager. If you don't want to manage your shell
    # through Home Manager then you have to manually source 'hm-session-vars.sh'
    # located at either
    #
    #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
    #
    # or
    #
    #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
    #
    # or
    #
    #  /etc/profiles/per-user/j/etc/profile.d/hm-session-vars.sh
    #
    home.sessionVariables = {
      # EDITOR = "emacs";
    };
  };
}
