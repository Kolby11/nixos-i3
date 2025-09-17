{
  description = "Mato NixOS";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
      nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
      home-manager = {
        url = "github:nix-community/home-manager/release-25.05";
        inputs.nixpkgs.follows = "nixpkgs";
      };

      stylix = {
        url = "github:nix-community/stylix/release-25.05";
        inputs.nixpkgs.follows = "nixpkgs";
      };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, stylix, ... }@inputs:
  let 
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
  in
  {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        modules = [
          stylix.nixosModules.stylix
          ./system/configuration.nix 
        ];
        specialArgs = {
          inherit pkgs-unstable;
        };
      };
    };

    homeConfigurations = {
      mato = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          stylix.homeModules.stylix 
          ./home ];
        extraSpecialArgs = {
          inherit pkgs-unstable;
          inherit inputs;
          context = self;
          runtimeRoot = "/home/mato/.config";
          hm = home-manager.lib.hm;
        };
      };
    };
  };
}