# nix/modules/darwin.nix — auto-generated from lava-kubernetes.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.lava-kubernetes; in {
  options.services.lava-kubernetes = {
    enable = lib.mkEnableOption "lava-kubernetes";
    package = lib.mkOption { type = lib.types.package; default = pkgs.lava-kubernetes or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
