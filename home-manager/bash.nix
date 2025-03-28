{ ... }:

{
  config = {
    programs.bash = {
      enable = true;

      shellAliases = {
        nf = "nix flake update --flake ./nix-config";
        hm = "home-manager switch --flake ./nix-config";
        no = "sudo nixos-rebuild switch --flake ./nix-config";

        ll = "ls -l";
        qqq = "poweroff";
      };
    };
  };
}
