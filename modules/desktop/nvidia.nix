{pkgs,lib,config,inputs,...}:
{

# Enable OpenGL
hardware.opengl = {
	enable = true;
	driSupport = true;
	driSupport32Bit = true;
};


# NVidia Video Driver
services.xserver.videoDrivers = ["nvidia"];

hardware.nvidia = {
	# Mode settings is required
	modesetting.enable = true;
	# NVidia power management
	powerManagement.enable = false;
	# Fine-grained power management
	powerManagement.finegrained = false;
	# NVidia Open-Source Kernel
	open = false;
};

	# Driver Version
	hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.mkDriver {
	version = "555.58";
	sha256_64bit = "sha256-bXvcXkg2kQZuCNKRZM5QoTaTjF4l2TtrsKUvyicj5ew=";
	sha256_aarch64 = lib.fakeSha256;
	openSha256 = lib.fakeSha256;
	settingsSha256 = "sha256-vWnrXlBCb3K5uVkDFmJDVq51wrCoqgPF03lSjZOuU8M=";
	persistencedSha256 = lib.fakeSha256;
	};
}
