# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
  [
    ./hardware-configuration.nix 
    ./system
  ];
  time.timeZone = "Europe/Moscow";

  nixpkgs.config.allowUnfree = true; 
  nix.settings.experimental-features = ["nix-command" "flakes"];

  networking.networkmanager.enable = true;
  environment.shells = with pkgs; [ zsh ];

  networking.firewall.enable = false;
  system.stateVersion = "25.11"; # Did you read the comment?
}

