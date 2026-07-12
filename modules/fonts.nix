{ pkgs, ... }:

{
 fonts.packages = with pkgs; [
  nerd-fonts.jetbrains-mono
  noto-fonts
  inter
  noto-fonts-color-emoji
 ];

 fonts.fontconfig = {
  enable = true;

  defaultFonts = {
   serif       = [ "Inter" ];
   sansSerif   = [ "Inter" ];
   monospace   = [ "JetBrainsMono Nerd Font" ];
   emoji       = [ "Noto Color Emoji" ];
  };
 };
}
