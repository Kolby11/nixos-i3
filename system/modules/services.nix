{ config, pkgs, ... }:

{
  services = {
		dbus.enable = true;
		openssh.enable = true;

		displayManager = {
			sddm = {
				enable = true;
				wayland.enable = true;
			};
			defaultSession = "none+i3";
		};
		xserver = {
			enable = true;
			windowManager.i3.enable = true;
			xkb = {
				layout = "us";
			};
			# videoDrivers = [ "amdgpu" "virtualbox" ];
		};
  };
}
