{
  description = "My NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in {
      devShell.${system} = with pkgs;
        mkShell {
          NIX_CONFIG =
            "extra-experimental-features = nix-command flakes repl-flake";
          nativeBuildInputs = [
            pandoc
            texlive.combined.scheme-full
          ];
        };
    };
}
