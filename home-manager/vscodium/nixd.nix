{ pkgs, ... }:

{
  config =
  let
    username = "j";
    hostname = "stryder";
    pathconfig = "/home/${username}/nix-config";
  in {
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
                "expr" = "(builtins.getFlake \"${pathconfig}\").nixosConfigurations.${hostname}.options";
              };
              "home-manager" = {
                "expr" = "(builtins.getFlake \"${pathconfig}\").homeConfigurations.${username}.options";
              };
            };
          };
        };
      };
    };
  };
}