{ pkgs, hostname, ... }:

{
  config = {
    programs.bash = {
      enable = true;

      shellAliases = rec {
        # NixOS and Home Manager aliases
        nf = "nix flake update --flake ./nix-config";
        hm = "home-manager switch --flake ./nix-config";
        hn = "home-manager news";
        no = "sudo nixos-rebuild switch --flake ./nix-config";
        full-upgrade = "${nf} && ${no} && ${hm}";

        #disko-format = "sudo nix --experimental-features \"nix-command flakes\" run github:nix-community/disko -- --flake ./nix-config#${hostname} --mode destroy,format,mount ./nix-config/hosts/nixos/${hostname}/disk-configuration.nix";
        #nix-install = "sudo nixos-install --flake ./nix-config#${hostname}";
        #home-standalone-install = "nix run home-manager/master -- init --switch ./nix-config";
        #full-install = "${disko-format} && ${nix-install} && ${home-standalone-install}";

        # General aliases
        ff = "${pkgs.fastfetch}/bin/fastfetch";
        ll = "ls -l";
        qqq = "poweroff";

        # VPN aliases
        vpn-start = "sudo systemctl start wg-quick-wg0.service";
        vpn-stop = "sudo systemctl stop wg-quick-wg0.service";
      };
    };
  };
}
