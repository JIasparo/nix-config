{ ... }:

{
  imports = [
    #aa
  ];

  options = {
    #aa
  };

  config = {
    programs.bash = {
      enable = true;

      shellAliases = {
        hm = "home-manager switch --flake ./nix-config";
        nf = "nix flake update --flake ./nix-config";
        no = "sudo nixos-rebuild switch --flake ./nix-config";
        ll = "ls -l";
      };
    };
  };
}