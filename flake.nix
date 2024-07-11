{
	description = "A simple NixOS flake";

	inputs = {
		# NixOS official package source, using the nixos-24.05 branch
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
		
		# An Anime Team Launchers
		aagl.url = "github:ezKEa/aagl-gtk-on-nix/release-24.05";
		aagl.inputs.nixpkgs.follows = "nixpkgs";

		# Home-manager
		home-manager = {
			url = "github:nix-community/home-manager/release-24.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		# Stylix
		stylix.url = "github:danth/stylix";		
	};

	outputs = { self, nixpkgs, home-manager, stylix, ... }@inputs: {
		# Desktop
		nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [
				# Import the previous configuration.nix
				./hosts/desktop/configuration.nix
				stylix.nixosModules.stylix ./modules/stylix.nix

				# Home-manager
				home-manager.nixosModules.home-manager
				{
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;
					home-manager.backupFileExtension = "backup";
					home-manager.users.socks = import ./home.nix;				
				}
			];
		};
		# Laptop
		nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [
				# Import the previous configuration.nix
				./hosts/laptop/configuration.nix
				stylix.nixosModules.stylix ./modules/stylix.nix

			# Home-manager
				home-manager.nixosModules.home-manager
				{
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;
					home-manager.backupFileExtension = "backup";
					home-manager.users.socks = import ./home.nix;				
				}
			];
		};

		# Desktop Home-Manager
		homeConfigurations."socks" = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.x86_64-linux;
			modules = [ ];
		};
	};
}