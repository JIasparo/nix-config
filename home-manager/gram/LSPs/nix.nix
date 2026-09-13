{ pkgs, lib, ... }:

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
            #enable_lsp_tasks = true;

            binary = {
              allow_binary_download = false;
              ignore_system_version = false;
              enable_auto_updates = false;
            };
            #settings.diagnostic.suppress = [ "sema-extra-with" ];
          };
        };
      };
  };
}
