{ pkgs, ... }:

{
    stylix = {
        enable = true;
        # image = ./.config/wallpaper.jpg;
        polarity = "dark";

        base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";
        #   base16Scheme = {
        #     base00 = "";
        #     base01 = "";
        #     base02 = "";
        #     base03 = "";
        #     base04 = "";
        #     base05 = "";
        #     base06 = "";
        #     base07 = "";
        #     base08 = "";
        #     base09 = "";
        #     base0A = "";
        #     base0B = "";
        #     base0C = "";
        #     base0D = "";
        #     base0E = "";
        #     base0F = "";
        # }

        cursor = {
            package = pkgs.bibata-cursors;
            name = "Bibata-Modern-Ice";
            size = 24;
        };

        fonts = {
            monospace = {
                package = pkgs.nerd-fonts.fira-code;
                name = "FiraCode Nerd Font Mono";
            };
            sansSerif = {
                package = pkgs.dejavu_fonts;
                name = "DejaVu Sans";
            };
            serif = {
                package = pkgs.dejavu_fonts;
                name = "DejaVu Serif";
            };
        };
    };
}