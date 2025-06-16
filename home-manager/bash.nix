{ configpath, pkgs, hostname, ... }:

{
  config = {
    programs.bash = {
      enable = true;

      shellAliases = rec {
        # NixOS and Home Manager aliases
        nf = "nix flake update --flake ${configpath}";
        hm = "home-manager switch --flake ${configpath}";
        hn = "home-manager news --flake ${configpath}";
        no = "sudo nixos-rebuild switch --flake ${configpath}";
        full-upgrade = "${nf} && ${no} && ${hm}";

        #disko-format = "sudo nix --experimental-features \"nix-command flakes\" run github:nix-community/disko -- --flake ${configpath}#${hostname} --mode destroy,format,mount ${configpath}/hosts/nixos/${hostname}/disk-configuration.nix";
        #nix-install = "sudo nixos-install --flake ${configpath}#${hostname}";
        #home-standalone-install = "nix run home-manager/master -- init --switch ${configpath}";
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
