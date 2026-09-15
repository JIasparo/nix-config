{
  pkgs,
  lib,
  configpath,
  hostname,
  username,
  ...
}:

{
  config = {
    programs.gram =
      let
        language-server = pkgs.nixd;
        formatter = pkgs.nixfmt;
      in
      {
        extraPackages = [
          language-server
          formatter
        ];

        settings = {
          languages.Nix = {
            language_servers = [ "${lib.getName language-server}" ];
            formatter.external.command = "${lib.getName formatter}";
          };

          lsp.${lib.getName language-server} = {

            binary = {
              allow_binary_download = false;
              ignore_system_version = false;
              enable_auto_updates = false;
            };

            settings.options = {
              nixos.expr = "(builtins.getFlake \"${configpath}\").nixosConfigurations.${hostname}.options";

              home-manager.expr = "(builtins.getFlake \"${configpath}\").homeConfigurations.${username}.options";
            };
          };
        };
      };
  };
}
