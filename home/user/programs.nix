{ inputs, ... }:

{
  programs = {
    home-manager.enable = true;

    kitty = {
      enable = true;
      font = {
        size = 12;
      };
      settings = {
        # URLs
        url_style = "dotted";
        confirm_os_window_close = 0;

        # WINDOWS
        single_window_margin_width = 0;

        window_margin_width = 4;
        window_border_width = "0.5pt";

        # LAYOUT
        enabled_layouts = "tall, *";

        # TABS
        tab_bar_style = "powerline";
        tab_powerline_style = "slanted";

        # MOUSE
        mouse_hide_wait = 2.0;

        # CURSOR
        cursor_shape = "beam";

        # SCROLLBACK
        scrollback_lines = 5000;
      };

      keybindings = {

      };
    };

    firefox = {
      enable = true;
      # profiles.mato = {
      #   extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
      #   ];
      # };
    };

    vscode = {
      enable = true;
      # extensions = with pkgs.vscode-extensions; [
      # ];
    };
  };
}