# The most patriotic webdev site

Setup:

1. Install nix: https://nixos.org/download.html
   - I.e. run `sh <(curl -L https://nixos.org/nix/install) --daemon`
1. Enable flakes: https://nixos.wiki/wiki/Flakes
   - Do the permanent one:
     ```
     mkdir -p ~/.config/nix
     echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
     ```
1. Run `nix develop` in this repo.
1. Run `zola serve` in `sites/maga` directory.
1. It'll tell you the rest.
