# nix/modules/home-manager.nix — auto-generated from lava-kubernetes.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.lava-kubernetes; in {
  options.programs.lava-kubernetes = {
    enable = lib.mkEnableOption "lava-kubernetes";
    package = lib.mkOption { type = lib.types.package; default = pkgs.lava-kubernetes or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
