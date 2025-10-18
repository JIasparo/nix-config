{
  pkgs,
  configpath,
  hostname,
  username,
  ...
}:

{
  config = {
    home.packages = with pkgs; [
      nixd
      nixfmt
    ];

    programs.vscode.profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
      ];

      userSettings = {
        "nix.enableLanguageServer" = true;
        "nix.hiddenLanguageServerErrors" = [ "textDocument/definition" ];
        "nix.serverPath" = "nixd";
        "nix.serverSettings" = {
          "nixd" = {
            "formatting" = {
              "command" = [ "nixfmt" ];
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
