{
  description = "My Nix/NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
	  inputs.nixpkgs.follows = "nixpkgs";
	};

    frc-nix = {
	  url = "github:FRC3636/frc-nix/update-wpilib";
	  inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, frc-nix, home-manager, ... }@inputs:
    let
      nixosModules.default = import ./modules/nixos;
	  homeModules.default = import ./modules/home;

	  overlays = system: [
        frc-nix.overlays.default
		(final: prev: {
          choreo = final.callPackage ./pkgs/choreo { };
		  advantagescope = final.callPackage ./pkgs/advantagescope { };
		})
	  ];

      defaultModules = [
        nixosModules.default
		home-manager.nixosModules.home-manager
		{
          home-manager.sharedModules = [ homeModules.default ];
		}
	  ];

	  setHostName = hostName: [{ networking.hostName = hostName; }];

	  host = { system, modules, hostName }:
	    nixpkgs.lib.nixosSystem {
          modules = modules ++ defaultModules ++ setHostName hostName ++ [{ nixpkgs.overlays = overlays system; }];
		  system = system;
		};
	in {
      nixosConfigurations = {
        nixbook = host {
          system = "x86_64-linux";
		  hostName = "nixbook";
		  modules = [ ./hosts/nixbook/configuration.nix ];
		};
	  };
	};
  }
