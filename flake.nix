{
  nixConfig = {
    bash-prompt = "[cloudprizm]λ ";
  };
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          overlays = [ ]; # (import rust-overlay) ];
          pkgs = import nixpkgs {
            inherit system overlays;
          };
          devPkgs = with pkgs; [
            direnv
            crossplane-cli
            kyverno-chainsaw
            kcl-cli
            go
            yamllint
            k9s
            jq
            yq-go
            helmfile
            kubectl
            kuttl
            vcluster
            kustomize
            kubernetes-helm
            go-task
          ];
        in
        with pkgs;
        {
          devShells.default = mkShell {
            buildInputs = [ ] ++ devPkgs;
            shellHook = '' '';
          };
        }
      );
}

