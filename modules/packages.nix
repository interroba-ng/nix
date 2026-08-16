{ pkgs, inputs, ... }:

{
 
 programs.fish.enable                 = true;
 programs.firefox.enable              = true;
 services.pcscd.enable                = true;
 services.flatpak.enable              = true;
 networking.firewall.checkReversePath = false;

 environment.systemPackages = with pkgs; [
  inputs.nix-gaming.packages.${pkgs.stdenv.hostPlatform.system}.star-citizen
  steam-run
  wireguard-tools
  protonvpn-gui
  epson-escpr
  thunderbird
  anki
  mono
  obsidian
  bluetui
  awww
  python3
  nmap
  metasploit
  vlang
  go
  vscodium
  helix
  micro
  aseprite
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
