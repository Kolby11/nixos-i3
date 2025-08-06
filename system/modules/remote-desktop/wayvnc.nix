{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wayvnc
    wf-recorder
    xdg-utils
  ];

  systemd.user.services.wayvnc = {
    description = "WayVNC server";
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.wayvnc}/bin/wayvnc";
      Restart = "always";
      RestartSec = 5;
      Environment = [
        "WAYLAND_DISPLAY=wayland-1" # Adjust if needed
        "XDG_RUNTIME_DIR=/run/user/1000" # Replace 1000 with your user ID
      ];
    };
  };
}