{
  description = "My nix configuration flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "nixpkgs/nixos-24.11";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      nixpkgs-stable,
      home-manager,
      ...
    }:
    let
      username = "j";
      useremail = "${username}@test.email";
      hostname = "stryder";
      system = "x86_64-linux";
      configpath = "/home/${username}/nix-config";

      pkgs = nixpkgs.legacyPackages.${system};
      pkgs-stable = nixpkgs-stable.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        ${hostname} = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/nixos/${hostname}
          ];
          specialArgs = { inherit inputs username useremail hostname configpath pkgs-stable; };
        };
      };

      homeConfigurations = {
        ${username} = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./home-manager
            inputs.stylix.homeManagerModules.stylix
          ];
          extraSpecialArgs = { inherit inputs username useremail hostname configpath pkgs-stable; };
        };
      };
    };
}
