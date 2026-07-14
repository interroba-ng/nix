{ pkgs, inputs, ... }:

{
 
 programs.fish.enable    = true;
 programs.firefox.enable = true;
 services.pcscd.enable   = true;
 services.flatpak.enable = true;
  
 environment.systemPackages = with pkgs; [
  inputs.nix-gaming.packages.${pkgs.stdenv.hostPlatform.system}.star-citizen
  rocmPackages.rocm-smi
  olympus
  fuse
  flatpak
  unzip
  vulkan-tools
  mesa-demos
  btop
  lug-helper
  cider-2
  pcsc-tools
  opensc
  ccid
  steam
  git
  kitty
  vesktop
  waybar
  fastfetch
  keepassxc
  cowsay
  eza
  tree  
  fuzzel
  furmark
 ];

 nixpkgs.config.allowUnfree = true;
}
