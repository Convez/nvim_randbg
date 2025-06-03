{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nix-linguist.url = "github:Convez/nix-linguist";
  };
  outputs = {self, nixpkgs, nix-linguist, ...}:
  let
      supportedArchitectures = [ "x86_64-linux" ];
      forEachArch = f: nixpkgs.lib.genAttrs supportedArchitectures (system: f {
        inherit system;
        pkgs = import nixpkgs { inherit system; };
      });
      devShells = forEachArch ({ pkgs, system }: {
        default = pkgs.mkShell {
          inputsFrom = [nix-linguist.devShells.${system}.default];
          packages = with pkgs; [
            lua-language-server
            lua5_1
            nixd
            luarocks
          ];
        };
      });
  in
  {
    inherit devShells;
  };
}
