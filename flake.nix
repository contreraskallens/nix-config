{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim.url = "github:nix-community/nixvim";
    niri.url = "github:sodiboo/niri-flake";
    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    plasma-manager = {
      url = "github:pjones/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        # IMPORTANT: To ensure compatibility with the latest Firefox version, use nixpkgs-unstable.
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
    rNvim = {
      url = "github:R-nvim/R.nvim";
      flake = false;
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    nixvim,
    niri,
    noctalia,
    plasma-manager,
    zen-browser,
    rNvim,
    ...
  }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.omfgzell = ./home.nix;
            home-manager.sharedModules = [
              nixvim.homeModules.nixvim
              niri.homeModules.niri
              noctalia.homeModules.default
              plasma-manager.homeModules.plasma-manager
              zen-browser.homeModules.default
            ];
            home-manager.extraSpecialArgs = {inherit rNvim;};
          }
        ];
      };
    };
  };
}
