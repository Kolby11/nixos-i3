{
  imports = [
    ./config.nix
    ./git.nix
    ./packages.nix
    ./environment.nix
    ./stylix.nix
    ./programs.nix
    ./fonts.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };
}
