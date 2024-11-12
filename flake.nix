{
  description = "A Nix flake for Haskell development";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs }: {
    devShells.default = nixpkgs.lib.mkShell {
      packages = with nixpkgs.pkgs; [
        ghc          # The Glasgow Haskell Compiler
        cabal-install # Cabal build tool
      ];

      shellHook = ''
        echo "Welcome to your Haskell development environment!"
        echo "GHC version: $(ghc --version)"
        echo "Cabal version: $(cabal --version)"
      '';
    };
  };
}