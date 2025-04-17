{ ... }:

{
  config = {
    programs.bash = {
      enable = true;

      shellAliases = {
        # NixOS and Home Manager aliases
        nf = "nix flake update --flake ./nix-config";
        hm = "home-manager switch --flake ./nix-config";
        no = "sudo nixos-rebuild switch --flake ./nix-config";

        # General aliases
        ll = "ls -l";
        qqq = "poweroff";

        # VPN aliases
        vpn-start = "sudo systemctl start wg-quick-wg0.service";
        vpn-stop = "sudo systemctl stop wg-quick-wg0.service";
      };
    };
  };
}
