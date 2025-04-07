{
  description = "Generic devShell flake template";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {

        package = with pkgs; [
          #
        ];

        inputsFrom = with pkgs; [
          #
        ];

        shellHook = ''
          # bash to run when launched
        '';
      };
    };
}
