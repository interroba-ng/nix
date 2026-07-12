{
 description = "interroBixOS, !?s NixOS long-haul config";

 inputs = {
  nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  home-manager.url = "github:nix-community/home-manager/release-26.05";
  home-manager.inputs.nixpkgs.follows = "nixpkgs";

  nix-gaming.url = "github:fufexan/nix-gaming";
 };

 outputs = inputs@{ nixpkgs, home-manager, ... }: {
  nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
   system = "x86_64-linux";

   specialArgs = {
    inherit inputs;
   };
   
   modules = [
    ./hosts/configuration.nix

    home-manager.nixosModules.home-manager

    {
     home-manager.useGlobalPkgs = true;
     home-manager.useUserPackages = true;

     home-manager.users.interrobang = import ./home/interrobang.nix;
    }
   ];
  };
 };
}
