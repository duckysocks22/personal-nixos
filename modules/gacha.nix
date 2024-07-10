{ config, pkgs, inputs, ... }:

{
	imports = [
		inputs.aagl.nixosModules.default
	];

	programs.anime-game-launcher.enable = true;
	programs.honkers-railway-launcher.enable = true;
	programs.honkers-launcher.enable = true;
	programs.sleepy-launcher.enable = true;

	# Icons
	programs.anime-game-launcher.package = inputs.aagl.packages.x86_64-linux.anime-game-launcher.override (old: {
		unwrapped = old.unwrapped.override {
			customIcon = /etc/nixos/Icons/furina-icon.png;
	};
	});
	
	programs.honkers-railway-launcher.package = inputs.aagl.packages.x86_64-linux.honkers-railway-launcher.override (old: {
		unwrapped = old.unwrapped.override {
			customIcon = builtins.fetchurl {
				url = "https://static.wikia.nocookie.net/houkai-star-rail/images/a/af/Bailu_Sticker_03.png";		
				sha256 = "0f7s29bfrkc43640r7kjy2nkisvykwkx0q69prhjqvdfw6b73n88";
			};
		};
	});

	programs.sleepy-launcher.package = inputs.aagl.packages.x86_64-linux.sleepy-launcher.override (old: {
		unwrapped = old.unwrapped.override {
			customIcon = builtins.fetchurl {
				url = "https://static.wikia.nocookie.net/zenless-zone-zero/images/0/07/Zenless_Zone_Zero_Ridu_Stroll_Sticker_Pack_1_Ellen.png";
				sha256 = "1i2bi444yc25xd3yb960fxrhz6c1q0csdzajyfra8vaarivpmhkn";
			};
		};
	});
}

