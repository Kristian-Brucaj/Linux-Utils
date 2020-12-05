{ config, pkgs, ... }:
    
{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  imports = [
    ./internet.nix
    ./creation.nix
    ./games.nix
    ./development.nix
    ./art.nix
    ./rice.nix
    ./utilities.nix
    ./kitty.nix
    ./zsh.nix
  ];
 
  nixpkgs.config.allowUnfree = true;
  
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.03";
}
