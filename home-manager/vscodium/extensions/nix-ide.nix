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
    programs.vscodium.profiles."default" =
      let
        language-server = pkgs.nixd;
        formatter = pkgs.nixfmt;
      in
      {
        extensions = with pkgs.vscode-extensions; [
          jnoortheen.nix-ide
        ];

        userSettings = {
          "nix.enableLanguageServer" = true;
          "nix.hiddenLanguageServerErrors" = [ "textDocument/definition" ];
          "nix.serverPath" = "${lib.getExe language-server}";
          "nix.serverSettings" = {
            "${lib.getName language-server}" = {
              "formatting" = {
                "command" = [ "${lib.getExe formatter}" ];
              };
              "options" = {
                "nixos" = {
                  "expr" = "(builtins.getFlake \"${configpath}\").nixosConfigurations.${hostname}.options";
                };
                "home-manager" = {
                  "expr" = "(builtins.getFlake \"${configpath}\").homeConfigurations.${username}.options";
                };
              };
            };
          };
        };
      };
  };
}
