{
	description = "A simple NixOS flake";

	inputs = {
		# NixOS official package source, using the nixos-24.05 branch
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
		
		aagl.url = "github:ezKEa/aagl-gtk-on-nix/release-24.05";
		aagl.inputs.nixpkgs.follows = "nixpkgs";		
	};

	outputs = { self, nixpkgs, ... }@inputs: {
		# Desktop
		nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [
				# Import the previous configuration.nix
				./hosts/desktop/configuration.nix
			];
		};
		# Laptop
		nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [
				# Import the previous configuration.nix
				./hosts/laptop/configuration.nix
			];
		};
	};
}
