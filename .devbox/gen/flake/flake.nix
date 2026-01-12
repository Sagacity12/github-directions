{
   description = "A devbox shell";

   inputs = {
     nixpkgs.url = "github:NixOS/nixpkgs/3146c6aa9995e7351a398e17470e15305e6e18ff";
   };

   outputs = {
     self,
     nixpkgs,
   }:
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      {
        devShells.x86_64-linux.default = pkgs.mkShell {
          buildInputs = [
            (builtins.trace "downloading nodejs@20.11.1" (builtins.fetchClosure {
              
              fromStore = "https://cache.nixos.org";
              fromPath = "/nix/store/frchj7ynjnj5rwbhhdkwig25lz41y854-nodejs-20.11.1";
              inputAddressed = true;
            }))
            (builtins.trace "downloading pnpm@latest" (builtins.fetchClosure {
              
              fromStore = "https://cache.nixos.org";
              fromPath = "/nix/store/61lr9izijvg30pcribjdxgjxvh3bysp4-pnpm-10.26.1";
              inputAddressed = true;
            }))
          ];
        };
      };
 }
