{
  description = "A Nix flake for Haskell development";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs }: 
    let 
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in 
    {
      devShells = forAllSystems (system: 
        let 
          pkgs = import nixpkgs {
            inherit system; 
            config.allowUnfree = true;
          };
        in 
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              (haskell.compiler.ghc94)           # The Glasgow Haskell Compiler
              cabal-install # Cabal build tool
            ];

            shellHook = ''
              echo "Welcome to your Haskell development environment!"
              echo "GHC version: $(ghc --version)"
              echo "Cabal version: $(cabal --version)"
            '';
          };
        }
      );
    };
}