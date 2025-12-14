{ configpath, pkgs, hostname, lib, ... }:

{
  config = {
    programs.bash = {
      enable = true;

      shellAliases = rec {
        # NixOS and Home Manager aliases
        nfu = "nix flake update --flake ${configpath}";
        hms = "home-manager switch --flake ${configpath}";
        hmn = "home-manager news --flake ${configpath}";
        nrs = "sudo nixos-rebuild switch --flake ${configpath}";
        full-upgrade = "${nfu} && ${nrs} && ${hms}";

        #disko-format = "sudo nix --experimental-features \"nix-command flakes\" run github:nix-community/disko -- --flake ${configpath}#${hostname} --mode destroy,format,mount ${configpath}/hosts/nixos/${hostname}/disk-configuration.nix";
        #nix-install = "sudo nixos-install --flake ${configpath}#${hostname}";
        #home-standalone-install = "nix run home-manager/master -- init --switch ${configpath}";
        #full-install = "${disko-format} && ${nix-install} && ${home-standalone-install}";

        # General aliases
        ff = "${lib.getExe pkgs.fastfetch}";
        qqq = "poweroff";

        # VPN aliases
        vpn-start = "sudo systemctl start wg-quick-wg0.service";
        vpn-stop = "sudo systemctl stop wg-quick-wg0.service";
      };
    };
  };
}
