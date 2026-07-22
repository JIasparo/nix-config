{
  lib,
  pkgs,
  configpath,
  hostname,
  username,
  ...
}:

{
  config = {
    programs.vscodium.profiles."default" = {
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
      ];

      userSettings = {
        "nix.enableLanguageServer" = true;
        "nix.hiddenLanguageServerErrors" = [ "textDocument/definition" ];
        "nix.serverPath" = "${lib.getExe pkgs.nixd}";
        "nix.serverSettings" = {
          "${lib.getName pkgs.nixd}" = {
            "formatting" = {
              "command" = [ "${lib.getExe pkgs.nixfmt}" ];
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
