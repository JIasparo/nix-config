{
  description = "My nix configuration flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "nixpkgs/nixos-24.11";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";

    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    nixcord.url = "github:kaylorben/nixcord";
    nixcord.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{
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
            inputs.disko.nixosModules.disko
          ];
          specialArgs = { inherit inputs username useremail hostname configpath pkgs-stable; };
        };
      };

      homeConfigurations = {
        ${username} = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./home-manager
            inputs.stylix.homeModules.stylix
            inputs.nixcord.homeModules.nixcord
          ];
          extraSpecialArgs = { inherit inputs username useremail hostname configpath pkgs-stable; };
        };
      };
    };
}
