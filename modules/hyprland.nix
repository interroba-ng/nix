{ pkgs, ... }:

{
 programs.hyprland = {
  enable = true;
  xwayland.enable = true;
 }; 

 services.displayManager.ly.enable = true; 

 environment.systemPackages = with pkgs; [
  hyprpaper
  hypridle
  hyprlock
  hyprpicker
  hyprshot
  hyprcursor
  wl-clipboard
 ];
}
