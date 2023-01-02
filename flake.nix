{
  description = "The webdev website";

  inputs.nixpkgs.url = "nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }: {

    packages.x86_64-linux.zola = nixpkgs.legacyPackages.x86_64-linux.zola;

    packages.x86_64-linux.default = self.packages.x86_64-linux.zola;

  };
}
