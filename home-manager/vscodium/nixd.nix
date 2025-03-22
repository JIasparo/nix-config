{ pkgs, configpath, hostname, username, ... }:

{
  config = {
    home.packages = with pkgs; [
      nixd
      nixfmt-rfc-style
    ];

    programs.vscode.profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
      ];
        
      userSettings = {
        "nix.enableLanguageServer" = "true";
        "nix.serverPath" = "nixd";
        "nix.serverSettings" = {
          "nixd" = {
            "formatting" = {
              "command" = ["nixfmt"];
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