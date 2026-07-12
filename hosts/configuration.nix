{ config, pkgs, ... }:

{
 imports =
  [
   ./hardware-configuration.nix
   ../modules/packages.nix
   ../modules/audio.nix
   ../modules/locale.nix
   ../modules/hyprland.nix
   ../modules/fonts.nix
  ];

 boot.loader.systemd-boot.enable = true;
 boot.loader.efi.canTouchEfiVariables = true;

 networking.hostName = "nixos"; 

 networking.networkmanager.enable = true;

 services.printing.enable = true;

 users.users.interrobang = {
  isNormalUser = true;
  description = "interrobang";
  extraGroups = [ "networkmanager" "wheel" ];
  shell = pkgs.fish;
 };

 hardware.graphics = {
  enable = true;
  enable32Bit = true;
 };
  
 system.stateVersion = "25.11";
}
