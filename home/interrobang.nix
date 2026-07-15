{ config, ... }:

let
 link = path:
  config.lib.file.mkOutOfStoreSymlink
   "${config.home.homeDirectory}/nix/dots/${path}";
in {

#xdg.configFile."".source =     link "";
 xdg.configFile."hypr".source   = link "hypr";
 xdg.configFile."waybar".source = link "waybar";
 xdg.configFile."fish".source   = link "fish";

 home.username      = "interrobang";
 home.homeDirectory = "/home/interrobang";
 home.stateVersion  = "26.05";

 programs.home-manager.enable = true;

}
